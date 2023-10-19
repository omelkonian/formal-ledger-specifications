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

module MAlonzo.Code.Ledger.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _._≤ᵗ_
d__'8804''7511'__18 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__18 = erased
-- _.Addr
d_Addr_42 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Addr_42 = erased
-- _.Credential
d_Credential_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_86 = erased
-- _.DCert
d_DCert_88 a0 = ()
-- _.Carrier
d_Carrier_206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Carrier_206 = erased
-- _.GovActionID
d_GovActionID_218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_GovActionID_218 = erased
-- _.GovProposal
d_GovProposal_224 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_MemoryEstimate_260 = erased
-- _.Network
d_Network_264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Network_264 = erased
-- _.PParams
d_PParams_292 a0 = ()
-- _.ScriptHash
d_ScriptHash_348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_ScriptHash_348 = erased
-- _.Slot
d_Slot_356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Slot_356 = erased
-- _.Tx
d_Tx_386 a0 = ()
-- _.TxBody
d_TxBody_388 a0 = ()
-- _.TxOut
d_TxOut_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_TxOut_394 = erased
-- _.UTxO
d_UTxO_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_UTxO_398 = erased
-- _.Carrier
d_Carrier_414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_Carrier_414 = erased
-- _.coin
d_coin_444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny -> Integer
d_coin_444 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
-- _.getValue
d_getValue_484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_484 ~v0 = du_getValue_484
du_getValue_484 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_484
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2450
-- _.inject
d_inject_494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  Integer -> AgdaAny
d_inject_494 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
-- _.netId
d_netId_536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_536 ~v0 ~v1 ~v2 ~v3 = du_netId_536
du_netId_536 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_536 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1438 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1438 v3
du_HasCoin'45'Map_1438 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1438 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
              v0 MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v2 -> v2)
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))))
-- Ledger.Utxo.isPhaseTwoScriptAddress
d_isPhaseTwoScriptAddress_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isPhaseTwoScriptAddress_1444 v0 ~v1 v2 v3
  = du_isPhaseTwoScriptAddress_1444 v0 v2 v3
du_isPhaseTwoScriptAddress_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isPhaseTwoScriptAddress_1444 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126 (coe v2) in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v4 v5
        -> if coe v4
             then case coe v5 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v6
                      -> let v7
                               = MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2474
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Address.du_getScriptHash_134 (coe v2)
                                      (coe v6))
                                   (coe v1) in
                         case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                             -> coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2486 (coe v8)
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe seq (coe v5) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.totExUnits
d_totExUnits_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
d_totExUnits_1482 v0 ~v1 v2 = du_totExUnits_1482 v0 v2
du_totExUnits_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
du_totExUnits_1482 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_862
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542 (coe v0))))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_14)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_202
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_294
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_294
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542 (coe v0)))))
      (coe
         (\ v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2432
            (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1))))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 -> Integer
d_utxoEntrySizeWithoutVal_1492 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1492
du_utxoEntrySizeWithoutVal_1492 :: Integer
du_utxoEntrySizeWithoutVal_1492 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1494 v0 ~v1 v2 = du_utxoEntrySize_1494 v0 v2
du_utxoEntrySize_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1494 v0 v1
  = coe
      addInt (coe du_utxoEntrySizeWithoutVal_1492)
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_216
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2450 (coe v1)))
-- Ledger.Utxo._._.outs
d_outs_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1506 ~v0 ~v1 v2 = du_outs_1506 v2
du_outs_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1506 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2408 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2382 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1512 v0 ~v1 v2 = du_balance_1512 v0 v2
du_balance_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1512 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                     (coe
                        MAlonzo.Code.Ledger.Script.d_Data'688'_202
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_294
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                              (coe v0)))))))))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2450)
      (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1518 v0 ~v1 v2 = du_cbalance_1518 v0 v2
du_cbalance_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1518 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
      (coe du_balance_1512 (coe v0) (coe v1))
-- Ledger.Utxo._._.coinPolicies
d_coinPolicies_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 -> [AgdaAny]
d_coinPolicies_1522 v0 ~v1 = du_coinPolicies_1522 v0
du_coinPolicies_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  [AgdaAny]
du_coinPolicies_1522 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo._._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1524 v0 ~v1 v2 = du_isAdaOnly'7495'_1524 v0 v2
du_isAdaOnly'7495'_1524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1524 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_104 ()
      erased
      (coe
         MAlonzo.Code.Axiom.Set.du__'8801''7497''63'__1588
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)) v1)
         (coe du_coinPolicies_1522 (coe v0)))
