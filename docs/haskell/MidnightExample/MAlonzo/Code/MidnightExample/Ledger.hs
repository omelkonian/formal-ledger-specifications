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

module MAlonzo.Code.MidnightExample.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- MidnightExample.Ledger.Hashable-ℕ
d_Hashable'45'ℕ_16 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'ℕ_16 ~v0 ~v1 v2 ~v3 ~v4 = du_Hashable'45'ℕ_16 v2
du_Hashable'45'ℕ_16 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'ℕ_16 v0
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
      (\ v1 -> coe MAlonzo.Code.Interface.Hashable.d_hash_18 v0 v1)
-- MidnightExample.Ledger._<ᵇ_
d__'60''7495'__20 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  Maybe Integer -> Maybe Integer -> Bool
d__'60''7495'__20 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du__'60''7495'__20 v5 v6
du__'60''7495'__20 :: Maybe Integer -> Maybe Integer -> Bool
du__'60''7495'__20 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe ltInt (coe v2) (coe v3)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
               -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Point
d_Point_30 a0 a1 a2 a3 a4 = ()
data T_Point_30
  = C_Point'46'constructor_3365 (Maybe Integer) AgdaAny
-- MidnightExample.Ledger.Point.slot
d_slot_36 :: T_Point_30 -> Maybe Integer
d_slot_36 v0
  = case coe v0 of
      C_Point'46'constructor_3365 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Point.blockHash
d_blockHash_38 :: T_Point_30 -> AgdaAny
d_blockHash_38 v0
  = case coe v0 of
      C_Point'46'constructor_3365 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.slotsInEpoch
d_slotsInEpoch_40 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  Integer
d_slotsInEpoch_40 ~v0 ~v1 ~v2 ~v3 ~v4 = du_slotsInEpoch_40
du_slotsInEpoch_40 :: Integer
du_slotsInEpoch_40 = coe (50 :: Integer)
-- MidnightExample.Ledger.epochOf
d_epochOf_42 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  Maybe Integer -> Maybe Integer
d_epochOf_42 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_epochOf_42 v5
du_epochOf_42 :: Maybe Integer -> Maybe Integer
du_epochOf_42 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Data.Nat.Base.du__'47'__248 (coe v1)
                (coe du_slotsInEpoch_40))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Tx
d_Tx_46 a0 a1 a2 a3 a4 = ()
data T_Tx_46 = C_inc_48 | C_dec_50
-- MidnightExample.Ledger.txDelta
d_txDelta_52 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Tx_46 -> Integer
d_txDelta_52 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_txDelta_52 v5
du_txDelta_52 :: T_Tx_46 -> Integer
du_txDelta_52 v0
  = case coe v0 of
      C_inc_48 -> coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      C_dec_50 -> coe MAlonzo.Code.Data.Integer.Base.d_'45'1ℤ_14
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.txDelta-injective
d_txDelta'45'injective_54 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Tx_46 ->
  T_Tx_46 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_txDelta'45'injective_54 = erased
-- MidnightExample.Ledger.Hashable-Tx
d_Hashable'45'Tx_56 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Tx_56 ~v0 ~v1 v2 ~v3 ~v4 = du_Hashable'45'Tx_56 v2
du_Hashable'45'Tx_56 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Tx_56 v0
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
      (\ v1 ->
         coe
           MAlonzo.Code.Interface.Hashable.d_hash_18 v0
           (coe du_txDelta_52 (coe v1)))
-- MidnightExample.Ledger.Header
d_Header_58 a0 a1 a2 a3 a4 = ()
data T_Header_58
  = C_Header'46'constructor_9549 Integer Integer AgdaAny Integer
                                 Integer
-- MidnightExample.Ledger.Header.slotNo
d_slotNo_70 :: T_Header_58 -> Integer
d_slotNo_70 v0
  = case coe v0 of
      C_Header'46'constructor_9549 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Header.blockNo
d_blockNo_72 :: T_Header_58 -> Integer
d_blockNo_72 v0
  = case coe v0 of
      C_Header'46'constructor_9549 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Header.blockHash
d_blockHash_74 :: T_Header_58 -> AgdaAny
d_blockHash_74 v0
  = case coe v0 of
      C_Header'46'constructor_9549 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Header.prev
d_prev_76 :: T_Header_58 -> Integer
d_prev_76 v0
  = case coe v0 of
      C_Header'46'constructor_9549 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Header.nodeId
d_nodeId_78 :: T_Header_58 -> Integer
d_nodeId_78 v0
  = case coe v0 of
      C_Header'46'constructor_9549 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Block
