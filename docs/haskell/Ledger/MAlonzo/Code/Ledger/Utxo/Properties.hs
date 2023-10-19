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

module MAlonzo.Code.Ledger.Utxo.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._≡t⟨⟩_
d__'8801't'10216''10217'__8 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'8801't'10216''10217'__8 = erased
-- _.step-≡tˡ
d_step'45''8801't'737'_12 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_step'45''8801't'737'_12 = erased
-- _.≡-Reasoning._∎
d__'8718'_16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'8718'_16 = erased
-- _.≡-Reasoning.begin_
d_begin__20 ::
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__20 = erased
-- _.≡-Reasoning.step-≡
d_step'45''8801'_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_step'45''8801'_22 = erased
-- _.≡-Reasoning.step-≡˘
d_step'45''8801''728'_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_step'45''8801''728'_24 = erased
-- _._≈_
d__'8776'__50 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__50 = erased
-- _.PParams
d_PParams_328 a0 = ()
-- _.Tx
d_Tx_422 a0 = ()
-- _.UTxO
d_UTxO_434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_UTxO_434 = erased
-- _.coin
d_coin_480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny -> Integer
d_coin_480 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
-- Ledger.Utxo.Properties._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1472 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Properties._.DepositPurpose
d_DepositPurpose_1484 a0 a1 = ()
-- Ledger.Utxo.Properties._.UTxOEnv
d_UTxOEnv_1500 a0 a1 = ()
-- Ledger.Utxo.Properties._.UTxOState
d_UTxOState_1502 a0 a1 = ()
-- Ledger.Utxo.Properties._.balance
d_balance_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1504 v0 ~v1 = du_balance_1504 v0
du_balance_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1504 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1512 (coe v0)
-- Ledger.Utxo.Properties._.cbalance
d_cbalance_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1508 v0 ~v1 = du_cbalance_1508 v0
du_cbalance_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1508 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1518 (coe v0)
-- Ledger.Utxo.Properties._.consumed
d_consumed_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
d_consumed_1520 v0 ~v1 = du_consumed_1520 v0
du_consumed_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
du_consumed_1520 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2004 (coe v0)
-- Ledger.Utxo.Properties._.depositRefunds
d_depositRefunds_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
d_depositRefunds_1522 v0 ~v1 = du_depositRefunds_1522 v0
du_depositRefunds_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
du_depositRefunds_1522 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_1988 (coe v0)
-- Ledger.Utxo.Properties._.newDeposits
d_newDeposits_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
d_newDeposits_1540 v0 ~v1 = du_newDeposits_1540 v0
du_newDeposits_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
du_newDeposits_1540 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_1996 (coe v0)
-- Ledger.Utxo.Properties._.outs
d_outs_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1544 ~v0 ~v1 = du_outs_1544
du_outs_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1544 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1506
-- Ledger.Utxo.Properties._.produced
d_produced_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
d_produced_1546 v0 ~v1 = du_produced_1546 v0
du_produced_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
du_produced_1546 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2012 (coe v0)
-- Ledger.Utxo.Properties._.updateDeposits
d_updateDeposits_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1554 v0 ~v1 = du_updateDeposits_1554 v0
du_updateDeposits_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1554 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1974 (coe v0)
-- Ledger.Utxo.Properties.Computational-UTXO
d_Computational'45'UTXO_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'UTXO_1616 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Computational'45'UTXO_2112 (coe v0)
      (coe v1)
-- Ledger.Utxo.Properties.balance-cong
d_balance'45'cong_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'45'cong_1642 v0 ~v1 v2 v3
  = du_balance'45'cong_1642 v0 v2 v3
du_balance'45'cong_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'45'cong_1642 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_876
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
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
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Ledger.Transaction.du_getValue_2450
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))
      (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v2))
