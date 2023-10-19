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

module MAlonzo.Code.Ledger.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Transaction.Tag
d_Tag_4 = ()
data T_Tag_4 = C_Spend_6 | C_Mint_8 | C_Cert_10 | C_Rewrd_12
-- Ledger.Transaction.DecEq-Tag
d_DecEq'45'Tag_14 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Tag_14
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_6
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Mint_8
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Cert_10
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Rewrd_12
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Transaction.TransactionStructure
d_TransactionStructure_16 = ()
data T_TransactionStructure_16
  = C_TransactionStructure'46'constructor_10515 MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                                MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_148
                                                MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_414
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Transaction._.Ser
d_Ser_82 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148 -> ()
d_Ser_82 = erased
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_106 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction._.ScriptStructure
d_ScriptStructure_364 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_984 :: T_TransactionStructure_16 -> ()
d_Ix_984 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_986 :: T_TransactionStructure_16 -> ()
d_TxId_986 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_988 :: T_TransactionStructure_16 -> ()
d_AuxiliaryData_988 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_990 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ix_990 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_992 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'TxId_992 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_994 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_994 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_998 :: T_TransactionStructure_16 -> ()
d_THash_998 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1000 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1000 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_adHashingScheme_994 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1002 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1002 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_adHashingScheme_994 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1004 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1004 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_adHashingScheme_994 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1006 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236
d_globalConstants_1006 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1010 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Netw_1010 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
      (coe d_globalConstants_1006 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1012 :: T_TransactionStructure_16 -> ()
d_Network_1012 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1014 :: T_TransactionStructure_16 -> AgdaAny
d_NetworkId_1014 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_NetworkId_264
      (coe d_globalConstants_1006 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1016 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_88
d_NonZero'45'SlotsPerEpoch'7580'_1016 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_258
      (coe d_globalConstants_1006 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1018 :: T_TransactionStructure_16 -> Integer
d_Quorum_1018 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_Quorum_262
      (coe d_globalConstants_1006 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1020 :: T_TransactionStructure_16 -> Integer
d_SlotsPerEpoch'7580'_1020 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256
      (coe d_globalConstants_1006 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1022 ::
  T_TransactionStructure_16 -> Integer
d_StabilityWindow'7580'_1022 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_StabilityWindow'7580'_260
      (coe d_globalConstants_1006 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1024 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_ℕEpochStructure_1024 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ℕEpochStructure_266
      (coe d_globalConstants_1006 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1026 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148
d_crypto_1026 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1030 ::
  T_TransactionStructure_16 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'isSigned_1030 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_146
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1032 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ScriptHash_1032 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
      (coe d_crypto_1026 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1034 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ser_1034 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_138
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1036 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Sig_1036 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_136
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1038 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1038 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1040 :: T_TransactionStructure_16 -> ()
d_THash_1040 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1042 :: T_TransactionStructure_16 -> ()
d_KeyPair_1042 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1044 :: T_TransactionStructure_16 -> ()
d_SKey_1044 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1046 :: T_TransactionStructure_16 -> ()
d_ScriptHash_1046 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1048 :: T_TransactionStructure_16 -> ()
d_Ser_1048 = erased
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1050 :: T_TransactionStructure_16 -> ()
d_Sig_1050 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1052 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1052 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1054 :: T_TransactionStructure_16 -> ()
d_VKey_1054 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1056 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1056 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1058 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1058 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1060 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1060 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_134
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.Transaction.TransactionStructure._.isSigned?
d_isSigned'63'_1062 ::
  T_TransactionStructure_16 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isSigned'63'_1062 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_isSigned'63'_122
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1064 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1064 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe d_crypto_1026 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1066 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1066 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe d_crypto_1026 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1068 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1068 v0
  = let v1 = d_crypto_1026 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_sign_108
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1072 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1076 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1076 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1078 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1078 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1080 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1080 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1082 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_1082 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1084 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_1084 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1086 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_1086 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1088 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1090 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1092 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_1094 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_MemoryEstimate_1094 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Carrier
d_Carrier_1096 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Carrier_1096 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1098 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1098 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1100 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1100 ~v0 = du_addValue_1100
du_addValue_1100 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1100
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_236
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1102 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_1102 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1104 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_coinIsMonoidHomomorphism_1104 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1106 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_1106 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1108 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1108 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1110 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [AgdaAny]
d_policies_1110 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1112 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1112 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1114 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1114 v0
  = let v1
          = MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.refl
d_refl_1116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny
d_refl_1116 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_444
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_610
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_660
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                        (coe v0)))))))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_1118 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_1120 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1122 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1122 ~v0 = du_sum'7515'_1122
du_sum'7515'_1122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1122
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_238
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_1124 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1128 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1128 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1130 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1134 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1136 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1140 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_1146 ~v0 = du_isMagmaIsomorphism_1146
du_isMagmaIsomorphism_1146 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_1146 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_352
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1148 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1148 v2
du_isMagmaMonomorphism_1148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_1152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1156 ~v0 ~v1 v2 = du_isRelIsomorphism_1156 v2
du_isRelIsomorphism_1156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_144
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_352
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1158 ~v0 ~v1 v2 = du_isRelMonomorphism_1158 v2
du_isRelMonomorphism_1158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1158 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_114
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
         (coe v1))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1162 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1164 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1168 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1174 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1174 ~v0 = du_isMagmaMonomorphism_1174
du_isMagmaMonomorphism_1174 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1174 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1180 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1180 ~v0 ~v1 v2 = du_isRelMonomorphism_1180 v2
du_isRelMonomorphism_1180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_114
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1182 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1184 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1188 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Addr_1188 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1190 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1192 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1194 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_1194 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1196 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BaseAddr_1196 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1196 v1 v2 v3
du_DecEq'45'BaseAddr_1196 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BaseAddr_1196 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1198 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BootstrapAddr_1198 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1198 v1 v2 v3
du_DecEq'45'BootstrapAddr_1198 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BootstrapAddr_1198 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1200 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'RwdAddr_1200 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1200 v1 v2 v3
du_DecEq'45'RwdAddr_1200 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'RwdAddr_1200 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1202 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1206 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptAddr_1206 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1208 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBaseAddr_1208 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1210 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBootstrapAddr_1210 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1212 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyAddr_1212 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1214 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBaseAddr_1214 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1216 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBootstrapAddr_1216 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1220 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_1220 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1220
du_getScriptHash_1220 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_1220
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_134
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1222 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isScript?
d_isScript'63'_1224 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScript'63'_1224 ~v0 ~v1 ~v2 ~v3 = du_isScript'63'_1224
du_isScript'63'_1224 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScript'63'_1224
  = coe MAlonzo.Code.Ledger.Address.du_isScript'63'_120
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1226 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1226 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptAddr?
d_isScriptAddr'63'_1228 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptAddr'63'_1228 ~v0 ~v1 ~v2 ~v3 = du_isScriptAddr'63'_1228
du_isScriptAddr'63'_1228 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptAddr'63'_1228
  = coe MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1230 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_1230 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr?
d_isScriptRwdAddr'63'_1232 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptRwdAddr'63'_1232 ~v0 ~v1 ~v2 ~v3
  = du_isScriptRwdAddr'63'_1232
du_isScriptRwdAddr'63'_1232 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptRwdAddr'63'_1232
  = coe MAlonzo.Code.Ledger.Address.du_isScriptRwdAddr'63'_130
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1234 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isVKey?
d_isVKey'63'_1236 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKey'63'_1236 ~v0 ~v1 ~v2 ~v3 = du_isVKey'63'_1236
du_isVKey'63'_1236 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKey'63'_1236
  = coe MAlonzo.Code.Ledger.Address.du_isVKey'63'_110
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1238 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1238 = erased
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr?
d_isVKeyAddr'63'_1240 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKeyAddr'63'_1240 ~v0 ~v1 ~v2 ~v3 = du_isVKeyAddr'63'_1240
du_isVKeyAddr'63'_1240 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKeyAddr'63'_1240
  = coe MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1242 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1242 ~v0 ~v1 ~v2 ~v3 = du_netId_1242
du_netId_1242 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1242 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1244 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_1244 ~v0 ~v1 ~v2 ~v3 = du_payCred_1244
du_payCred_1244 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_1244 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1248 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_1248 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1250 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1250 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1252 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1252 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1256 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1256 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1258 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_1258 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1260 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1260 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1264 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_1264 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1266 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1266 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1276 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_epochStructure_1276 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1280 ::
  T_TransactionStructure_16 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1280 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1282 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Epoch_1282 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1284 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Slot_1284 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Slot_36
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1286 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
d_DecPo'45'Slot_1286 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1288 :: T_TransactionStructure_16 -> ()
d_Epoch_1288 = erased
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1290 :: T_TransactionStructure_16 -> ()
d_Slot_1290 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1292 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1986
d_Slot'691'_1292 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_Slot'691'_26
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1294 :: T_TransactionStructure_16 -> AgdaAny
d_StabilityWindow_1294 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_StabilityWindow_42
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1296 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1296 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addEpoch_230
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1298 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1298 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addSlot_228
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1300 :: T_TransactionStructure_16 -> AgdaAny -> AgdaAny
d_epoch_1300 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epoch_38
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1302 :: T_TransactionStructure_16 -> AgdaAny -> AgdaAny
d_firstSlot_1302 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1304 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1304 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_preoEpoch_46
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1306 :: T_TransactionStructure_16 -> AgdaAny -> AgdaAny
d_suc'7497'_1306 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_suc'7497'_44
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1308 :: T_TransactionStructure_16 -> Integer -> AgdaAny
d_ℕtoEpoch_1308 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ℕtoEpoch_216
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1312 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> Bool) ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Timelock_1312 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.du_DecEq'45'Timelock_498
      (coe d_crypto_1026 (coe v0)) (coe d_epochStructure_1276 (coe v0))
      v2
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1314 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1316 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1330 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1332 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1346 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelockᵇ
d_evalTimelock'7495'_1348 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> Bool) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_386 -> Bool
d_evalTimelock'7495'_1348 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Script.du_evalTimelock'7495'_452
      (coe d_crypto_1026 (coe v0)) v2 v3 v4 v5
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-ValidP1Script
d_Dec'45'ValidP1Script_1352 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_1352 ~v0 = du_Dec'45'ValidP1Script_1352
du_Dec'45'ValidP1Script_1352 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'ValidP1Script_1352
  = coe MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1354 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_1354 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1356 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1356 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1358 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1358 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1360 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1360 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script?
