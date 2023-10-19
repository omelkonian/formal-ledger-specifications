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
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE EmptyDataDeriving #-}

module MAlonzo.Code.Ledger.Foreign.LedgerTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Foreign.Haskell.Pair

import GHC.Generics (Generic)
import Data.TreeDiff
data UTxOState = MkUTxOState
  { utxo :: UTxO
  , fees :: Coin
  } deriving (Show, Generic)
instance ToExpr UTxOState
data UTxOEnv = MkUTxOEnv
  { slot    :: Integer
  , pparams :: PParams
  } deriving (Show, Generic)
instance ToExpr UTxOEnv
data PParams = MkPParams
  { a                   :: Integer
  , b                   :: Integer
  , maxBlockSize        :: Integer
  , maxTxSize           :: Integer
  , maxHeaderSize       :: Integer
  , maxValSize          :: Integer
  , minUTxOValue        :: Coin
  , poolDeposit         :: Coin
  , emax                :: Epoch
  , pv                  :: (Integer, Integer)
  , votingThresholds    :: ()
  , govActionLifetime   :: Integer
  , govActionDeposit    :: Coin
  , drepDeposit         :: Coin
  , drepActivity        :: Epoch
  , ccMinSize           :: Integer
  , ccMaxTermLength     :: Integer
  , minimumAVS          :: Coin
  , costmdls            :: AgdaEmpty
  , prices              :: ()
  , maxTxExUnits        :: ExUnits
  , maxBlockExUnits     :: ExUnits
  , coinsPerUTxOWord    :: Coin
  , maxCollateralInputs :: Integer
  } deriving (Show, Generic)
instance ToExpr PParams
data Tx = MkTx
  { body :: TxBody
  , wits :: TxWitnesses
  , txAD :: Maybe AuxiliaryData
  } deriving (Show, Generic)
instance ToExpr Tx
data TxWitnesses = MkTxWitnesses
  { vkSigs  :: [(Integer, Integer)]
  , scripts :: [AgdaEmpty]
  , txdats  :: [(DataHash, Datum)]
  , txrdmrs :: [(RdmrPtr, (Redeemer, ExUnits))]
  } deriving (Show, Generic)
instance ToExpr TxWitnesses
data TxBody = MkTxBody
  { txins  :: [TxIn]
  , txouts :: [(Ix, TxOut)]
  , txfee  :: Coin
  , txvldt :: (Maybe Integer, Maybe Integer)
  , txsize :: Integer
  , txid   :: TxId
  , collateral    :: [TxIn]
  , reqSigHash    :: [Hash]
  , scriptIntHash :: Maybe Hash
  } deriving (Show, Generic)
instance ToExpr TxBody
type Coin  = Integer
type Addr  = Integer

type TxId  = Integer
type Ix    = Integer
type Epoch = Integer

type AuxiliaryData = ()
type DataHash      = ()
type Datum         = ()
type Redeemer      = ()

type TxIn  = (TxId, Ix)
type TxOut = (Addr, (Coin, Maybe DataHash))
type UTxO  = [(TxIn, TxOut)]
type Hash  = Integer

data Tag     = Spend | Mint | Cert | Rewrd deriving (Show, Generic)
instance ToExpr Tag
type RdmrPtr = (Tag, Ix)
type ExUnits = (Integer, Integer)
data AgdaEmpty deriving (Show, Generic)
instance ToExpr AgdaEmpty
-- Ledger.Foreign.LedgerTypes.Empty
d_Empty_6 = ()
type T_Empty_6 = AgdaEmpty
cover_Empty_6 :: AgdaEmpty -> ()
cover_Empty_6 x = case x of
-- Ledger.Foreign.LedgerTypes.HSMap
d_HSMap_8 :: () -> () -> ()
d_HSMap_8 = erased
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_14 :: ()
d_Coin_14 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_16 :: ()
d_Addr_16 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_18 :: ()
d_TxId_18 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_20 :: ()
d_Ix_20 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_22 :: ()
d_Epoch_22 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_24 :: ()
d_AuxiliaryData_24 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_26 :: ()
d_DataHash_26 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_28 :: ()
d_Datum_28 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_30 :: ()
d_Redeemer_30 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_32 :: ()
d_TxIn_32 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_34 :: ()
d_TxOut_34 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_36 :: ()
d_UTxO_36 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_38 :: ()
d_Hash_38 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_40 = ()
type T_Tag_40 = Tag
pattern C_Spend_42 = Spend
pattern C_Mint_44 = Mint
pattern C_Cert_46 = Cert
pattern C_Rewrd_48 = Rewrd
check_Spend_42 :: T_Tag_40
check_Spend_42 = Spend
check_Mint_44 :: T_Tag_40
check_Mint_44 = Mint
check_Cert_46 :: T_Tag_40
check_Cert_46 = Cert
check_Rewrd_48 :: T_Tag_40
check_Rewrd_48 = Rewrd
cover_Tag_40 :: Tag -> ()
cover_Tag_40 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_50 :: ()
d_RdmrPtr_50 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_52 :: ()
d_ExUnits_52 = erased
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_54 = ()
type T_TxBody_54 = TxBody
pattern C_TxBody'46'constructor_503 a0 a1 a2 a3 a4 a5 a6 a7 a8 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8
check_TxBody'46'constructor_503 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxBody_54
check_TxBody'46'constructor_503 = MkTxBody
cover_TxBody_54 :: TxBody -> ()
cover_TxBody_54 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_74 ::
  T_TxBody_54 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_txins_74 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_76 ::
  T_TxBody_54 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_txouts_76 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_78 :: T_TxBody_54 -> Integer
