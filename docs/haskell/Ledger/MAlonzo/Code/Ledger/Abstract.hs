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

module MAlonzo.Code.Ledger.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Transaction

-- Ledger.Abstract._.DCert
d_DCert_88 a0 = ()
-- Ledger.Abstract._.Carrier
d_Carrier_206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Carrier_206 = erased
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_MemoryEstimate_260 = erased
-- Ledger.Abstract._.Prices
d_Prices_308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Prices_308 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_332 a0 a1 a2 a3 = ()
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_ScriptHash_348 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_TxIn_392 = erased
-- Ledger.Abstract._.Carrier
d_Carrier_414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Carrier_414 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Wdrl_420 = erased
-- Ledger.Abstract.indexOf
d_indexOf_1418 a0 = ()
data T_indexOf_1418
  = C_indexOf'46'constructor_2355 (MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
                                   [MAlonzo.Code.Ledger.Deleg.T_DCert_668] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1428 ::
  T_indexOf_1418 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] -> Maybe AgdaAny
d_indexOfDCert_1428 v0
  = case coe v0 of
      C_indexOf'46'constructor_2355 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1430 ::
  T_indexOf_1418 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1430 v0
  = case coe v0 of
      C_indexOf'46'constructor_2355 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1432 ::
  T_indexOf_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1432 v0
  = case coe v0 of
      C_indexOf'46'constructor_2355 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1434 ::
  T_indexOf_1418 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1434 v0
  = case coe v0 of
      C_indexOf'46'constructor_2355 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1436 a0 = ()
data T_AbstractFunctions_1436
  = C_AbstractFunctions'46'constructor_2493 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1418
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1444 ::
  T_AbstractFunctions_1436 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1444 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2493 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1446 :: T_AbstractFunctions_1436 -> AgdaAny -> Integer
d_serSize_1446 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2493 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1448 :: T_AbstractFunctions_1436 -> T_indexOf_1418
d_indexOfImp_1448 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2493 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