d_validP1Script'63'_1362 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_1362 v0
  = coe MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._∙_
d__'8729'__1366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1366 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≈_
d__'8776'__1368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1368 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1370 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_CostModel_1372 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1374 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_T_1374 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_THash_1376 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1378 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1380 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Datum_1380 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_1382 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_1384 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_1386 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_1388 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_1390 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1392 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1394 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_1396 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Carrier
d_Carrier_1398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Carrier_1398 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1400 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1402 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_LangDepView_1402 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1404 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Language_1404 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1406 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_PlutusScript_1406 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1408 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Prices_1408 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1410 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Redeemer_1410 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1412 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1412 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1414 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1414 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1416 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny
d_language_1416 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_272 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.refl
d_refl_1418 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny
d_refl_1418 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_444
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_610
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_660
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe
                        MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
                        (coe v0)))))))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1420 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  () -> AgdaAny -> AgdaAny
d_toData_1420 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_276 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1422 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1422 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript?
d_validPlutusScript'63'_1424 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_1424 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ε
d_ε_1426 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> AgdaAny
d_ε_1426 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._∙_
d__'8729'__1430 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1430 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≈_
d__'8776'__1432 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1432 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1434 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1434 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1436 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_CostModel_1436 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1438 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_T_1438 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_THash_1440 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1442 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1442 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1444 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Datum_1444 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-ValidP1Script
d_Dec'45'ValidP1Script_1446 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_1446 ~v0 v1
  = du_Dec'45'ValidP1Script_1446 v1