-- Ledger.Utxo._._.minfee
d_minfee_1528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
d_minfee_1528 v0 v1 v2 v3
  = coe
      addInt
      (coe
         addInt
         (coe
            MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1444 v1
            (MAlonzo.Code.Ledger.PParams.d_prices_306 (coe v2))
            (coe du_totExUnits_1482 (coe v0) (coe v3)))
         (coe MAlonzo.Code.Ledger.PParams.d_b_276 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_274 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2406
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3))))
-- Ledger.Utxo._._.DepositPurpose
d_DepositPurpose_1534 a0 a1 = ()
data T_DepositPurpose_1534
  = C_CredentialDeposit_1536 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_PoolDeposit_1538 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_DRepDeposit_1540 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GovActionDeposit_1542 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.certDeposit
d_certDeposit_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1544 ~v0 ~v1 v2 v3 = du_certDeposit_1544 v2 v3
du_certDeposit_1544 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1544 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    case coe v1 of
      MAlonzo.Code.Ledger.Deleg.C_delegate_670 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe C_CredentialDeposit_1536 (coe v3)) (coe v6))
      MAlonzo.Code.Ledger.Deleg.C_regpool_672 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe C_PoolDeposit_1538 (coe v3))
                (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_280 (coe v0)))
      MAlonzo.Code.Ledger.Deleg.C_regdrep_676 v3 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe C_DRepDeposit_1540 (coe v3)) (coe v4))
      _ -> coe v2
-- Ledger.Utxo._._.certDepositᵐ
d_certDeposit'7504'_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit'7504'_1558 ~v0 ~v1 v2 v3
  = du_certDeposit'7504'_1558 v2 v3
du_certDeposit'7504'_1558 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit'7504'_1558 v0 v1
  = let v2 = coe du_certDeposit_1544 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe v3))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1414
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.propDepositᵐ
d_propDeposit'7504'_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_propDeposit'7504'_1570 ~v0 ~v1 v2 v3 v4
  = du_propDeposit'7504'_1570 v2 v3 v4
du_propDeposit'7504'_1570 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_propDeposit'7504'_1570 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_9079 v3 v4 v5 v6 v7
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_GovActionDeposit_1542 (coe v1))
                   (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_292 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.certRefund
d_certRefund_1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe T_DepositPurpose_1534
d_certRefund_1578 ~v0 ~v1 v2 = du_certRefund_1578 v2
du_certRefund_1578 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe T_DepositPurpose_1534
du_certRefund_1578 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    case coe v0 of
      MAlonzo.Code.Ledger.Deleg.C_delegate_670 v2 v3 v4 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe C_CredentialDeposit_1536 (coe v2))
                    _ -> coe v1
             _ -> coe v1
      MAlonzo.Code.Ledger.Deleg.C_deregdrep_678 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe C_DRepDeposit_1540 (coe v2))
      _ -> coe v1
-- Ledger.Utxo._._.certRefundˢ
d_certRefund'738'_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 -> [T_DepositPurpose_1534]
d_certRefund'738'_1586 ~v0 ~v1 = du_certRefund'738'_1586
du_certRefund'738'_1586 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 -> [T_DepositPurpose_1534]
du_certRefund'738'_1586
  = coe
      MAlonzo.Code.Axiom.Set.du_partialToSet_454
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_certRefund_1578)
-- Ledger.Utxo.inInterval
d_inInterval_1590 a0 a1 a2 a3 = ()
data T_inInterval_1590
  = C_both_1598 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_1602 AgdaAny | C_upper_1606 AgdaAny | C_none_1608
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__1610 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1610 ~v0 v1 v2 = du__'61''62''7495'__1610 v1 v2
du__'61''62''7495'__1610 :: Bool -> Bool -> Bool
du__'61''62''7495'__1610 v0 v1
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v0) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1616 ~v0 ~v1 v2 v3 = du__'8804''7495'__1616 v2 v3
du__'8804''7495'__1616 :: Integer -> Integer -> Bool
du__'8804''7495'__1616 v0 v1
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
      (coe ())
      (coe
         MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612 (coe v0)
         (coe v1))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1618 ~v0 ~v1 v2 v3 = du__'8805''7495'__1618 v2 v3