d_Block_80 a0 a1 a2 a3 a4 = ()
data T_Block_80 = C_Block'46'constructor_9897 T_Header_58 [T_Tx_46]
-- MidnightExample.Ledger.Block.header
d_header_86 :: T_Block_80 -> T_Header_58
d_header_86 v0
  = case coe v0 of
      C_Block'46'constructor_9897 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Block.body
d_body_88 :: T_Block_80 -> [T_Tx_46]
d_body_88 v0
  = case coe v0 of
      C_Block'46'constructor_9897 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.Block._.blockHash
d_blockHash_92 :: T_Block_80 -> AgdaAny
d_blockHash_92 v0 = coe d_blockHash_74 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.Block._.blockNo
d_blockNo_94 :: T_Block_80 -> Integer
d_blockNo_94 v0 = coe d_blockNo_72 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.Block._.nodeId
d_nodeId_96 :: T_Block_80 -> Integer
d_nodeId_96 v0 = coe d_nodeId_78 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.Block._.prev
d_prev_98 :: T_Block_80 -> Integer
d_prev_98 v0 = coe d_prev_76 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.Block._.slotNo
d_slotNo_100 :: T_Block_80 -> Integer
d_slotNo_100 v0 = coe d_slotNo_70 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.blockPoint
d_blockPoint_102 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 -> T_Point_30
d_blockPoint_102 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_blockPoint_102 v5
du_blockPoint_102 :: T_Block_80 -> T_Point_30
du_blockPoint_102 v0
  = coe
      C_Point'46'constructor_3365
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe d_slotNo_70 (coe d_header_86 (coe v0))))
      (coe d_blockHash_74 (coe d_header_86 (coe v0)))
-- MidnightExample.Ledger._._.blockHash
d_blockHash_112 :: T_Block_80 -> AgdaAny
d_blockHash_112 v0 = coe d_blockHash_74 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.blockNo
d_blockNo_114 :: T_Block_80 -> Integer
d_blockNo_114 v0 = coe d_blockNo_72 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.body
d_body_116 :: T_Block_80 -> [T_Tx_46]
d_body_116 v0 = coe d_body_88 (coe v0)
-- MidnightExample.Ledger._._.header
d_header_118 :: T_Block_80 -> T_Header_58
d_header_118 v0 = coe d_header_86 (coe v0)
-- MidnightExample.Ledger._._.nodeId
d_nodeId_120 :: T_Block_80 -> Integer
d_nodeId_120 v0 = coe d_nodeId_78 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.prev
d_prev_122 :: T_Block_80 -> Integer
d_prev_122 v0 = coe d_prev_76 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.slotNo
d_slotNo_124 :: T_Block_80 -> Integer
d_slotNo_124 v0 = coe d_slotNo_70 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.computeBlockHash
d_computeBlockHash_126 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 -> AgdaAny
d_computeBlockHash_126 ~v0 ~v1 v2 v3 v4 v5
  = du_computeBlockHash_126 v2 v3 v4 v5