du_Dec'45'ValidP1Script_1446 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'ValidP1Script_1446 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1448 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_1448 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_1450 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1452 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_1452 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1454 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_1454 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1456 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_1456 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1458 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_1458 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1460 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1460 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1462 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1462 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1464 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_1464 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Carrier
d_Carrier_1466 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Carrier_1466 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1468 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1468 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1470 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1470 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1472 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1472 ~v0 = du_Hashable'45'Script_1472
du_Hashable'45'Script_1472 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1472
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_LangDepView_1474 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1476 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Language_1476 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1478 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_P1Script_1478 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1480 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_PlutusScript_1480 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1482 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Prices_1482 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1484 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Redeemer_1484 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1486 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Script_1486 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1488 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1490 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1490 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1492 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1492 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1494 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny
d_language_1494 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1496 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1496 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1498 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_1498 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.refl
d_refl_1500 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny
d_refl_1500 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_444
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_610
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_660
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe
                        MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
                        (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))))))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1502 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () -> AgdaAny -> AgdaAny
d_toData_1502 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1504 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1504 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script?
d_validP1Script'63'_1506 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_1506 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1508 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1508 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript?
d_validPlutusScript'63'_1510 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_1510 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ε
d_ε_1512 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> AgdaAny
d_ε_1512 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1542 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
d_scriptStructure_1542 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__1546 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1546 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_1542 (coe v0))))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__1548 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1548 = erased
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1550 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1550 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1552 :: T_TransactionStructure_16 -> ()
d_CostModel_1552 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1554 :: T_TransactionStructure_16 -> ()
d_T_1554 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1556 :: T_TransactionStructure_16 -> ()
d_THash_1556 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1558 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1558 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1560 :: T_TransactionStructure_16 -> ()
d_Datum_1560 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-ValidP1Script
d_Dec'45'ValidP1Script_1562 ::
  T_TransactionStructure_16 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_1562 v0
  = let v1 = d_scriptStructure_1542 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v1))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1564 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_1564 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1566 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_1566 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1568 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_1568 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1570 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_1570 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1572 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_1572 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1574 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_1574 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1576 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1576 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_1542 (coe v0))) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1578 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1578 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_1542 (coe v0))) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1580 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_1580 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Carrier