du__'8805''7495'__1618 :: Integer -> Integer -> Bool
du__'8805''7495'__1618 v0 v1
  = coe du__'8804''7495'__1616 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_1630 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  () -> MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1630 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_1630 v2 v3
du_'8799''45''8709''7495'_1630 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1630 v0 v1
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
      (coe ())
      (coe
         MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
         (coe MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258 (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
-- Ledger.Utxo.feesOK
d_feesOK_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1634 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__1616
         (coe d_minfee_1528 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2384
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3))))
      (coe
         MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
               (coe ())
               (coe
                  MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                     (coe
                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                        (coe
                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_14)
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
                        (coe
                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_294
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                                          (coe v0))))))
                           (coe
                              MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_294
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2432
                        (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v3))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_424
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1414
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8743'__24
            (coe
               MAlonzo.Code.Axiom.Set.du_all'7495'_1664
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                        (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
                     (coe
                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_ps_294
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                                       (coe v0)))))))))
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
               (coe du_collateralRange_1758 (coe v0) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  du_isAdaOnly'7495'_1524 (coe v0)
                  (coe du_bal_1760 (coe v0) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                  (coe
                     du__'8805''7495'__1618
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
                           (coe du_bal_1760 (coe v0) (coe v3) (coe v4)))
                        (coe (100 :: Integer)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercent_284 (coe v2))))
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d_not_22
                     (coe
                        MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
                        (coe ())
                        (coe
                           MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                           (coe
                              MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                              (coe
                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_collateral_2410
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_424
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                 (coe
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))))))
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._.collateralRange
d_collateralRange_1758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_1758 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_1758 v0 v3 v4
du_collateralRange_1758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_1758 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_480
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Ledger.Transaction.d_collateral_2410
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1)))))
-- Ledger.Utxo._.bal
d_bal_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_1760 v0 ~v1 ~v2 v3 v4 = du_bal_1760 v0 v3 v4
du_bal_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_1760 v0 v1 v2
  = coe
      du_balance_1512 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2410
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1))))
-- Ledger.Utxo.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DepositPurpose_1762 v0 ~v1
  = du_DecEq'45'DepositPurpose_1762 v0