d_txfee_78 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_80 ::
  T_TxBody_54 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_80 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_82 :: T_TxBody_54 -> Integer
d_txsize_82 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_84 :: T_TxBody_54 -> Integer
d_txid_84 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_86 ::
  T_TxBody_54 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_collateral_86 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_88 :: T_TxBody_54 -> [Integer]
d_reqSigHash_88 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_90 :: T_TxBody_54 -> Maybe Integer
d_scriptIntHash_90 v0
  = case coe v0 of
      C_TxBody'46'constructor_503 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_92 = ()
type T_TxWitnesses_92 = TxWitnesses
pattern C_TxWitnesses'46'constructor_785 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_785 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Empty_6 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_Tag_40 Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer))) ->
  T_TxWitnesses_92
check_TxWitnesses'46'constructor_785 = MkTxWitnesses
cover_TxWitnesses_92 :: TxWitnesses -> ()
cover_TxWitnesses_92 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_102 ::
  T_TxWitnesses_92 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_102 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_785 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_104 :: T_TxWitnesses_92 -> [T_Empty_6]
d_scripts_104 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_785 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_106 ::
  T_TxWitnesses_92 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
     MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6]
d_txdats_106 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_785 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_108 ::
  T_TxWitnesses_92 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_Tag_40 Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer Integer))]
d_txrdmrs_108 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_785 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_110 = ()
type T_Tx_110 = Tx
pattern C_Tx'46'constructor_873 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_873 ::
  T_TxBody_54 ->
  T_TxWitnesses_92 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_110
check_Tx'46'constructor_873 = MkTx
cover_Tx_110 :: Tx -> ()
cover_Tx_110 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_118 :: T_Tx_110 -> T_TxBody_54
d_body_118 v0
  = case coe v0 of
      C_Tx'46'constructor_873 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_120 :: T_Tx_110 -> T_TxWitnesses_92
d_wits_120 v0
  = case coe v0 of
      C_Tx'46'constructor_873 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_122 ::
  T_Tx_110 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_122 v0
  = case coe v0 of
      C_Tx'46'constructor_873 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_124 = ()
type T_PParams_124 = PParams
pattern C_PParams'46'constructor_1589 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23
check_PParams'46'constructor_1589 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  T_Empty_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_PParams_124
check_PParams'46'constructor_1589 = MkPParams
cover_PParams_124 :: PParams -> ()
cover_PParams_124 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_174 :: T_PParams_124 -> Integer
d_a_174 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_176 :: T_PParams_124 -> Integer
d_b_176 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_178 :: T_PParams_124 -> Integer
d_maxBlockSize_178 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_180 :: T_PParams_124 -> Integer
d_maxTxSize_180 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_182 :: T_PParams_124 -> Integer
d_maxHeaderSize_182 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_184 :: T_PParams_124 -> Integer
d_maxValSize_184 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_186 :: T_PParams_124 -> Integer
d_minUTxOValue_186 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_188 :: T_PParams_124 -> Integer
d_poolDeposit_188 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_190 :: T_PParams_124 -> Integer
d_Emax_190 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_192 ::
  T_PParams_124 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_192 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_194 ::
  T_PParams_124 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_194 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_196 :: T_PParams_124 -> Integer
d_govActionLifetime_196 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_198 :: T_PParams_124 -> Integer
d_govActionDeposit_198 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_200 :: T_PParams_124 -> Integer
d_drepDeposit_200 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_202 :: T_PParams_124 -> Integer
d_drepActivity_202 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_204 :: T_PParams_124 -> Integer
d_ccMinSize_204 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_206 :: T_PParams_124 -> Integer
d_ccMaxTermLength_206 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minimumAVS
d_minimumAVS_208 :: T_PParams_124 -> Integer
d_minimumAVS_208 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_210 :: T_PParams_124 -> T_Empty_6
d_costmdls_210 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_212 ::
  T_PParams_124 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_212 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_214 ::
  T_PParams_124 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_214 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_216 ::
  T_PParams_124 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_216 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_218 :: T_PParams_124 -> Integer
d_coinsPerUTxOWord_218 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_220 :: T_PParams_124 -> Integer
d_maxCollateralInputs_220 v0
  = case coe v0 of
      C_PParams'46'constructor_1589 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_222 = ()
type T_UTxOEnv_222 = UTxOEnv
pattern C_UTxOEnv'46'constructor_2819 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_2819 ::
  Integer -> T_PParams_124 -> T_UTxOEnv_222
check_UTxOEnv'46'constructor_2819 = MkUTxOEnv
cover_UTxOEnv_222 :: UTxOEnv -> ()
cover_UTxOEnv_222 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_228 :: T_UTxOEnv_222 -> Integer
d_slot_228 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_2819 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_230 :: T_UTxOEnv_222 -> T_PParams_124
d_pparams_230 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_2819 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_232 = ()
type T_UTxOState_232 = UTxOState
pattern C_UTxOState'46'constructor_2861 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_2861 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer -> T_UTxOState_232
check_UTxOState'46'constructor_2861 = MkUTxOState
cover_UTxOState_232 :: UTxOState -> ()
cover_UTxOState_232 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_238 ::
  T_UTxOState_232 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_utxo_238 v0
  = case coe v0 of
      C_UTxOState'46'constructor_2861 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_240 :: T_UTxOState_232 -> Integer
d_fees_240 v0
  = case coe v0 of
      C_UTxOState'46'constructor_2861 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