d_Carrier_1582 :: T_TransactionStructure_16 -> ()
d_Carrier_1582 = erased
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1584 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1584 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1586 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1586 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1588 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1588 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
      (coe d_scriptStructure_1542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1590 :: T_TransactionStructure_16 -> ()
d_LangDepView_1590 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1592 :: T_TransactionStructure_16 -> ()
d_Language_1592 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1594 :: T_TransactionStructure_16 -> ()
d_P1Script_1594 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1596 :: T_TransactionStructure_16 -> ()
d_PlutusScript_1596 = erased
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1598 :: T_TransactionStructure_16 -> ()
d_Prices_1598 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1600 :: T_TransactionStructure_16 -> ()
d_Redeemer_1600 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1602 :: T_TransactionStructure_16 -> ()
d_Script_1602 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1604 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1604 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_1542 (coe v0))) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1606 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1606 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_1542 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1608 ::
  T_TransactionStructure_16 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1608 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
      (coe d_scriptStructure_1542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1610 :: T_TransactionStructure_16 -> AgdaAny -> AgdaAny
d_language_1610 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1612 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1612 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_292
      (coe d_scriptStructure_1542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1614 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_1614 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_294
      (coe d_scriptStructure_1542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.refl
d_refl_1616 :: T_TransactionStructure_16 -> AgdaAny -> AgdaAny
d_refl_1616 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_444
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_610
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_660
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe
                        MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_294
                           (coe d_scriptStructure_1542 (coe v0)))))))))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1618 ::
  T_TransactionStructure_16 -> () -> AgdaAny -> AgdaAny
d_toData_1618 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1620 ::
  T_TransactionStructure_16 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1620 = erased
-- Ledger.Transaction.TransactionStructure._.validP1Script?
d_validP1Script'63'_1622 ::
  T_TransactionStructure_16 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_1622 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1624 ::
  T_TransactionStructure_16 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1624 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript?
d_validPlutusScript'63'_1626 ::
  T_TransactionStructure_16 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_1626 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1542 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_1628 :: T_TransactionStructure_16 -> AgdaAny
d_ε_1628 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_1542 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1632 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1634 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DrepThresholds_1634 ~v0
  = du_DecEq'45'DrepThresholds_1634
