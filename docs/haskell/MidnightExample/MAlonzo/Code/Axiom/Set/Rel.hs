{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Axiom.Set.Rel where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Axiom.Set.Rel._._∉_
d__'8713'__16 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8713'__16 = erased
-- Axiom.Set.Rel._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set.Rel._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Rel._._⊆_
d__'8838'__24 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__24 = erased
-- Axiom.Set.Rel._.disjoint
d_disjoint_44 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_44 = erased
-- Axiom.Set.Rel._.map
d_map_56 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_56 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_380 (coe v0)
-- Axiom.Set.Rel._.spec-∈
d_spec'45''8712'_76 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> ()
d_spec'45''8712'_76 = erased
-- Axiom.Set.Rel._.∅
d_'8709'_90 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
d_'8709'_90 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)
-- Axiom.Set.Rel._.Intersection._∩_
d__'8745'__126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__126 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set.Rel._._≡_⨿_
d__'8801'_'10815'__134 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__134 = erased
-- Axiom.Set.Rel.Rel
d_Rel_268 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Rel_268 = erased
-- Axiom.Set.Rel.relatedˡ
d_related'737'_290 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_related'737'_290 v0 ~v1 ~v2 = du_related'737'_290 v0
du_related'737'_290 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_related'737'_290 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.∅ʳ
d_'8709''691'_292 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> AgdaAny
d_'8709''691'_292 v0 ~v1 ~v2 = du_'8709''691'_292 v0
du_'8709''691'_292 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny
du_'8709''691'_292 v0
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)
-- Axiom.Set.Rel.dom
d_dom_294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_294 v0 ~v1 ~v2 = du_dom_294 v0
du_dom_294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_dom_294 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.range
d_range_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_range_296 v0 ~v1 ~v2 = du_range_296 v0
du_range_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_range_296 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
-- Axiom.Set.Rel.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_298 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'dom'8658'disjoint_298 = erased
-- Axiom.Set.Rel._∣'_
d__'8739'''__304 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'''__304 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8739'''__304 v0 v4 v5
du__'8739'''__304 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'''__304 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_402 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      v1
-- Axiom.Set.Rel._↾'_
d__'8638'''__312 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8638'''__312 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8638'''__312 v0 v4 v5
du__'8638'''__312 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8638'''__312 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_402 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      v1
-- Axiom.Set.Rel.impl⇒res⊆
d_impl'8658'res'8838'_330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_impl'8658'res'8838'_330 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'res'8838'_330 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'res'8838'_330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'res'8838'_330 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
      v0 v1
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v3
         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
      v5
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8321'_114
         (coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.impl⇒cores⊆
d_impl'8658'cores'8838'_352 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_impl'8658'cores'8838'_352 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'cores'8838'_352 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'cores'8838'_352 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'cores'8838'_352 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
      v0 v1
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v3
         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
      v5
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8321'_114
         (coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.mapˡ
d_map'737'_362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_362 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'737'_362 v0 v4 v5
du_map'737'_362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'737'_362 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (coe MAlonzo.Code.Data.Product.Base.du_map'8321'_114 (coe v1)) v2
-- Axiom.Set.Rel.mapʳ
d_map'691'_368 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_368 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'691'_368 v0 v4 v5
du_map'691'_368 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'691'_368 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8322'_126 (coe (\ v3 -> v1)))
      v2
-- Axiom.Set.Rel.dom∈
d_dom'8712'_378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_dom'8712'_378 v0 ~v1 ~v2 v3 v4 = du_dom'8712'_378 v0 v3 v4
du_dom'8712'_378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
du_dom'8712'_378 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Related.Propositional.du__'8764''10216'_'10217'__202
      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
            (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
            (coe v2)))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du__'8764''10216'_'10217'__202
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
         (coe
            MAlonzo.Code.Function.Bundles.du_mk'8660'_1322
            (coe
               (\ v3 ->
                  case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                         (coe v9)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
         (coe
            MAlonzo.Code.Function.Related.Propositional.du__'8718'_248
            (coe
               MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
-- Axiom.Set.Rel.dom-⊆mapʳ
d_dom'45''8838'map'691'_406 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45''8838'map'691'_406 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45''8838'map'691'_406 v0 v4 v5 v6 v7
du_dom'45''8838'map'691'_406 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45''8838'map'691'_406 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_to_938
              (coe du_dom'8712'_378 (coe v0) (coe v1) (coe v3)) v4 in
    case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Function.Bundles.d_from_940
             (coe
                du_dom'8712'_378 (coe v0)
                (coe
                   MAlonzo.Code.Axiom.Set.du_map_380 v0
                   (coe
                      MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v8 -> v8))
                      (coe (\ v8 -> v2)))
                   v1)
                (coe v3))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2 v6)
                (coe
                   MAlonzo.Code.Function.Bundles.d_to_938
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v8 -> v8))
                         (coe (\ v8 -> v2)))
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v8 -> v8))
                         (coe (\ v8 -> v2))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v6))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v6))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v7)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.dom-mapʳ⊆
d_dom'45'map'691''8838'_430 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45'map'691''8838'_430 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45'map'691''8838'_430 v0 v4 v5 v6 v7
du_dom'45'map'691''8838'_430 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45'map'691''8838'_430 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_to_938
              (coe
                 du_dom'8712'_378 (coe v0)
                 (coe du_map'691'_368 (coe v0) (coe v2) (coe v1)) (coe v3))
              v4 in
    case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Function.Bundles.d_from_940
                     (coe
                        MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v8 -> v8))
                           (coe (\ v8 -> v2)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v6)))
                     v7 in
           case coe v8 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                      -> case coe v10 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                             -> coe
                                  MAlonzo.Code.Function.Bundles.d_from_940
                                  (coe du_dom'8712'_378 (coe v0) (coe v1) (coe v11))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                     (coe v14))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.mapʳ-dom
d_map'691''45'dom_456 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_456 v0 ~v1 ~v2 ~v3 v4 v5
  = du_map'691''45'dom_456 v0 v4 v5
du_map'691''45'dom_456 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'691''45'dom_456 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_dom'45''8838'map'691'_406 (coe v0) (coe v1) (coe v2))
      (coe du_dom'45'map'691''8838'_430 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Rel.dom-∅
d_dom'45''8709'_458 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_458 ~v0 ~v1 ~v2 ~v3 ~v4 = du_dom'45''8709'_458
du_dom'45''8709'_458 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45''8709'_458
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_428
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Rel.mapPartialLiftKey
d_mapPartialLiftKey_466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_466 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapPartialLiftKey_466 v4 v5
du_mapPartialLiftKey_466 ::
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_466 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v4 ->
                coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4))
             (coe v0 v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_486 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_486 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_mapPartialLiftKey'45'map_486 v0 v4 v5 v6 v7 v8
du_mapPartialLiftKey'45'map_486 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey'45'map_486 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_940
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v4)
                 (coe du_mapPartialLiftKey_466 (coe v3))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
              v5 in
    case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
               -> case coe v8 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                      -> let v13 = coe v3 v9 v10 in
                         coe
                           seq (coe v13)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v12)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.mapMaybeWithKey
d_mapMaybeWithKey_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () -> (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapMaybeWithKey_526 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey_526 v0 v4 v5
du_mapMaybeWithKey_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapMaybeWithKey_526 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558 v0
      (coe du_mapPartialLiftKey_466 (coe v1)) v2
-- Axiom.Set.Rel.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_542 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_542 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8712''45'mapMaybeWithKey_542 v0 v4 v5 v6 v7 v8
du_'8712''45'mapMaybeWithKey_542 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'mapMaybeWithKey_542 v0 v1 v2 v3 v4 v5
  = coe
      du_mapPartialLiftKey'45'map_486 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_586 (coe v0)
         (coe v4) (coe du_mapPartialLiftKey_466 (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Function.Bundles.d_to_938
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0)
               (coe du_mapMaybeWithKey_526 (coe v0) (coe v3) (coe v4))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v5)))))
-- Axiom.Set.Rel.Restriction._∣_
d__'8739'__558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'__558 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__558 v0 v2 v4 v5
du__'8739'__558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'__558 v0 v1 v2 v3
  = coe du__'8739'''__304 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Restriction._∣_ᶜ
