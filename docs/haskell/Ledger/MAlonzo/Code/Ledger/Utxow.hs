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

module MAlonzo.Code.Ledger.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Credential
d_Credential_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_86 = erased
-- _.THash
d_THash_252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_THash_252 = erased
-- _.ScriptHash
d_ScriptHash_348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_ScriptHash_348 = erased
-- _.Tx
d_Tx_386 a0 = ()
-- _.TxBody
d_TxBody_388 a0 = ()
-- _.UTxO
d_UTxO_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 -> ()
d_UTxO_398 = erased
-- _.isSigned
d_isSigned_512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_512 = erased
-- _.validP1Script
d_validP1Script_608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_608 = erased
-- _.TxWitnesses.scriptsP1
d_scriptsP1_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416 -> [AgdaAny]
d_scriptsP1_1372 ~v0 = du_scriptsP1_1372
du_scriptsP1_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416 -> [AgdaAny]
du_scriptsP1_1372
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2434
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1436 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1464 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1466 a0 a1 = ()
-- Ledger.Utxow.getVKeys
d_getVKeys_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getVKeys_1576 ~v0 ~v1 = du_getVKeys_1576
du_getVKeys_1576 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getVKeys_1576
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
-- Ledger.Utxow.getScripts
d_getScripts_1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getScripts_1578 ~v0 ~v1 = du_getScripts_1578
du_getScripts_1578 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getScripts_1578
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_credsNeeded_1580 v0 ~v1 v2 v3 v4
  = du_credsNeeded_1580 v0 v2 v3 v4
du_credsNeeded_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_credsNeeded_1580 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v4 ->
            coe
              MAlonzo.Code.Ledger.Address.du_payCred_90
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__570
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
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_462 (coe v2))
            (coe MAlonzo.Code.Ledger.Transaction.d_txins_2380 (coe v3))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            MAlonzo.Code.Ledger.Deleg.d_cwitness_832
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_410
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2390 (coe v3))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v4 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_credential_686 (coe v4))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txvote_2394 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_558
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (let v4
                      = coe
                          MAlonzo.Code.Data.Maybe.Base.du_map_68
                          (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v1 in
                \ v5 -> v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2396 (coe v3))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
d_witsVKeyNeeded_1630 v0 ~v1 v2 = du_witsVKeyNeeded_1630 v0 v2
du_witsVKeyNeeded_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
du_witsVKeyNeeded_1630 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v2 v3 -> coe du_getVKeys_1576))
      (coe du_credsNeeded_1580 (coe v0) (coe v1))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
d_scriptsNeeded_1634 v0 ~v1 v2 = du_scriptsNeeded_1634 v0 v2
du_scriptsNeeded_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
du_scriptsNeeded_1634 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v2 v3 -> coe du_getScripts_1578))
      (coe du_credsNeeded_1580 (coe v0) (coe v1))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1638 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOW'10632'__1638
  = C_UTXOW'45'inductive_1736 (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny)
                              (AgdaAny ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny)
                              (AgdaAny ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34)
                              MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                              MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1932
-- Ledger.Utxow._.txAD
d_txAD_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> Maybe AgdaAny
d_txAD_1650 ~v0 ~v1 v2 = du_txAD_1650 v2
du_txAD_1650 :: T_GeneralizeTel_7837 -> Maybe AgdaAny
du_txAD_1650 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2448
      (coe d_'46'generalizedField'45'tx_7829 v0)
-- Ledger.Utxow._.body
d_body_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
d_body_1652 ~v0 ~v1 v2 = du_body_1652 v2
du_body_1652 ::
  T_GeneralizeTel_7837 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
du_body_1652 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2444
      (coe d_'46'generalizedField'45'tx_7829 v0)
-- Ledger.Utxow._.wits
d_wits_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416
d_wits_1654 ~v0 ~v1 v2 = du_wits_1654 v2
du_wits_1654 ::
  T_GeneralizeTel_7837 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416
du_wits_1654 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2446
      (coe d_'46'generalizedField'45'tx_7829 v0)
-- Ledger.Utxow._.txADhash
d_txADhash_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> Maybe AgdaAny
d_txADhash_1668 ~v0 ~v1 v2 = du_txADhash_1668 v2
du_txADhash_1668 :: T_GeneralizeTel_7837 -> Maybe AgdaAny
du_txADhash_1668 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2402
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_7829 v0))
-- Ledger.Utxow._.txid
d_txid_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> AgdaAny
d_txid_1676 ~v0 ~v1 v2 = du_txid_1676 v2
du_txid_1676 :: T_GeneralizeTel_7837 -> AgdaAny
du_txid_1676 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2408
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_7829 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1688 ~v0 ~v1 v2 = du_txvldt_1688 v2
du_txvldt_1688 ::
  T_GeneralizeTel_7837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_1688 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_7829 v0))
-- Ledger.Utxow._.scripts
d_scripts_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1696 ~v0 ~v1 v2 = du_scripts_1696 v2
du_scripts_1696 ::
  T_GeneralizeTel_7837 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_1696 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2428
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2446
         (coe d_'46'generalizedField'45'tx_7829 v0))
-- Ledger.Utxow._.scriptsP1
d_scriptsP1_1698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> [AgdaAny]
d_scriptsP1_1698 ~v0 ~v1 v2 = du_scriptsP1_1698 v2
du_scriptsP1_1698 :: T_GeneralizeTel_7837 -> [AgdaAny]
du_scriptsP1_1698 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2434
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2446
         (coe d_'46'generalizedField'45'tx_7829 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_1704 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1704 ~v0 ~v1 v2 = du_vkSigs_1704 v2
du_vkSigs_1704 ::
  T_GeneralizeTel_7837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_1704 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2426
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2446
         (coe d_'46'generalizedField'45'tx_7829 v0))
-- Ledger.Utxow._.utxo
d_utxo_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1714 ~v0 ~v1 v2 = du_utxo_1714 v2
du_utxo_1714 ::
  T_GeneralizeTel_7837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1714 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1792
      (coe d_'46'generalizedField'45's_7831 v0)
-- Ledger.Utxow._.ppolicy
d_ppolicy_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1436 ->
  T_GeneralizeTel_7837 -> Maybe AgdaAny
d_ppolicy_1720 ~v0 ~v1 v2 = du_ppolicy_1720 v2
du_ppolicy_1720 :: T_GeneralizeTel_7837 -> Maybe AgdaAny
du_ppolicy_1720 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_ppolicy_1778
      (coe d_'46'generalizedField'45'Γ_7833 v0)
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_7829 ::
  T_GeneralizeTel_7837 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436
d_'46'generalizedField'45'tx_7829 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_7831 ::
  T_GeneralizeTel_7837 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782
d_'46'generalizedField'45's_7831 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_7833 ::
  T_GeneralizeTel_7837 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768
d_'46'generalizedField'45'Γ_7833 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_7835 ::
  T_GeneralizeTel_7837 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782
d_'46'generalizedField'45's''_7835
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_7837 a0 a1 = ()
data T_GeneralizeTel_7837
  = C_mkGeneralizeTel_7839 MAlonzo.Code.Ledger.Transaction.T_Tx_2436
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782
                           MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1768
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1782