du_DecEq'45'DrepThresholds_1634 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DrepThresholds_1634
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_378
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1636 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PParams_1636 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
      (coe d_epochStructure_1276 (coe v0))
      (coe d_scriptStructure_1542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1638 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PoolThresholds_1638 ~v0
  = du_DecEq'45'PoolThresholds_1638
du_DecEq'45'PoolThresholds_1638 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'PoolThresholds_1638
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_380
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1640 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1644 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1650 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1652 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1654 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1656 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1658 :: T_TransactionStructure_16 -> ()
d_ProtVer_1658 = erased
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1662 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> ()
d_paramsWellFormed_1662 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1666 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_130 -> Integer
d_reserves_1666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_138 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1668 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_130 -> Integer
d_treasury_1668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_136 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1672 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1672 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_172 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1674 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1674 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_174 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1676 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1676 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_176 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1678 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1678 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_178 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1680 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1680 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1682 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1682 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1684 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1684 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_184 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1686 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1686 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1688 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1688 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1690 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1690 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1694 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1694 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1696 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1696 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1698 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_1698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_470 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1700 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_THash_1700 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1702 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_UpdateT_1702 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_1704 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1704 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1706 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_1706 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_1708 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1710 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_1710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1712 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> AgdaAny -> Bool
d_ppdWellFormed_1712 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1714 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1714 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_1716 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1716 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_402
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_1730 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_Emax_1730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_282 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_1732 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_a_1732 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_274 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_1734 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_b_1734 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_276 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1736 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMaxTermLength_1736 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_300 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_1738 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMinSize_1738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_1740 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_coinsPerUTxOWord_1740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercent
d_collateralPercent_1742 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_collateralPercent_1742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_collateralPercent_284 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_1744 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_costmdls_1744 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_304 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_1746 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_drepActivity_1746 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_296 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_1748 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_drepDeposit_1748 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_1750 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150
d_drepThresholds_1750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_286 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_1752 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionDeposit_1752 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_1754 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionLifetime_1754 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_290 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1756 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxBlockExUnits_1756 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_1758 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxBlockSize_1758 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1760 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxCollateralInputs_1760 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1762 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxHeaderSize_1762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1764 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxTxExUnits_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_1766 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxTxSize_1766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_1768 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxValSize_1768 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_1770 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minUTxOValue_1770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_278 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minimumAVS
d_minimumAVS_1772 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minimumAVS_1772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_1774 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_poolDeposit_1774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_280 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_1776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192
d_poolThresholds_1776 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_288 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_1778 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_prices_1778 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_1780 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1780 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_272 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_1784 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> ()
d_UpdateT_1784 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_1786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_404 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1788 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_1788 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1790 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1790 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_1792 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_402 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_1796 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1796 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_1798 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1798 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_1800 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1800 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_1802 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1802 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_208 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_1804 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_414
d_govParams_1804 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1808 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1808 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
         (coe d_govParams_1804 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1810 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1810 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
         (coe d_govParams_1804 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1812 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_1812 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_470
      (coe d_govParams_1804 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1814 :: T_TransactionStructure_16 -> ()
d_THash_1814 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_1816 :: T_TransactionStructure_16 -> ()
d_UpdateT_1816 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1818 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1818 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
         (coe d_govParams_1804 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_1820 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_1820 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_1804 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_1822 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1822 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
      (coe d_govParams_1804 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_1824 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_1824 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_444
      (coe d_govParams_1804 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_1826 ::
  T_TransactionStructure_16 -> AgdaAny -> Bool
d_ppdWellFormed_1826 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_1804 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1828 ::
  T_TransactionStructure_16 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1828 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_1804 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_1830 ::
  T_TransactionStructure_16 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1830 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_402
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_1804 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_1832 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_1832 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__1836 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1836 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe d_tokenAlgebra_1832 (coe v0)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__1838 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1838 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__1840 ::
  T_TransactionStructure_16 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1840 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_1842 :: T_TransactionStructure_16 -> ()
d_AssetName_1842 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_1844 ::
  T_TransactionStructure_16 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_1844 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_1846 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_1846 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1848 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1850 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1852 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1854 :: T_TransactionStructure_16 -> ()
d_MemoryEstimate_1854 = erased
-- Ledger.Transaction.TransactionStructure._.Carrier
d_Carrier_1856 :: T_TransactionStructure_16 -> ()
d_Carrier_1856 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1858 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1858 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_1860 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1860 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_236
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_1862 :: T_TransactionStructure_16 -> AgdaAny -> Integer
d_coin_1862 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1864 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_coinIsMonoidHomomorphism_1864 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_1866 :: T_TransactionStructure_16 -> Integer -> AgdaAny
d_inject_1866 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_1868 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1868 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe d_tokenAlgebra_1832 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_1870 ::
  T_TransactionStructure_16 -> AgdaAny -> [AgdaAny]
d_policies_1870 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_1872 ::
  T_TransactionStructure_16 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1872 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_1874 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1874 v0
  = let v1
          = MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
              (coe d_tokenAlgebra_1832 (coe v0)) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1))
-- Ledger.Transaction.TransactionStructure._.refl
d_refl_1876 :: T_TransactionStructure_16 -> AgdaAny -> AgdaAny
d_refl_1876 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_444
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_610
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_660
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                        (coe d_tokenAlgebra_1832 (coe v0))))))))
-- Ledger.Transaction.TransactionStructure._.size
d_size_1878 :: T_TransactionStructure_16 -> AgdaAny -> Integer
d_size_1878 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_216
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_1880 :: T_TransactionStructure_16 -> AgdaAny
d_specialAsset_1880 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_222
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_1882 ::
  T_TransactionStructure_16 -> [AgdaAny] -> AgdaAny