du_DecEq'45'DepositPurpose_1762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DepositPurpose_1762 v0
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_1536 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1536 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_1538 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRepDeposit_1540 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_GovActionDeposit_1542 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_1538 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1536 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_PoolDeposit_1538 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_1540 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_GovActionDeposit_1542 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_1540 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1536 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_PoolDeposit_1538 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRepDeposit_1540 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_1542 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_1542 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1536 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_PoolDeposit_1538 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRepDeposit_1540 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_GovActionDeposit_1542 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                             (coe v0)))
                                       (coe
                                          (\ v5 ->
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1764 v0 ~v1 = du_HasCoin'45'UTxO_1764 v0
du_HasCoin'45'UTxO_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1764 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1518 (coe v0))
-- Ledger.Utxo.Deposits
d_Deposits_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 -> ()
d_Deposits_1766 = erased
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1768 a0 a1 = ()
data T_UTxOEnv_1768
  = C_UTxOEnv'46'constructor_44509 AgdaAny (Maybe AgdaAny)
                                   MAlonzo.Code.Ledger.PParams.T_PParams_210
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1776 :: T_UTxOEnv_1768 -> AgdaAny
d_slot_1776 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_44509 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.ppolicy
d_ppolicy_1778 :: T_UTxOEnv_1768 -> Maybe AgdaAny
d_ppolicy_1778 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_44509 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1780 ::
  T_UTxOEnv_1768 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_1780 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_44509 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1782 a0 a1 = ()
data T_UTxOState_1782
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1800 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1792 ::
  T_UTxOState_1782 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1792 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1800 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1794 :: T_UTxOState_1782 -> Integer
d_fees_1794 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1800 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1796 ::
  T_UTxOState_1782 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1796 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1800 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1798 :: T_UTxOState_1782 -> Integer
d_donations_1798 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1800 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.⟦_⟧
d_'10214'_'10215'_1804 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  () -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1804 ~v0 ~v1 v2 = du_'10214'_'10215'_1804 v2
du_'10214'_'10215'_1804 :: AgdaAny -> AgdaAny
du_'10214'_'10215'_1804 v0 = coe v0
-- Ledger.Utxo.netId?
d_netId'63'_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Interface.Decidable.Instance.T_Dec'8321'_14
d_netId'63'_1814 v0 ~v1 ~v2 v3 v4 = du_netId'63'_1814 v0 v3 v4
du_netId'63'_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Interface.Decidable.Instance.T_Dec'8321'_14
du_netId'63'_1814 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.C_Dec'8321''46'constructor_103
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.DecEq.d__'8799'__20
              (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
              (coe v2 v3) v1))
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_1826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'inInterval_1826 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_1826 v0 v2 v3
du_Dec'45'inInterval_1826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'inInterval_1826 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                      -> let v7
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                            (coe v0))))
                                   (coe v5) (coe v1) in
                         let v8
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                            (coe v0))))
                                   (coe v1) (coe v6) in
                         case coe v7 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v9 v10
                             -> if coe v9
                                  then case coe v10 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v11
                                           -> case coe v8 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v12 v13
                                                  -> if coe v12
                                                       then case coe v13 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v14
                                                                -> coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                     (coe v12)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                        (coe
                                                                           C_both_1598
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v11) (coe v14))))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v10)
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                            (coe v9)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> let v6
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                            (coe v0))))
                                   (coe v5) (coe v1) in
                         case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v7 v8
                             -> if coe v7
                                  then case coe v8 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v9
                                           -> coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                   (coe C_lower_1602 v9))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v8)
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                            (coe v7)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                      -> let v6
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                            (coe v0))))
                                   (coe v1) (coe v5) in
                         case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v7 v8
                             -> if coe v7
                                  then case coe v8 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v9
                                           -> coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                   (coe C_upper_1606 v9))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v8)
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                            (coe v7)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                              (coe C_none_1608))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1928 v0 ~v1
  = du_HasCoin'45'UTxOState_1928 v0
du_HasCoin'45'UTxOState_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1928 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe d_donations_1798 (coe v1)) (coe d_fees_1794 (coe v1)))
                 (coe du_cbalance_1518 (coe v0) (coe d_utxo_1792 (coe v1))))
              (coe
                 MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
                 (coe du_DecEq'45'DepositPurpose_1762 (coe v0))
                 MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v2 -> v2)
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
                    (coe d_deposits_1796 (coe v1))))))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1932 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXO'10632'__1932
  = C_UTXO'45'inductive_2110 (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34)
                             T_inInterval_1590 MAlonzo.Code.Data.Nat.Base.T__'8804'__18
                             MAlonzo.Code.Data.Nat.Base.T__'8804'__18
                             (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny)
                             (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                              MAlonzo.Code.Data.Nat.Base.T__'8804'__18)
                             (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                              MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44)
-- Ledger.Utxo._._.updateCertDeposits
d_updateCertDeposits_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1942 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1942 v0 v2 v3 v4
du_updateCertDeposits_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1942 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204
             (coe du_DecEq'45'DepositPurpose_1762 (coe v0))
             (coe
                du_updateCertDeposits_1942 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1096
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (coe du_DecEq'45'DepositPurpose_1762 (coe v0)))
                (coe du_certDeposit'7504'_1558 (coe v1) (coe v4))
                (coe du_certRefund'738'_1586 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.updateProposalDeposits
d_updateProposalDeposits_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1956 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1956 v0 v2 v3 v4 v5
du_updateProposalDeposits_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1956 v0 v1 v2 v3 v4
  = case coe v3 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204
             (coe du_DecEq'45'DepositPurpose_1762 (coe v0))
             (coe
                du_updateProposalDeposits_1956 (coe v0) (coe v1) (coe v2) (coe v6)
                (coe v4))
             (coe
                du_propDeposit'7504'_1570 (coe v1)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v6))
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.updateDeposits
d_updateDeposits_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1974 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1974 v0 v2 v3 v4
du_updateDeposits_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1974 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1942 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2390 (coe v2))
      (coe
         du_updateProposalDeposits_1956 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2408 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2396 (coe v2))
         (coe v3))
