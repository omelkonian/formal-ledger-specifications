{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {
    overlays = [ ];
    config = { };
  }
}:

with pkgs;
let
  customAgda = import sources.agda-nixpkgs {
    inherit (pkgs) system;
  };

  agdaStdlib = customAgda.agdaPackages.standard-library.overrideAttrs (oldAttrs: {
    version = "1.7.2";
    src = fetchFromGitHub {
      repo = "agda-stdlib";
      owner = "input-output-hk";
      rev = "bdfab77b179c937856c49d72321ca26e2a27d568";
      sha256 = "+PMZjmMK5xz+3Va7RN1ErtQghzpUlzsc9JBUoL+iasc=";
    };
  });

  agdaStdlibMeta = customAgda.agdaPackages.mkDerivation {
    pname = "agda-stdlib-meta";
    version = "0.1";
    src = fetchFromGitHub {
      repo = "stdlib-meta";
      owner = "input-output-hk";
      rev = "897555aefd77c83e88492255641da3bcc4879461";
      sha256 = "EIKcLjGdnI/6nSCI18v7kPxoojAWsz8O5d9wwol2M0w=";
    };
    meta = { };
    libraryFile = "stdlib-meta.agda-lib";
    everythingFile = "Main.agda";
    buildInputs = [ agdaStdlib ];
  };

  deps = [ agdaStdlib agdaStdlibMeta ];
  agdaWithPkgs = p: customAgda.agda.withPackages { pkgs = p; ghc = pkgs.ghc; };

in
rec {

  agdaWithStdLibMeta = agdaWithPkgs deps;
  agda = agdaWithPkgs (deps ++ [ formalLedger ]);

  latex = texlive.combine {
    inherit (texlive)
      scheme-small
      xits
      collection-latexextra
      collection-latexrecommended
      collection-mathscience
      bclogo
      latexmk;
  };

  formalLedger = customAgda.agdaPackages.mkDerivation {
    pname = "formal-ledger";
    version = "0.1";
    src = ./src;
    meta = { };
    buildInputs = deps;
    postInstall = ''
      cp -r latex $out
      sh checkTypeChecked.sh
      '';
    extraExtensions = [ "hs" "cabal" ];
  };

  # a parameterized attribute set containing derivations for: 1) executable spec 2) docs
  specsDerivations = { dir, agdaLedgerFile, project }:
    let
      hsSrc =
        stdenv.mkDerivation {
          pname = "formal-ledger-${dir}-hs-src";
          version = "0.1";
          src = "${formalLedger}";
          meta = { };
          buildInputs = [ agdaWithStdLibMeta ];
          buildPhase = "";

          LANG = "en_US.UTF-8";
          LC_ALL = "en_US.UTF-8";
          LOCALE_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
          installPhase = ''
            mkdir -p $out
            cp ${dir}/*.hs $out
            cp ${dir}/*.cabal $out
            agda --transliterate -c --ghc-dont-call-ghc --compile-dir $out ${dir}/${agdaLedgerFile}
            # Append all the modules generated by MAlonzo to the cabal file
            find $out/MAlonzo -name "*.hs" -print | sed "s#^$out/#        #;s#\.hs##;s#/#.#g" >> $out/${project}.cabal
          '';
        };
      docs = stdenv.mkDerivation {
        pname = "${dir}-docs";
        version = "0.1";
        src = "${formalLedger}";
        meta = { };
        buildInputs = [ agdaWithStdLibMeta latex ];
        buildPhase = ''
          find ${dir} -name \*.lagda -exec agda --latex {} \;
          cd latex && latexmk -xelatex ${dir}/PDF.tex && cd ..
        '';
        installPhase = ''
          mkdir -p $out
          agda --html --html-dir $out/html ${dir}/PDF.lagda
          cp latex/PDF.pdf $out/${project}.pdf
        '';
      };
    in
    {
      executableSpecSrc = hsSrc;
      executableSpec = haskellPackages.callCabal2nix "Agda-ledger-executable-spec" "${hsSrc}" { };
      docs = docs;
      name = dir;
    };

  ledger = specsDerivations {
    project = "cardano-ledger";
    dir = "Ledger";
    agdaLedgerFile = "Foreign/HSLedger.agda";
  };
  midnight = specsDerivations {
    project = "midnight-example";
    dir = "MidnightExample";
    agdaLedgerFile = "HSLedger.agda";
  };
}