d_sum'7515'_1882 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_238
      (coe d_tokenAlgebra_1832 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_1884 :: T_TransactionStructure_16 -> AgdaAny
d_ε_1884 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe d_tokenAlgebra_1832 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_1888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1888 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1890 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1892 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1892 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1894 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_1896 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1896 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_1900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1900 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_1902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1902 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1904 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1904 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1906 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_1906 ~v0 = du_isMagmaIsomorphism_1906
du_isMagmaIsomorphism_1906 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_1906 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_352
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1908 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1908 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1908 v2
du_isMagmaMonomorphism_1908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1908 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1910 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1912 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_1912 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1914 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1914 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1916 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1916 ~v0 ~v1 v2 = du_isRelIsomorphism_1916 v2
du_isRelIsomorphism_1916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1916 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_144
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_352
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1918 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1918 ~v0 ~v1 v2 = du_isRelMonomorphism_1918 v2
du_isRelMonomorphism_1918 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1918 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_114
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
         (coe v1))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_1920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1920 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1922 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_1924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1924 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_1928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1928 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_1930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1930 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1932 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1934 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1934 ~v0 = du_isMagmaMonomorphism_1934
du_isMagmaMonomorphism_1934 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1934 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1936 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1936 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1938 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1940 ::
  T_TransactionStructure_16 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1940 ~v0 ~v1 v2 = du_isRelMonomorphism_1940 v2
du_isRelMonomorphism_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_114
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1942 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1944 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_1946 :: T_TransactionStructure_16 -> AgdaAny -> AgdaAny
d_txidBytes_1946 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_1948 :: T_TransactionStructure_16 -> AgdaAny
d_networkId_1948 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_10515 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_1950 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4
d_govStructure_1950 v0
  = coe
      MAlonzo.Code.Ledger.GovStructure.C_GovStructure'46'constructor_2341
      (d_DecEq'45'TxId_992 (coe v0))
      (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
         (coe d_globalConstants_1006 (coe v0)))
      (d_crypto_1026 (coe v0)) (d_epochStructure_1276 (coe v0))
      (d_scriptStructure_1542 (coe v0)) (d_govParams_1804 (coe v0))
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1954 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.2ℚ
d_2ℚ_1956 ::
  T_TransactionStructure_16 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_2ℚ_1956 ~v0 = du_2ℚ_1956
du_2ℚ_1956 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_2ℚ_1956 = coe MAlonzo.Code.Ledger.GovernanceActions.du_2ℚ_464
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_1958 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Computational-ENACT
d_Computational'45'ENACT_1964 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'ENACT_1964 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_Computational'45'ENACT_830
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_1968 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'GovRole_1968 ~v0 = du_DecEq'45'GovRole_1968
du_DecEq'45'GovRole_1968 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'GovRole_1968
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_786
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_1970 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'VDeleg_1970 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_790
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_1972 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Vote_1972 ~v0 = du_DecEq'45'Vote_1972
du_DecEq'45'Vote_1972 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'Vote_1972
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_788
-- Ledger.Transaction.TransactionStructure._.EnactEnv
d_EnactEnv_1988 a0 = ()
-- Ledger.Transaction.TransactionStructure._.EnactState
d_EnactState_1990 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_1992 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_1994 :: T_TransactionStructure_16 -> ()
d_GovActionID_1994 = erased
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_1996 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_1998 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_2000 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_2002 :: T_TransactionStructure_16 -> () -> ()
d_HashProtected_2002 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_2006 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 -> ()
d_NeedsHash_2006 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_2020 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Vote
d_Vote_2022 a0 = ()
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2028 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 -> Bool
d_actionWellFormed_2028 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed_514
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.canVote
d_canVote_2030 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472 -> ()
d_canVote_2030 = erased
-- Ledger.Transaction.TransactionStructure._.ccCreds
d_ccCreds_2032 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_2032 ~v0 = du_ccCreds_2032
du_ccCreds_2032 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_2032
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_ccCreds_752
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2036 ::
  T_TransactionStructure_16 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2036 ~v0 = du_maximum_2036