-- Ledger.Utxo._._.depositsChange
d_depositsChange_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1980 v0 ~v1 v2 v3 v4
  = du_depositsChange_1980 v0 v2 v3 v4
du_depositsChange_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1980 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
         (coe du_DecEq'45'DepositPurpose_1762 (coe v0))
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v4 -> v4)
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
            (coe du_updateDeposits_1974 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
         (coe du_DecEq'45'DepositPurpose_1762 (coe v0))
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v4 -> v4)
         (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v3)))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
d_depositRefunds_1988 v0 ~v1 v2 v3 v4
  = du_depositRefunds_1988 v0 v2 v3 v4
du_depositRefunds_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
du_depositRefunds_1988 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_1980 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1796 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
d_newDeposits_1996 v0 ~v1 v2 v3 v4
  = du_newDeposits_1996 v0 v2 v3 v4
du_newDeposits_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
du_newDeposits_1996 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_1980 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1796 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
d_consumed_2004 v0 ~v1 v2 v3 v4 = du_consumed_2004 v0 v2 v3 v4
du_consumed_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
du_consumed_2004 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
         (coe
            du_balance_1512 (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
               (coe d_utxo_1792 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2380 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2386 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
         (coe du_depositRefunds_1988 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
d_produced_2012 v0 ~v1 v2 v3 v4 = du_produced_2012 v0 v2 v3 v4
du_produced_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
du_produced_2012 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
            (coe du_balance_1512 (coe v0) (coe du_outs_1506 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2384 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
            (coe du_newDeposits_1996 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2398 (coe v3)))
-- Ledger.Utxo._.body
d_body_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
d_body_2030 ~v0 ~v1 v2 = du_body_2030 v2
du_body_2030 ::
  T_GeneralizeTel_76047 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
du_body_2030 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2444
      (coe d_'46'generalizedField'45'tx_76041 v0)
-- Ledger.Utxo._.mint
d_mint_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> AgdaAny
d_mint_2038 ~v0 ~v1 v2 = du_mint_2038 v2
du_mint_2038 :: T_GeneralizeTel_76047 -> AgdaAny
du_mint_2038 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2386
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.txdonation
d_txdonation_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> Integer
d_txdonation_2050 ~v0 ~v1 v2 = du_txdonation_2050 v2
du_txdonation_2050 :: T_GeneralizeTel_76047 -> Integer
du_txdonation_2050 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2398
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.txfee
d_txfee_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> Integer
d_txfee_2052 ~v0 ~v1 v2 = du_txfee_2052 v2
du_txfee_2052 :: T_GeneralizeTel_76047 -> Integer
du_txfee_2052 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2384
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.txins
d_txins_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2056 ~v0 ~v1 v2 = du_txins_2056 v2
du_txins_2056 ::
  T_GeneralizeTel_76047 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2056 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2380
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.txouts
d_txouts_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2058 ~v0 ~v1 v2 = du_txouts_2058 v2
du_txouts_2058 ::
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2058 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2382
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.txsize
d_txsize_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> Integer
d_txsize_2062 ~v0 ~v1 v2 = du_txsize_2062 v2
du_txsize_2062 :: T_GeneralizeTel_76047 -> Integer
du_txsize_2062 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2406
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.txvldt
d_txvldt_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2066 ~v0 ~v1 v2 = du_txvldt_2066 v2
du_txvldt_2066 ::
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2066 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2070 ~v0 ~v1 v2 = du_txwdrls_2070 v2
du_txwdrls_2070 ::
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2070 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_76041 v0))
-- Ledger.Utxo._.pparams
d_pparams_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_2074 ~v0 ~v1 v2 = du_pparams_2074 v2
du_pparams_2074 ::
  T_GeneralizeTel_76047 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_2074 v0
  = coe d_pparams_1780 (coe d_'46'generalizedField'45'Γ_76043 v0)
-- Ledger.Utxo._.ppolicy
d_ppolicy_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> Maybe AgdaAny
d_ppolicy_2076 ~v0 ~v1 v2 = du_ppolicy_2076 v2
du_ppolicy_2076 :: T_GeneralizeTel_76047 -> Maybe AgdaAny
du_ppolicy_2076 v0
  = coe d_ppolicy_1778 (coe d_'46'generalizedField'45'Γ_76043 v0)
-- Ledger.Utxo._.slot
d_slot_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> AgdaAny
d_slot_2078 ~v0 ~v1 v2 = du_slot_2078 v2
du_slot_2078 :: T_GeneralizeTel_76047 -> AgdaAny
du_slot_2078 v0
  = coe d_slot_1776 (coe d_'46'generalizedField'45'Γ_76043 v0)
-- Ledger.Utxo._.deposits
d_deposits_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2082 ~v0 ~v1 v2 = du_deposits_2082 v2
du_deposits_2082 ::
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2082 v0
  = coe d_deposits_1796 (coe d_'46'generalizedField'45's_76045 v0)
-- Ledger.Utxo._.donations
d_donations_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> Integer
d_donations_2084 ~v0 ~v1 v2 = du_donations_2084 v2
du_donations_2084 :: T_GeneralizeTel_76047 -> Integer
du_donations_2084 v0
  = coe d_donations_1798 (coe d_'46'generalizedField'45's_76045 v0)
-- Ledger.Utxo._.fees
d_fees_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> Integer
d_fees_2086 ~v0 ~v1 v2 = du_fees_2086 v2
du_fees_2086 :: T_GeneralizeTel_76047 -> Integer
du_fees_2086 v0
  = coe d_fees_1794 (coe d_'46'generalizedField'45's_76045 v0)
-- Ledger.Utxo._.utxo
d_utxo_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2088 ~v0 ~v1 v2 = du_utxo_2088 v2
du_utxo_2088 ::
  T_GeneralizeTel_76047 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2088 v0
  = coe d_utxo_1792 (coe d_'46'generalizedField'45's_76045 v0)
-- Ledger.Utxo.Computational-UTXO
d_Computational'45'UTXO_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'UTXO_2112 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (d_computeProof_2204 (coe v0) (coe v1))
-- Ledger.Utxo._.go._.pparams
d_pparams_2174 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_2174 ~v0 v1 ~v2 ~v3 = du_pparams_2174 v1
du_pparams_2174 ::
  T_UTxOEnv_1768 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_2174 v0 = coe d_pparams_1780 (coe v0)
-- Ledger.Utxo._.go._.ppolicy
d_ppolicy_2176 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Maybe AgdaAny
d_ppolicy_2176 ~v0 v1 ~v2 ~v3 = du_ppolicy_2176 v1
du_ppolicy_2176 :: T_UTxOEnv_1768 -> Maybe AgdaAny
du_ppolicy_2176 v0 = coe d_ppolicy_1778 (coe v0)
-- Ledger.Utxo._.go._.slot
d_slot_2178 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
d_slot_2178 ~v0 v1 ~v2 ~v3 = du_slot_2178 v1
du_slot_2178 :: T_UTxOEnv_1768 -> AgdaAny
du_slot_2178 v0 = coe d_slot_1776 (coe v0)
-- Ledger.Utxo._.go._.deposits
d_deposits_2182 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2182 ~v0 ~v1 v2 ~v3 = du_deposits_2182 v2
du_deposits_2182 ::
  T_UTxOState_1782 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2182 v0 = coe d_deposits_1796 (coe v0)
-- Ledger.Utxo._.go._.donations
d_donations_2184 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
d_donations_2184 ~v0 ~v1 v2 ~v3 = du_donations_2184 v2
du_donations_2184 :: T_UTxOState_1782 -> Integer
du_donations_2184 v0 = coe d_donations_1798 (coe v0)
-- Ledger.Utxo._.go._.fees
d_fees_2186 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
d_fees_2186 ~v0 ~v1 v2 ~v3 = du_fees_2186 v2
du_fees_2186 :: T_UTxOState_1782 -> Integer
du_fees_2186 v0 = coe d_fees_1794 (coe v0)
-- Ledger.Utxo._.go._.utxo
d_utxo_2188 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2188 ~v0 ~v1 v2 ~v3 = du_utxo_2188 v2
du_utxo_2188 ::
  T_UTxOState_1782 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2188 v0 = coe d_utxo_1792 (coe v0)
-- Ledger.Utxo._.go.UTXO-premises
d_UTXO'45'premises_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> ()
d_UTXO'45'premises_2190 = erased
-- Ledger.Utxo._.go.UTXO-premises?
d_UTXO'45'premises'63'_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_UTXO'45'premises'63'_2202 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__82
         (coe
            MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
               (coe
                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Transaction.d_txins_2380
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))
            (coe
               MAlonzo.Code.Axiom.Set.du_'8709'_424
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
         (coe
            MAlonzo.Code.Axiom.Set.d_all'63'_1550
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
            erased
            (\ v5 ->
               coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (coe
                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
                 v5
                 (coe
                    MAlonzo.Code.Interface.IsSet.du_dom_478
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1414
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                    (coe d_utxo_1792 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_txins_2380
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
            (coe
               du_Dec'45'inInterval_1826 (coe v0) (coe d_slot_1776 (coe v2))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                  (coe
                     d_minfee_1528 (coe v0) (coe v1) (coe d_pparams_1780 (coe v2))
                     (coe v4))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                  (coe
                     MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                        (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0)))
                     (coe
                        du_consumed_2004 (coe v0) (coe d_pparams_1780 (coe v2)) (coe v3)
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))
                     (coe
                        du_produced_2012 (coe v0) (coe d_pparams_1780 (coe v2)) (coe v3)
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4))))
                  (coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                     (coe
                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4))))
                        (coe (0 :: Integer)))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))
                           (coe
                              MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                              (coe d_pparams_1780 (coe v2))))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                           (coe
                              MAlonzo.Code.Axiom.Set.d_all'63'_1550
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))
                                 (coe
                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0)))))
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                (coe
                                                   MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_294
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                                                         (coe v0))))))))))
                              erased
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
                                   (coe
                                      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
                                      (mulInt
                                         (coe
                                            du_utxoEntrySize_1494 (coe v0)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_minUTxOValue_278
                                            (coe d_pparams_1780 (coe v2)))))
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))))
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                 (coe
                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                                                            (coe v0))))))))))
                                 erased
                                 (\ v5 ->
                                    MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                                      (coe
                                         MAlonzo.Code.Ledger.Abstract.d_serSize_1446 v1
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                         (coe d_pparams_1780 (coe v2))))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                                                            (coe v0)))))))))
                                    erased
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_176
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                         (coe
                                            (\ v6 ->
                                               coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                                                 (coe
                                                    MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                    (coe v6))
                                                 (coe (64 :: Integer)))))
                                    (coe
                                       MAlonzo.Code.Interface.IsSet.du_range_480
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                (coe v4))))))
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                       erased
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                      (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                             (coe
                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_ps_294
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1542
                                                               (coe v0)))))))))
                                       erased
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_netId_92
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v5)))
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_networkId_1948
                                               (coe v0)))
                                       (coe
                                          MAlonzo.Code.Interface.IsSet.du_range_480
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1414
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                   (coe v4))))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                       erased
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       erased
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                  (coe v0)))
                                            (coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_networkId_1948
                                               (coe v0)))
                                       (coe
                                          MAlonzo.Code.Interface.IsSet.du_dom_478
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1414
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                   (coe v4))))))))))))))))
-- Ledger.Utxo._.go.computeProof
d_computeProof_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_2204 v0 v1 v2 v3 v4
  = let v5
          = d_UTXO'45'premises'63'_2202
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v6 v7
        -> if coe v6
             then case coe v7 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> case coe v14 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                  -> case coe v16 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                         -> case coe v18 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                -> case coe v20 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                       -> case coe v22 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                              -> case coe v24 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                     -> case coe
                                                                                               v26 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                            -> coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v28)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                       (coe
                                                                                                          C_'10214'_'44'_'44'_'44'_'10215''7512'_1800
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  erased
                                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        d_utxo_1792
                                                                                                                                        (coe
                                                                                                                                           v3)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                           erased
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                                 (coe
                                                                                                                                                    v4)))))
                                                                                                                                     (\ v29 ->
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                          (coe
                                                                                                                                             v29)))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                           erased
                                                                                                                                           erased
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Data.Product.Base.du_map_104
                                                                                                                                              (coe
                                                                                                                                                 (\ v29 ->
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                                            (coe
                                                                                                                                                               v4)))
                                                                                                                                                      (coe
                                                                                                                                                         v29)))
                                                                                                                                              (coe
                                                                                                                                                 (\ v29
                                                                                                                                                    v30 ->
                                                                                                                                                    v30)))
                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                                    (coe
                                                                                                                                                       v4))))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                           erased
                                                                                                                                           erased
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                              erased
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                                                                    (coe
                                                                                                                                                       v0)))
                                                                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                    erased
                                                                                                                                                    erased
                                                                                                                                                    (\ v29 ->
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                         (coe
                                                                                                                                                            v29))
                                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                          erased
                                                                                                                                                          erased
                                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                             (coe
                                                                                                                                                                d_utxo_1792
                                                                                                                                                                (coe
                                                                                                                                                                   v3)))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                             (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                             erased
                                                                                                                                                             erased
                                                                                                                                                             erased
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                erased
                                                                                                                                                                erased
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                   erased
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                                                                                         (coe
                                                                                                                                                                            v0))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                                                         (coe
                                                                                                                                                                            v4)))))
                                                                                                                                                             (\ v29 ->
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                  (coe
                                                                                                                                                                     v29)))))))))
                                                                                                                                        (\ v29 ->
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v29)))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                             erased)
                                                                                                          (coe
                                                                                                             addInt
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                   (coe
                                                                                                                      v4)))
                                                                                                             (coe
                                                                                                                d_fees_1794
                                                                                                                (coe
                                                                                                                   v3)))
                                                                                                          (coe
                                                                                                             du_updateCertDeposits_1942
                                                                                                             (coe
                                                                                                                v0)
                                                                                                             (coe
                                                                                                                d_pparams_1780
                                                                                                                (coe
                                                                                                                   v2))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txcerts_2390
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                   (coe
                                                                                                                      v4)))
                                                                                                             (coe
                                                                                                                du_updateProposalDeposits_1956
                                                                                                                (coe
                                                                                                                   v0)
                                                                                                                (coe
                                                                                                                   d_pparams_1780
                                                                                                                   (coe
                                                                                                                      v2))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                      (coe
                                                                                                                         v4)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txprop_2396
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                      (coe
                                                                                                                         v4)))
                                                                                                                (coe
                                                                                                                   d_deposits_1796
                                                                                                                   (coe
                                                                                                                      v3))))
                                                                                                          (coe
                                                                                                             addInt
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txdonation_2398
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                   (coe
                                                                                                                      v4)))
                                                                                                             (coe
                                                                                                                d_donations_1798
                                                                                                                (coe
                                                                                                                   v3))))
                                                                                                       (coe
                                                                                                          C_UTXO'45'inductive_2110
                                                                                                          v11
                                                                                                          v13
                                                                                                          v15
                                                                                                          v21
                                                                                                          v23
                                                                                                          v25
                                                                                                          v27)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.go.completeness
d_completeness_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  T_UTxOState_1782 ->
  T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2234 = erased
-- Ledger.Utxo._.go._.QED
d_QED_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_UTxOEnv_1768 ->
  T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  T_inInterval_1590 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_QED_2268 = erased
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_76041 ::
  T_GeneralizeTel_76047 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436
d_'46'generalizedField'45'tx_76041
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_76043 ::
  T_GeneralizeTel_76047 -> T_UTxOEnv_1768
d_'46'generalizedField'45'Γ_76043 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_76045 ::
  T_GeneralizeTel_76047 -> T_UTxOState_1782
d_'46'generalizedField'45's_76045 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_76047 a0 a1 = ()
data T_GeneralizeTel_76047
  = C_mkGeneralizeTel_76049 MAlonzo.Code.Ledger.Transaction.T_Tx_2436
                            T_UTxOEnv_1768 T_UTxOState_1782