d__'8739'_'7580'_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'_'7580'_564 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_564 v0 v2 v4 v5
du__'8739'_'7580'_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'_'7580'_564 v0 v1 v2 v3
  = coe
      du__'8739'''__304 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Restriction._⟪$⟫_
d__'10218''36''10219'__570 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'10218''36''10219'__570 v0 ~v1 v2 ~v3 v4 v5
  = du__'10218''36''10219'__570 v0 v2 v4 v5
du__'10218''36''10219'__570 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'10218''36''10219'__570 v0 v1 v2 v3
  = coe
      du_range_296 v0
      (coe du__'8739'__558 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Rel.Restriction.res-cong
d_res'45'cong_578 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_578 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'cong_578 v0 v2 v4 v5 v6 v7
du_res'45'cong_578 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_578 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe v1 v4)
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_114
                        (coe v6 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe v1 v3)
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe v1 v3)
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_114
                        (coe v7 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe v1 v4)
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-dom
d_res'45'dom_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_588 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom_588 v0 v2 v4 v5 v6 v7
du_res'45'dom_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_588 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe du__'8739'__558 (coe v0) (coe v1) (coe v2) (coe v3)) v4 v5 in
    case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                       v0 v2
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                          (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                          (coe v1 v3)
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                       v7 v10)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-domᵐ
d_res'45'dom'7504'_600 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'7504'_600 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom'7504'_600 v0 v2 v4 v5 v6 v7
du_res'45'dom'7504'_600 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'7504'_600 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe du__'8739'__558 (coe v0) (coe v1) (coe v2) (coe v3)) v4 v5 in
    case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
               -> coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_174
                    (coe v0)
                    (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                    (coe v2) (coe v7)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                          v0 v2
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                             (coe v1 v3)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                          v7 v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-comp-cong
d_res'45'comp'45'cong_614 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_614 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'cong_614 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'cong_614 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_614 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe
                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                           (coe v1 v4))
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_114
                        (\ v10 v11 ->
                           coe
                             v10
                             (coe v7 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v11))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                 (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                 (coe v1 v3))
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe
                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                           (coe v1 v3))
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_114
                        (\ v10 v11 ->
                           coe
                             v10
                             (coe v6 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v11))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                 (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                 (coe v1 v4))
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-comp-dom
d_res'45'comp'45'dom_630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_630 = erased
-- Axiom.Set.Rel.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_642 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'comp'45'dom'7504'_642 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'dom'7504'_642 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'dom'7504'_642 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'comp'45'dom'7504'_642 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe du__'8739'_'7580'_564 (coe v0) (coe v1) (coe v2) (coe v3)) v4
              v5 in
    case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
               -> coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_174
                    (coe v0)
                    (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                    (coe v2) (coe v7)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                          v0 v2
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                (coe v1 v3))
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                          v7 v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-⊆
d_res'45''8838'_654 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45''8838'_654 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45''8838'_654 v0 v2 v4 v5 v6
du_res'45''8838'_654 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45''8838'_654 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Restriction.ex-⊆
d_ex'45''8838'_656 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_ex'45''8838'_656 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_ex'45''8838'_656 v0 v2 v4 v5 v6
du_ex'45''8838'_656 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_ex'45''8838'_656 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 v3))
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Restriction.res-∅
d_res'45''8709'_658 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_658 ~v0 ~v1 ~v2 ~v3 ~v4 = du_res'45''8709'_658
du_res'45''8709'_658 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_658 = coe du_dom'45''8709'_458
-- Axiom.Set.Rel.Restriction.res-ex-∪
d_res'45'ex'45''8746'_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_662 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45''8746'_662 v0 v2 v3 v5 v6
du_res'45'ex'45''8746'_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_662 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_550 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v3
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                  (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                  (coe v1 v2)
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v3
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                  (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                  (coe
                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                     (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                     (coe v1 v2))
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
         (coe du_res'45''8838'_654 (coe v0) (coe v1) (coe v3) (coe v2))
         (coe du_ex'45''8838'_656 (coe v0) (coe v1) (coe v3) (coe v2)))
      (coe
         (\ v5 v6 ->
            let v7
                  = coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) in
            case coe v7 of
              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v8 v9
                -> if coe v8
                     then case coe v9 of
                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v10
                              -> coe
                                   MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_210
                                   v0
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_filter_402 v0
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                         erased (coe v1 v2)
                                         (\ v11 ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                                      v3)
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased
                                         v3
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                            erased
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                               erased (coe v1 v2))
                                            (\ v11 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe v11)))))
                                   v5
                                   (coe
                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                                         v0 v3
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                            erased (coe v1 v2)
                                            (\ v11 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                                         v5
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                                            (coe v6))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     else coe
                            seq (coe v9)
                            (coe
                               MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_210 v0
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v3
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                        erased (coe v1 v2)
                                        (\ v10 ->
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_filter_402 v0
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                     (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                        (coe v1 v2))
                                     (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                  v3)
                               v5
                               (coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                                     v0 v3
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                        erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                           (coe v1 v2))
                                        (\ v10 ->
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                     v5
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                        (coe v6)))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Rel.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_676 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_676 = erased
-- Axiom.Set.Rel.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_684 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45'disj'45''8746'_684 v0 v2 v3 v5 v6
du_res'45'ex'45'disj'45''8746'_684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_684 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (let v5
             = coe
                 du_res'45'ex'45''8746'_662 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v4) in
       case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6)
         _ -> MAlonzo.RTE.mazUnreachableError)
      erased