du_maximum_2036 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2036
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_466
-- Ledger.Transaction.TransactionStructure._.threshold
d_threshold_2040 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_2040 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_threshold_530
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2062 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 -> AgdaAny
d_hash_2062 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_496 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2064 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2064 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_494 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactEnv.epoch
d_epoch_2068 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactEnv_714 -> AgdaAny
d_epoch_2068 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_epoch_726 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactEnv.gid
d_gid_2070 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactEnv_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2070 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_722 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactEnv.treasury
d_treasury_2072 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactEnv_714 -> Integer
d_treasury_2072 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_treasury_724 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.cc
d_cc_2076 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2076 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_cc_742 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.constitution
d_constitution_2078 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2078 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_constitution_744 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.pparams
d_pparams_2080 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2080 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_pparams_748 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.pv
d_pv_2082 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2082 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_pv_746 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.withdrawals
d_withdrawals_2084 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2084 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_withdrawals_750 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2104 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498
d_action_2104 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_706 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2106 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
d_anchor_2106 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_712 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2108 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 -> Integer
d_deposit_2108 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_710 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2110 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 -> AgdaAny
d_prevAction_2110 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_708 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2112 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_2112 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_704 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2124 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
d_anchor_2124 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_690 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.credential
d_credential_2126 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_credential_2126 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_credential_686 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2128 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2128 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_682 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.role
d_role_2130 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472
d_role_2130 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_role_684 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2132 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_662
d_vote_2132 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_688 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2152 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2154 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_682 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_738 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_738 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2154 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2156 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2158 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2160 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2162 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2172 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2174 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Computational-CERT
d_Computational'45'CERT_2176 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'CERT_2176 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_Computational'45'CERT_1320
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Computational-CERTBASE
d_Computational'45'CERTBASE_2178 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'CERTBASE_2178 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_Computational'45'CERTBASE_1660
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Computational-CERTS
d_Computational'45'CERTS_2180 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'CERTS_2180 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_Computational'45'CERTS_1680
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Computational-DELEG
d_Computational'45'DELEG_2182 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'DELEG_2182 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_Computational'45'DELEG_1086
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Computational-GOVCERT
d_Computational'45'GOVCERT_2184 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'GOVCERT_2184 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_Computational'45'GOVCERT_1148
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Computational-POOL
d_Computational'45'POOL_2186 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'POOL_2186 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_Computational'45'POOL_1124
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2188 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2192 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2194 :: T_TransactionStructure_16 -> ()
d_DelegEnv_2194 = erased
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2202 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2204 :: T_TransactionStructure_16 -> ()
d_GovCertEnv_2204 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2210 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2212 :: T_TransactionStructure_16 -> ()
d_PoolEnv_2212 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2214 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2218 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_2218 = coe MAlonzo.Code.Ledger.Deleg.d_cwitness_832
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2224 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_2224 ~v0 = du_getDRepVote_2224
du_getDRepVote_2224 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_2224
  = coe MAlonzo.Code.Ledger.Deleg.du_getDRepVote_854
-- Ledger.Transaction.TransactionStructure._.requiredDeposit
d_requiredDeposit_2230 ::
  T_TransactionStructure_16 ->
  () ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
d_requiredDeposit_2230 ~v0 = du_requiredDeposit_2230
du_requiredDeposit_2230 ::
  () ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
du_requiredDeposit_2230 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Deleg.du_requiredDeposit_848 v1 v2
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2276 :: MAlonzo.Code.Ledger.Deleg.T_CertEnv_682 -> AgdaAny
d_epoch_2276 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_epoch_690 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2278 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_682 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pp_2278 v0 = coe MAlonzo.Code.Ledger.Deleg.d_pp_692 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2280 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_682 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_votes_2280 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_votes_694 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2284 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_738 ->
  MAlonzo.Code.Ledger.Deleg.T_DState_698
d_dState_2284 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dState_746 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2286 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_738 ->
  MAlonzo.Code.Ledger.Deleg.T_GState_726
d_gState_2286 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_gState_750 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2288 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_738 ->
  MAlonzo.Code.Ledger.Deleg.T_PState_714
d_pState_2288 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pState_748 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2306 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2306 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewards_710 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2308 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2308 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_708 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2310 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2310 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_voteDelegs_706 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2314 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2314 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_734 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2316 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2316 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dreps_732 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2320 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2320 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pools_720 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2322 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2322 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_retiring_722 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2326 ::
  MAlonzo.Code.Ledger.Deleg.T_PoolParams_662 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_2326 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewardAddr_666 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2328 :: T_TransactionStructure_16 -> ()
d_TxIn_2328 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2330 :: T_TransactionStructure_16 -> ()
d_TxOut_2330 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2332 :: T_TransactionStructure_16 -> ()
d_UTxO_2332 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2334 :: T_TransactionStructure_16 -> ()
d_Wdrl_2334 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2336 :: T_TransactionStructure_16 -> ()
d_RdmrPtr_2336 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2338 :: T_TransactionStructure_16 -> ()
d_ProposedPPUpdates_2338 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2340 :: T_TransactionStructure_16 -> ()
d_Update_2340 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2342 a0 = ()
data T_TxBody_2342
  = C_TxBody'46'constructor_13651 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Deleg.T_DCert_668]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2380 ::
  T_TxBody_2342 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2380 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2382 ::
  T_TxBody_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2382 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2384 :: T_TxBody_2342 -> Integer
d_txfee_2384 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2386 :: T_TxBody_2342 -> AgdaAny
d_mint_2386 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2388 ::
  T_TxBody_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2388 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2390 ::
  T_TxBody_2342 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_668]