-- Ledger.Utxo.Properties.balance-cong-coin
d_balance'45'cong'45'coin_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45'cong'45'coin_1648 = erased
-- Ledger.Utxo.Properties.∙-homo-Coin
d_'8729''45'homo'45'Coin_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'homo'45'Coin_1660 = erased
-- Ledger.Utxo.Properties.balance-∪
d_balance'45''8746'_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45''8746'_1662 = erased
-- Ledger.Utxo.Properties._._.newTxid⇒disj
d_newTxid'8658'disj_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_newTxid'8658'disj_1718 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_newTxid'8658'disj_1718
du_newTxid'8658'disj_1718 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_newTxid'8658'disj_1718
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_614
-- Ledger.Utxo.Properties._._.consumedCoinEquality
d_consumedCoinEquality_1734 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_consumedCoinEquality_1734 = erased
-- Ledger.Utxo.Properties._._.producedCoinEquality
d_producedCoinEquality_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_producedCoinEquality_1750 = erased
-- Ledger.Utxo.Properties._._.balValueToCoin
d_balValueToCoin_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balValueToCoin_1764 = erased
-- Ledger.Utxo.Properties.posPart-negPart≡x
d_posPart'45'negPart'8801'x_1776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_posPart'45'negPart'8801'x_1776 = erased
-- Ledger.Utxo.Properties._._.mint
d_mint_1818 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
d_mint_1818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_mint_1818 v9
du_mint_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
du_mint_1818 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2386
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v0))
-- Ledger.Utxo.Properties._._.txdonation
d_txdonation_1830 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
d_txdonation_1830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txdonation_1830 v9
du_txdonation_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
du_txdonation_1830 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2398
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v0))
-- Ledger.Utxo.Properties._._.txfee
d_txfee_1832 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
d_txfee_1832 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txfee_1832 v9
du_txfee_1832 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
du_txfee_1832 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2384
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v0))
-- Ledger.Utxo.Properties._._.txid
d_txid_1834 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
d_txid_1834 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txid_1834 v9
du_txid_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
du_txid_1834 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2408
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v0))
-- Ledger.Utxo.Properties._._.txins
d_txins_1836 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1836 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txins_1836 v9
du_txins_1836 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_1836 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2380
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v0))
-- Ledger.Utxo.Properties._.DepositHelpers.pp
d_pp_1858 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pp_1858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12
  = du_pp_1858 v10
du_pp_1858 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pp_1858 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1780 (coe v0)
-- Ledger.Utxo.Properties._.DepositHelpers.dep
d_dep_1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_dep_1860 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
           ~v13
  = du_dep_1860 v0 v6
du_dep_1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_dep_1860 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
      (coe
         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762 (coe v0))
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v2 -> v2)
      (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))
-- Ledger.Utxo.Properties._.DepositHelpers.uDep
d_uDep_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_uDep_1862 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_uDep_1862 v0 v6 v10 v11
du_uDep_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 -> Integer
du_uDep_1862 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
      (coe
         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762 (coe v0))
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v4 -> v4)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
         (coe
            MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1974 (coe v0)
            (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1780 (coe v3))
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2))
            (coe v1)))
-- Ledger.Utxo.Properties._.DepositHelpers.Δdep
d_Δdep_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_Δdep_1864 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_Δdep_1864 v0 v6 v10 v11
du_Δdep_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 -> Integer
du_Δdep_1864 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositsChange_1980 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1780 (coe v3))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2)) (coe v1)
-- Ledger.Utxo.Properties._.DepositHelpers.utxoSt
d_utxoSt_1866 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782
d_utxoSt_1866 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11 ~v12
  = du_utxoSt_1866 v1 v3 v5 v7