du_computeBlockHash_126 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 -> AgdaAny
du_computeBlockHash_126 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.Hashable.d_hash_18
      (coe
         v2 erased erased (coe du_Hashable'45'ℕ_16 (coe v0))
         (coe
            v2 erased erased (coe du_Hashable'45'ℕ_16 (coe v0))
            (coe
               v2 erased erased (coe du_Hashable'45'ℕ_16 (coe v0))
               (coe v1 erased (coe du_Hashable'45'Tx_56 (coe v0))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_slotNo_70 (coe d_header_86 (coe v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe d_blockNo_72 (coe d_header_86 (coe v3)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe d_prev_76 (coe d_header_86 (coe v3)))
               (coe d_body_88 (coe v3)))))
-- MidnightExample.Ledger._._.blockHash
d_blockHash_136 :: T_Block_80 -> AgdaAny
d_blockHash_136 v0 = coe d_blockHash_74 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.blockNo
d_blockNo_138 :: T_Block_80 -> Integer
d_blockNo_138 v0 = coe d_blockNo_72 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.body
d_body_140 :: T_Block_80 -> [T_Tx_46]
d_body_140 v0 = coe d_body_88 (coe v0)
-- MidnightExample.Ledger._._.header
d_header_142 :: T_Block_80 -> T_Header_58
d_header_142 v0 = coe d_header_86 (coe v0)
-- MidnightExample.Ledger._._.nodeId
d_nodeId_144 :: T_Block_80 -> Integer
d_nodeId_144 v0 = coe d_nodeId_78 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.prev
d_prev_146 :: T_Block_80 -> Integer
d_prev_146 v0 = coe d_prev_76 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.slotNo
d_slotNo_148 :: T_Block_80 -> Integer
d_slotNo_148 v0 = coe d_slotNo_70 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.addBlockHash
d_addBlockHash_150 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 -> T_Block_80
d_addBlockHash_150 ~v0 ~v1 v2 v3 v4 v5
  = du_addBlockHash_150 v2 v3 v4 v5
du_addBlockHash_150 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 -> T_Block_80
du_addBlockHash_150 v0 v1 v2 v3
  = coe
      C_Block'46'constructor_9897
      (coe
         C_Header'46'constructor_9549
         (coe d_slotNo_70 (coe d_header_86 (coe v3)))
         (coe d_blockNo_72 (coe d_header_86 (coe v3)))
         (coe du_computeBlockHash_126 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe d_prev_76 (coe d_header_86 (coe v3)))
         (coe d_nodeId_78 (coe d_header_86 (coe v3))))
      (coe d_body_88 (coe v3))
-- MidnightExample.Ledger._._.blockHash
d_blockHash_160 :: T_Block_80 -> AgdaAny
d_blockHash_160 v0 = coe d_blockHash_74 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.blockNo
d_blockNo_162 :: T_Block_80 -> Integer
d_blockNo_162 v0 = coe d_blockNo_72 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.body
d_body_164 :: T_Block_80 -> [T_Tx_46]
d_body_164 v0 = coe d_body_88 (coe v0)
-- MidnightExample.Ledger._._.header
d_header_166 :: T_Block_80 -> T_Header_58
d_header_166 v0 = coe d_header_86 (coe v0)
-- MidnightExample.Ledger._._.nodeId
d_nodeId_168 :: T_Block_80 -> Integer
d_nodeId_168 v0 = coe d_nodeId_78 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.prev
d_prev_170 :: T_Block_80 -> Integer
d_prev_170 v0 = coe d_prev_76 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._._.slotNo
d_slotNo_172 :: T_Block_80 -> Integer
d_slotNo_172 v0 = coe d_slotNo_70 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.LedgerState
d_LedgerState_174 a0 a1 a2 a3 a4 = ()
data T_LedgerState_174
  = C_LedgerState'46'constructor_13185 T_Point_30 Integer Integer
                                       Integer
-- MidnightExample.Ledger.LedgerState.tip
d_tip_184 :: T_LedgerState_174 -> T_Point_30
d_tip_184 v0
  = case coe v0 of
      C_LedgerState'46'constructor_13185 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.LedgerState.count
d_count_186 :: T_LedgerState_174 -> Integer
d_count_186 v0
  = case coe v0 of
      C_LedgerState'46'constructor_13185 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.LedgerState.snapshot1
d_snapshot1_188 :: T_LedgerState_174 -> Integer
d_snapshot1_188 v0
  = case coe v0 of
      C_LedgerState'46'constructor_13185 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.LedgerState.snapshot2
d_snapshot2_190 :: T_LedgerState_174 -> Integer
d_snapshot2_190 v0
  = case coe v0 of
      C_LedgerState'46'constructor_13185 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Ledger.tickLedgerState
d_tickLedgerState_192 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  Integer -> T_LedgerState_174 -> T_LedgerState_174
d_tickLedgerState_192 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_tickLedgerState_192 v5 v6
du_tickLedgerState_192 ::
  Integer -> T_LedgerState_174 -> T_LedgerState_174
du_tickLedgerState_192 v0 v1
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
      (coe du_isNewEpoch_202 (coe v0) (coe v1))
      (coe
         C_LedgerState'46'constructor_13185 (coe d_tip_184 (coe v1))
         (coe d_count_186 (coe v1)) (coe d_count_186 (coe v1))
         (coe d_snapshot1_188 (coe v1)))
      (coe v1)
-- MidnightExample.Ledger._.isNewEpoch
d_isNewEpoch_202 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  Integer -> T_LedgerState_174 -> Bool
d_isNewEpoch_202 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_isNewEpoch_202 v5 v6
du_isNewEpoch_202 :: Integer -> T_LedgerState_174 -> Bool
du_isNewEpoch_202 v0 v1
  = coe
      du__'60''7495'__20
      (coe du_epochOf_42 (coe d_slot_36 (coe d_tip_184 (coe v1))))
      (coe
         du_epochOf_42
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
-- MidnightExample.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__204 a0 a1 a2 a3 a4 a5 a6
                                               a7 a8
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__204
  = C_LEDGER'45'inductive_234
-- MidnightExample.Ledger._.blockHash
d_blockHash_214 :: T_Block_80 -> AgdaAny
d_blockHash_214 v0 = coe d_blockHash_74 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.blockNo
d_blockNo_216 :: T_Block_80 -> Integer
d_blockNo_216 v0 = coe d_blockNo_72 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.body
d_body_218 :: T_Block_80 -> [T_Tx_46]
d_body_218 v0 = coe d_body_88 (coe v0)
-- MidnightExample.Ledger._.header
d_header_220 :: T_Block_80 -> T_Header_58
d_header_220 v0 = coe d_header_86 (coe v0)
-- MidnightExample.Ledger._.nodeId
d_nodeId_222 :: T_Block_80 -> Integer
d_nodeId_222 v0 = coe d_nodeId_78 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.prev
d_prev_224 :: T_Block_80 -> Integer
d_prev_224 v0 = coe d_prev_76 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.slotNo
d_slotNo_226 :: T_Block_80 -> Integer
d_slotNo_226 v0 = coe d_slotNo_70 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.completeness
d_completeness_238 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_238 = erased
-- MidnightExample.Ledger._.computeProof
d_computeProof_242 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_242 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_88
      (coe v0)
-- MidnightExample.Ledger.Computational-LEDGER
d_Computational'45'LEDGER_250 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'LEDGER_250 ~v0 v1 v2 v3 v4
  = du_Computational'45'LEDGER_250 v1 v2 v3 v4
du_Computational'45'LEDGER_250 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
du_Computational'45'LEDGER_250 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v4 v5 v6 ->
         let v7
               = coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                   (coe
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__82
                      (coe
                         MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                         (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℤ_32)
                         (coe
                            MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_646
                            MAlonzo.Code.Data.Integer.Properties.d_'43''45'0'45'commutativeMonoid_4200
                            (coe du_txDelta_52) (d_body_88 (coe v6)))
                         (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                      (coe
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)))
                   (coe
                      MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                      (coe v0)
                      (coe du_computeBlockHash_126 (coe v1) (coe v2) (coe v3) (coe v6))
                      (coe d_blockHash_74 (coe d_header_86 (coe v6)))) in
         case coe v7 of
           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v8 v9
             -> if coe v8
                  then case coe v9 of
                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v10
                           -> coe
                                seq (coe v10)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         C_LedgerState'46'constructor_13185
                                         (coe du_blockPoint_102 (coe v6))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                            (coe d_count_186 (coe v5))
                                            (let v11
                                                   = MAlonzo.Code.Data.Integer.Properties.d_'43''45'0'45'commutativeMonoid_4200 in
                                             coe
                                               MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_646 v11
                                               (coe du_txDelta_52) (d_body_88 (coe v6))))
                                         (coe
                                            d_snapshot1_188
                                            (coe
                                               du_tickLedgerState_192
                                               (coe d_slotNo_70 (coe d_header_86 (coe v6)))
                                               (coe v5)))
                                         (coe
                                            d_snapshot2_190
                                            (coe
                                               du_tickLedgerState_192
                                               (coe d_slotNo_70 (coe d_header_86 (coe v6)))
                                               (coe v5))))
                                      (coe C_LEDGER'45'inductive_234)))
                         _ -> MAlonzo.RTE.mazUnreachableError
                  else coe
                         seq (coe v9) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- MidnightExample.Ledger._.blockHash
d_blockHash_260 :: T_Block_80 -> AgdaAny
d_blockHash_260 v0 = coe d_blockHash_74 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.blockNo
d_blockNo_262 :: T_Block_80 -> Integer
d_blockNo_262 v0 = coe d_blockNo_72 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.body
d_body_264 :: T_Block_80 -> [T_Tx_46]
d_body_264 v0 = coe d_body_88 (coe v0)
-- MidnightExample.Ledger._.header
d_header_266 :: T_Block_80 -> T_Header_58
d_header_266 v0 = coe d_header_86 (coe v0)
-- MidnightExample.Ledger._.nodeId
d_nodeId_268 :: T_Block_80 -> Integer
d_nodeId_268 v0 = coe d_nodeId_78 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.prev
d_prev_270 :: T_Block_80 -> Integer
d_prev_270 v0 = coe d_prev_76 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.slotNo
d_slotNo_272 :: T_Block_80 -> Integer
d_slotNo_272 v0 = coe d_slotNo_70 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.blockHash
d_blockHash_298 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 ->
  T_Block_80 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_blockHash_298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_blockHash_298 v7
du_blockHash_298 :: T_Block_80 -> AgdaAny
du_blockHash_298 v0 = coe d_blockHash_74 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.blockNo
d_blockNo_300 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 ->
  T_Block_80 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_blockNo_300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_blockNo_300 v7
du_blockNo_300 :: T_Block_80 -> Integer
du_blockNo_300 v0 = coe d_blockNo_72 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.body
d_body_302 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 ->
  T_Block_80 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> [T_Tx_46]
d_body_302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 = du_body_302 v7
du_body_302 :: T_Block_80 -> [T_Tx_46]
du_body_302 v0 = coe d_body_88 (coe v0)
-- MidnightExample.Ledger._.header
d_header_304 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 ->
  T_Block_80 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T_Header_58
d_header_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_header_304 v7
du_header_304 :: T_Block_80 -> T_Header_58
du_header_304 v0 = coe d_header_86 (coe v0)
-- MidnightExample.Ledger._.nodeId
d_nodeId_306 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 ->
  T_Block_80 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_nodeId_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_nodeId_306 v7
du_nodeId_306 :: T_Block_80 -> Integer
du_nodeId_306 v0 = coe d_nodeId_78 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.prev
d_prev_308 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 ->
  T_Block_80 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_prev_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 = du_prev_308 v7
du_prev_308 :: T_Block_80 -> Integer
du_prev_308 v0 = coe d_prev_76 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger._.slotNo
d_slotNo_310 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 ->
  T_Block_80 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_slotNo_310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_slotNo_310 v7
du_slotNo_310 :: T_Block_80 -> Integer
du_slotNo_310 v0 = coe d_slotNo_70 (coe d_header_86 (coe v0))
-- MidnightExample.Ledger.LEDGER-step
d_LEDGER'45'step_320 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 -> T_Block_80 -> Maybe T_LedgerState_174
d_LEDGER'45'step_320 ~v0 v1 v2 v3 v4
  = du_LEDGER'45'step_320 v1 v2 v3 v4
du_LEDGER'45'step_320 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_LedgerState_174 -> T_Block_80 -> Maybe T_LedgerState_174
du_LEDGER'45'step_320 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_90
      (coe
         du_Computational'45'LEDGER_250 (coe v0) (coe v1) (coe v2) (coe v3))
-- MidnightExample.Ledger.applyBlockTo
d_applyBlockTo_322 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 -> T_LedgerState_174 -> Maybe T_LedgerState_174
d_applyBlockTo_322 ~v0 v1 v2 v3 v4 v5 v6
  = du_applyBlockTo_322 v1 v2 v3 v4 v5 v6
du_applyBlockTo_322 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 -> T_LedgerState_174 -> Maybe T_LedgerState_174
du_applyBlockTo_322 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_if'7496'_then_else__60
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__82
            (coe
               MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
               (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℤ_32)
               (coe
                  MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_646
                  MAlonzo.Code.Data.Integer.Properties.d_'43''45'0'45'commutativeMonoid_4200
                  (coe du_txDelta_52) (d_body_88 (coe v4)))
               (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
               (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)))
         (coe
            MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
            (coe v0)
            (coe du_computeBlockHash_126 (coe v1) (coe v2) (coe v3) (coe v4))
            (coe d_blockHash_74 (coe d_header_86 (coe v4)))))
      (coe
         (\ v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 C_LedgerState'46'constructor_13185 (coe du_blockPoint_102 (coe v4))
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'43'__276
                    (coe d_count_186 (coe v5))
                    (coe
                       MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_646
                       MAlonzo.Code.Data.Integer.Properties.d_'43''45'0'45'commutativeMonoid_4200
                       (coe du_txDelta_52) (d_body_88 (coe v4))))
                 (coe d_snapshot1_188 (coe v5)) (coe d_snapshot2_190 (coe v5)))))
      (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- MidnightExample.Ledger.lemma
d_lemma_372 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_lemma_372 = erased
-- MidnightExample.Ledger.LEDGER-property₁
d_LEDGER'45'property'8321'_378 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_LedgerState_174 ->
  T_Block_80 ->
  T_LedgerState_174 ->
  T__'8866'_'8640''10631'_'44'LEDGER'10632'__204 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_LEDGER'45'property'8321'_378 = erased
-- MidnightExample.Ledger.LEDGER-property₂
d_LEDGER'45'property'8322'_382 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_LedgerState_174 ->
  T_Block_80 ->
  T_LedgerState_174 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_LEDGER'45'property'8322'_382 = erased
-- MidnightExample.Ledger.LEDGER-property₃
d_LEDGER'45'property'8323'_390 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  (() ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  (() ->
   () ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
   MAlonzo.Code.Interface.Hashable.T_Hashable_8) ->
  T_Block_80 ->
  T_LedgerState_174 ->
  T_LedgerState_174 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_LEDGER'45'property'8323'_390 = erased