d_txcerts_2390 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2392 ::
  T_TxBody_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2392 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2394 ::
  T_TxBody_2342 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_txvote_2394 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2396 ::
  T_TxBody_2342 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692]
d_txprop_2396 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2398 :: T_TxBody_2342 -> Integer
d_txdonation_2398 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2400 ::
  T_TxBody_2342 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2400 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2402 :: T_TxBody_2342 -> Maybe AgdaAny
d_txADhash_2402 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.netwrk
d_netwrk_2404 :: T_TxBody_2342 -> Maybe AgdaAny
d_netwrk_2404 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2406 :: T_TxBody_2342 -> Integer
d_txsize_2406 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2408 :: T_TxBody_2342 -> AgdaAny
d_txid_2408 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2410 ::
  T_TxBody_2342 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2410 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2412 :: T_TxBody_2342 -> [AgdaAny]
d_reqSigHash_2412 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2414 :: T_TxBody_2342 -> Maybe AgdaAny
d_scriptIntHash_2414 v0
  = case coe v0 of
      C_TxBody'46'constructor_13651 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2416 a0 = ()
data T_TxWitnesses_2416
  = C_TxWitnesses'46'constructor_13841 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2426 ::
  T_TxWitnesses_2416 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2426 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_13841 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2428 ::
  T_TxWitnesses_2416 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2428 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_13841 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2430 ::
  T_TxWitnesses_2416 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2430 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_13841 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2432 ::
  T_TxWitnesses_2416 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2432 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_13841 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2434 ::
  T_TransactionStructure_16 -> T_TxWitnesses_2416 -> [AgdaAny]
d_scriptsP1_2434 ~v0 v1 = du_scriptsP1_2434 v1
du_scriptsP1_2434 :: T_TxWitnesses_2416 -> [AgdaAny]
du_scriptsP1_2434 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2428 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2436 a0 = ()
data T_Tx_2436
  = C_Tx'46'constructor_14033 T_TxBody_2342 T_TxWitnesses_2416
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2444 :: T_Tx_2436 -> T_TxBody_2342
d_body_2444 v0
  = case coe v0 of
      C_Tx'46'constructor_14033 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2446 :: T_Tx_2436 -> T_TxWitnesses_2416
d_wits_2446 v0
  = case coe v0 of
      C_Tx'46'constructor_14033 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2448 :: T_Tx_2436 -> Maybe AgdaAny
d_txAD_2448 v0
  = case coe v0 of
      C_Tx'46'constructor_14033 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2450 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2450 ~v0 v1 = du_getValue_2450 v1
du_getValue_2450 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2450 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2454 ::
  T_TransactionStructure_16 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2454 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      MAlonzo.Code.Axiom.Set.du__'8745'__686
      (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
            (coe d_DecEq'45'TxId_992 (coe v0))
            (coe d_DecEq'45'Ix_990 (coe v0))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_478
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8638'''__956
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v2)
            (coe
               (\ v4 ->
                  coe
                    MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2460 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2460 ~v0 v1 = du_scriptOuts_2460 v1
du_scriptOuts_2460 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2460 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         erased erased erased
         (coe MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126)
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                -> case coe v3 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5 -> coe v4
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe v0)
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_2468 ::
  T_TransactionStructure_16 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2468 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      MAlonzo.Code.Axiom.Set.du__'8745'__686
      (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
            (coe d_DecEq'45'TxId_992 (coe v0))
            (coe d_DecEq'45'Ix_990 (coe v0))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_478
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_scriptOuts_2460 (coe v2))))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2474 ::
  T_TransactionStructure_16 ->
  AgdaAny ->
  T_Tx_2436 -> Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2474 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_if'7496'_then_else__60
      (coe
         MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
            (coe d_crypto_1026 (coe v0)))
         v1
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_462
               (coe du_m_2484 (coe v0) (coe v2)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1314
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2484 (coe v0) (coe v2)) (coe v1) (coe v3))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2484 ::
  T_TransactionStructure_16 ->
  AgdaAny -> T_Tx_2436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2484 v0 ~v1 v2 = du_m_2484 v0 v2
du_m_2484 ::
  T_TransactionStructure_16 ->
  T_Tx_2436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2484 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_16
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
         (d_scriptStructure_1542 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_292
               (coe d_scriptStructure_1542 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_294
               (coe d_scriptStructure_1542 (coe v0)))))
      (coe d_scripts_2428 (coe d_wits_2446 (coe v1)))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2486 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2486 ~v0 v1 = du_isP2Script_2486 v1
du_isP2Script_2486 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2486 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2488 ::
  T_TransactionStructure_16 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2488 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
              (d_tokenAlgebra_1832 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