du_utxoSt_1866 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782
du_utxoSt_1866 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1800
      (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Utxo.Properties._.DepositHelpers.ref
d_ref_1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_ref_1868 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_ref_1868 v0 v2 v4 v6 v8 v10 v11
du_ref_1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 -> Integer
du_ref_1868 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_1988 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1780 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1800
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.tot
d_tot_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_tot_1870 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_tot_1870 v0 v2 v4 v6 v8 v10 v11
du_tot_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 -> Integer
du_tot_1870 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_newDeposits_1996 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1780 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1800
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.h
d_h_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_h_1872 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal'
d_newBal''_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal''_1878 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal
d_newBal_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal_1882 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda'
d_noMintAda''_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda''_1884 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda
d_noMintAda_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda_1888 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.remDepTot
d_remDepTot_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_remDepTot_1890 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                 ~v13
  = du_remDepTot_1890 v0 v2 v4 v6 v8 v10 v11
du_remDepTot_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 -> Integer
du_remDepTot_1890 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
         (coe
            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762 (coe v0))
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v7 -> v7)
         (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v3)))
      (coe
         du_ref_1868 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6))
-- Ledger.Utxo.Properties._.DepositHelpers.uDep≡
d_uDep'8801'_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uDep'8801'_1892 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change'
d_deposits'45'change''_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change''_1894 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.dep-ref
d_dep'45'ref_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dep'45'ref_1896 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref-tot-0
d_ref'45'tot'45'0_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ref'45'tot'45'0_1906 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref≤dep
d_ref'8804'dep_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_ref'8804'dep_1922 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                    ~v13
  = du_ref'8804'dep_1922 v0 v2 v4 v6 v8 v10 v11