-- Axiom.Set.Rel.Restriction.curryʳ
d_curry'691'_692 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_curry'691'_692 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'691'_692 v0 v2 v5 v6
du_curry'691'_692 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_curry'691'_692 v0 v1 v2 v3
  = coe
      du_map'737'_362 (coe v0)
      (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         du__'8739'''__304 (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               v1
               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
-- Axiom.Set.Rel.Restriction.∈-curryʳ
d_'8712''45'curry'691'_704 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'curry'691'_704 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8712''45'curry'691'_704 v0 v2 v5 v6 v7 v8 v9
du_'8712''45'curry'691'_704 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'curry'691'_704 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map'8321'_114
                 (coe (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
              (coe
                 du__'8739'''__304 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                    (coe
                       v1
                       (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3))
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5))
              v6 in
    case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
               -> coe
                    seq (coe v10)
                    (case coe v9 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                         -> let v14
                                  = coe
                                      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                                      v0 v2
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                         erased
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                            erased
                                            (coe
                                               v1
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0
                                                  erased v3))
                                            (\ v14 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                                         (\ v14 ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                                      v8 v13 in
                            case coe v14 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16 -> coe v16
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction._._∩_
d__'8745'__728 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__728 v0 ~v1 v2 = du__'8745'__728 v0 v2
du__'8745'__728 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__728 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
-- Axiom.Set.Rel.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_768 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8838''8745'_768 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8838''8745'_768 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8838''8745'_768 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8838''8745'_768 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_938
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
         (coe du_dom_294 v0 v2) (coe du_dom_294 v0 v3) (coe v4))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_res'45'dom'7504'_600 (coe v0) (coe v1) (coe v2)
            (coe du_dom_294 v0 v3) (coe v4) (coe v5))
         (coe
            du_res'45'dom_588 (coe v0) (coe v1) (coe v2) (coe du_dom_294 v0 v3)
            (coe v4) (coe v5)))
-- Axiom.Set.Rel.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_776 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8745''8838'_776 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8745''8838'_776 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8745''8838'_776 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8745''8838'_776 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_940
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
                 (coe du_dom_294 v0 v2) (coe du_dom_294 v0 v3) (coe v4))
              v5 in
    case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
        -> let v9
                 = coe
                     MAlonzo.Code.Function.Bundles.d_to_938
                     (coe du_dom'8712'_378 (coe v0) (coe v2) (coe v4)) v7 in
           let v10
                 = coe
                     MAlonzo.Code.Function.Bundles.d_to_938
                     (coe du_dom'8712'_378 (coe v0) (coe v3) (coe v4)) v8 in
           case coe v9 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
               -> coe
                    seq (coe v10)
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_940
                       (coe
                          du_dom'8712'_378 (coe v0)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_filter_402 v0
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                                (coe
                                   v1
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                                         (\ v13 ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                         v3)))
                                (\ v13 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                             v2)
                          (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                          (coe
                             MAlonzo.Code.Function.Bundles.d_to_938
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v2)
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                   (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                                   (coe
                                      v1
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased
                                            erased
                                            (\ v13 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                            v3)))
                                   (\ v13 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v11)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v12)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_824 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_824 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm''_824 v0 v2 v5 v6
du_res'45'dom'45'comm''_824 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_824 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_res'45'dom'45'comm'8838''8745'_768 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         du_res'45'dom'45'comm'8745''8838'_776 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Axiom.Set.Rel.Restriction.res-dom-comm
d_res'45'dom'45'comm_830 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_830 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm_830 v0 v2 v5 v6
du_res'45'dom'45'comm_830 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_830 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296)
         (coe
            du_dom_294 v0
            (coe
               du__'8739'__558 (coe v0) (coe v1) (coe v2) (coe du_dom_294 v0 v3)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
            (coe du_dom_294 v0 v2) (coe du_dom_294 v0 v3))
         (coe
            du_dom_294 v0
            (coe
               du__'8739'__558 (coe v0) (coe v1) (coe v3) (coe du_dom_294 v0 v2)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
               (coe du_dom_294 v0 v2) (coe du_dom_294 v0 v3))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
               (coe du_dom_294 v0 v3) (coe du_dom_294 v0 v2))
            (coe
               du_dom_294 v0
               (coe
                  du__'8739'__558 (coe v0) (coe v1) (coe v3) (coe du_dom_294 v0 v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
               (coe
                  MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
                  (coe du_dom_294 v0 v3) (coe du_dom_294 v0 v2))
               (coe
                  du_dom_294 v0
                  (coe
                     du__'8739'__558 (coe v0) (coe v1) (coe v3) (coe du_dom_294 v0 v2)))
               (coe
                  du_dom_294 v0
                  (coe
                     du__'8739'__558 (coe v0) (coe v1) (coe v3) (coe du_dom_294 v0 v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                          (coe (\ v5 v6 -> v6))))
                  (coe
                     du_dom_294 v0
                     (coe
                        du__'8739'__558 (coe v0) (coe v1) (coe v3)
                        (coe du_dom_294 v0 v2))))
               (coe
                  du_res'45'dom'45'comm''_824 (coe v0) (coe v1) (coe v3) (coe v2)))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_686 (coe v0)
               (coe v1) (coe du_dom_294 v0 v3) (coe du_dom_294 v0 v2)))
         (coe
            du_res'45'dom'45'comm''_824 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Axiom.Set.Rel.Corestriction._↾_
d__'8638'__870 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8638'__870 v0 ~v1 v2 ~v3 v4 v5 = du__'8638'__870 v0 v2 v4 v5
du__'8638'__870 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8638'__870 v0 v1 v2 v3
  = coe du__'8638'''__312 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Corestriction._↾_ᶜ
d__'8638'_'7580'_876 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8638'_'7580'_876 v0 ~v1 v2 ~v3 v4 v5
  = du__'8638'_'7580'_876 v0 v2 v4 v5
du__'8638'_'7580'_876 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8638'_'7580'_876 v0 v1 v2 v3
  = coe
      du__'8638'''__312 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Corestriction.cores-⊆
d_cores'45''8838'_882 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_cores'45''8838'_882 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_cores'45''8838'_882 v0 v2 v4 v5 v6
du_cores'45''8838'_882 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_cores'45''8838'_882 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Corestriction.coex-⊆
d_coex'45''8838'_884 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_coex'45''8838'_884 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_coex'45''8838'_884 v0 v2 v4 v5 v6
du_coex'45''8838'_884 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_coex'45''8838'_884 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 v3))
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe v4))