du_ref'8804'dep_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_ref'8804'dep_1922 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
              (coe
                 du_ref_1868 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                 (coe v6))
              (coe (0 :: Integer)) in
    case coe v7 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v8 v9
        -> if coe v8
             then coe
                    seq (coe v9) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             else coe
                    seq (coe v9)
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8243''8658''8804'_6082
                       (let v10
                              = MAlonzo.Code.Data.Integer.Base.d_sign_24
                                  (let v10
                                         = coe
                                             MAlonzo.Code.Data.List.Base.du_foldr_242
                                             (coe
                                                (\ v10 ->
                                                   addInt
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v10))))
                                             (coe (0 :: Integer))
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                (coe
                                                   (\ v10 v11 ->
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v10))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v11)) in
                                                         let v13
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v10) in
                                                         let v14
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v11) in
                                                         case coe v12 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v15 v16
                                                             -> if coe v15
                                                                  then coe
                                                                         seq (coe v16)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                  (coe
                                                                                     eqInt (coe v13)
                                                                                     (coe v14)))))
                                                                  else coe
                                                                         seq (coe v16)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                            (coe v15)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_txcerts_2390
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                  (coe v5)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1956
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v5)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txprop_2396
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v5)))
                                                               (coe v3))))))) in
                                   let v11
                                         = coe
                                             MAlonzo.Code.Data.List.Base.du_foldr_242
                                             (coe
                                                (\ v11 ->
                                                   addInt
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v11))))
                                             (coe (0 :: Integer))
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                (coe
                                                   (\ v11 v12 ->
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                        (let v13
                                                               = coe
                                                                   MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v11))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12)) in
                                                         let v14
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v11) in
                                                         let v15
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v12) in
                                                         case coe v13 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v16 v17
                                                             -> if coe v16
                                                                  then coe
                                                                         seq (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                  (coe
                                                                                     eqInt (coe v14)
                                                                                     (coe v15)))))
                                                                  else coe
                                                                         seq (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                            (coe v16)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v3))))) in
                                   let v12
                                         = ltInt
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_foldr_242
                                                (coe
                                                   (\ v12 ->
                                                      addInt
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v12))))
                                                (coe (0 :: Integer))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                   (coe
                                                      (\ v12 v13 ->
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                           (let v14
                                                                  = coe
                                                                      MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v12))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v13)) in
                                                            let v15
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v12) in
                                                            let v16
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v13) in
                                                            case coe v14 of
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v17 v18
                                                                -> if coe v17
                                                                     then coe
                                                                            seq (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                     (coe
                                                                                        eqInt
                                                                                        (coe v15)
                                                                                        (coe
                                                                                           v16)))))
                                                                     else coe
                                                                            seq (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txcerts_2390
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v5)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1956
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txprop_2396
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                        (coe v5)))
                                                                  (coe v3))))))))
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_foldr_242
                                                (coe
                                                   (\ v12 ->
                                                      addInt
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v12))))
                                                (coe (0 :: Integer))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                   (coe
                                                      (\ v12 v13 ->
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                           (let v14
                                                                  = coe
                                                                      MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v12))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v13)) in
                                                            let v15
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v12) in
                                                            let v16
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v13) in
                                                            case coe v14 of
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v17 v18
                                                                -> if coe v17
                                                                     then coe
                                                                            seq (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                     (coe
                                                                                        eqInt
                                                                                        (coe v15)
                                                                                        (coe
                                                                                           v16)))))
                                                                     else coe
                                                                            seq (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v3)))))) in
                                   if coe v12
                                     then coe
                                            MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                            (coe subInt (coe v11) (coe v10))
                                     else coe subInt (coe v10) (coe v11)) in
                        let v11
                              = MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                  (let v11
                                         = coe
                                             MAlonzo.Code.Data.List.Base.du_foldr_242
                                             (coe
                                                (\ v11 ->
                                                   addInt
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v11))))
                                             (coe (0 :: Integer))
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                (coe
                                                   (\ v11 v12 ->
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                        (let v13
                                                               = coe
                                                                   MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v11))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12)) in
                                                         let v14
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v11) in
                                                         let v15
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v12) in
                                                         case coe v13 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v16 v17
                                                             -> if coe v16
                                                                  then coe
                                                                         seq (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                  (coe
                                                                                     eqInt (coe v14)
                                                                                     (coe v15)))))
                                                                  else coe
                                                                         seq (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                            (coe v16)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_txcerts_2390
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                  (coe v5)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1956
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v5)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txprop_2396
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v5)))
                                                               (coe v3))))))) in
                                   let v12
                                         = coe
                                             MAlonzo.Code.Data.List.Base.du_foldr_242
                                             (coe
                                                (\ v12 ->
                                                   addInt
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v12))))
                                             (coe (0 :: Integer))
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                (coe
                                                   (\ v12 v13 ->
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                        (let v14
                                                               = coe
                                                                   MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v13)) in
                                                         let v15
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v12) in
                                                         let v16
                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v13) in
                                                         case coe v14 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v17 v18
                                                             -> if coe v17
                                                                  then coe
                                                                         seq (coe v18)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                  (coe
                                                                                     eqInt (coe v15)
                                                                                     (coe v16)))))
                                                                  else coe
                                                                         seq (coe v18)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                            (coe v17)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v3))))) in
                                   let v13
                                         = ltInt
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_foldr_242
                                                (coe
                                                   (\ v13 ->
                                                      addInt
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v13))))
                                                (coe (0 :: Integer))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                   (coe
                                                      (\ v13 v14 ->
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                           (let v15
                                                                  = coe
                                                                      MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v13))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v14)) in
                                                            let v16
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v13) in
                                                            let v17
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v14) in
                                                            case coe v15 of
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v18 v19
                                                                -> if coe v18
                                                                     then coe
                                                                            seq (coe v19)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                     (coe
                                                                                        eqInt
                                                                                        (coe v16)
                                                                                        (coe
                                                                                           v17)))))
                                                                     else coe
                                                                            seq (coe v19)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                               (coe v18)
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txcerts_2390
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v5)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1956
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.d_pparams_1780
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txprop_2396
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                        (coe v5)))
                                                                  (coe v3))))))))
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_foldr_242
                                                (coe
                                                   (\ v13 ->
                                                      addInt
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v13))))
                                                (coe (0 :: Integer))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_768
                                                   (coe
                                                      (\ v13 v14 ->
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_30
                                                           (let v15
                                                                  = coe
                                                                      MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1762
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v13))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v14)) in
                                                            let v16
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v13) in
                                                            let v17
                                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v14) in
                                                            case coe v15 of
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v18 v19
                                                                -> if coe v18
                                                                     then coe
                                                                            seq (coe v19)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_154
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.Bool.Properties.d_T'63'_3512
                                                                                     (coe
                                                                                        eqInt
                                                                                        (coe v16)
                                                                                        (coe
                                                                                           v17)))))
                                                                     else coe
                                                                            seq (coe v19)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                               (coe v18)
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v3)))))) in
                                   if coe v13
                                     then coe
                                            MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                            (coe subInt (coe v12) (coe v11))
                                     else coe subInt (coe v11) (coe v12)) in
                        case coe v10 of
                          MAlonzo.Code.Data.Sign.Base.C_'45'_8 -> coe v11
                          _ -> coe (0 :: Integer))
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_328
                          (coe du_uDep_1862 (coe v0) (coe v3) (coe v5) (coe v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change
d_deposits'45'change_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change_1936 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.utxo-ref-prop
d_utxo'45'ref'45'prop_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_utxo'45'ref'45'prop_1938 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.rearrange0
d_rearrange0_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rearrange0_1968 = erased
-- Ledger.Utxo.Properties.UTXO-step
d_UTXO'45'step_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  Maybe MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782
d_UTXO'45'step_1976 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_90
      (coe
         MAlonzo.Code.Ledger.Utxo.d_Computational'45'UTXO_2112 (coe v0)
         (coe v1))
-- Ledger.Utxo.Properties.UTXO-step-computes-UTXO
d_UTXO'45'step'45'computes'45'UTXO_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_UTXO'45'step'45'computes'45'UTXO_1978 v0 v1 v2 v3 v4 ~v5
  = du_UTXO'45'step'45'computes'45'UTXO_1978 v0 v1 v2 v3 v4
du_UTXO'45'step'45'computes'45'UTXO_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_928
du_UTXO'45'step'45'computes'45'UTXO_1978 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'just'8660'STS_108
      (coe
         MAlonzo.Code.Ledger.Utxo.d_Computational'45'UTXO_2112 (coe v0)
         (coe v1))
      (coe v2) (coe v3) (coe v4)
-- Ledger.Utxo.Properties.pov
d_pov_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov_1980 = erased
-- Ledger.Utxo.Properties._.dep-ref
d_dep'45'ref_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dep'45'ref_2070 = erased
-- Ledger.Utxo.Properties._.deposits-change
d_deposits'45'change_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
d_deposits'45'change_2072 = erased
-- Ledger.Utxo.Properties._.deposits-change'
d_deposits'45'change''_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
d_deposits'45'change''_2074 = erased
-- Ledger.Utxo.Properties._.rearrange0
d_rearrange0_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
d_rearrange0_2076 = erased
-- Ledger.Utxo.Properties._.ref-tot-0
d_ref'45'tot'45'0_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ref'45'tot'45'0_2078 = erased
-- Ledger.Utxo.Properties._.ref≤dep
d_ref'8804'dep_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_ref'8804'dep_2080 v0 ~v1 v2 v3 v4 v5 v6 v7 ~v8 ~v9 ~v10 ~v11 ~v12
                    ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20
  = du_ref'8804'dep_2080 v0 v2 v3 v4 v5 v6 v7
du_ref'8804'dep_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_ref'8804'dep_2080 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_ref'8804'dep_1922 (coe v0) (coe v2) (coe v4) (coe v5) (coe v6)
      (coe v1) (coe v3)
-- Ledger.Utxo.Properties._.uDep≡
d_uDep'8801'_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uDep'8801'_2082 = erased
-- Ledger.Utxo.Properties._.utxo-ref-prop
d_utxo'45'ref'45'prop_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1590 ->
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
d_utxo'45'ref'45'prop_2084 = erased
