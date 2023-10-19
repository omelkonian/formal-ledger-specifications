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

module MAlonzo.Code.Interface.Show where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive

-- Interface.Show.Show
d_Show_10 a0 a1 = ()
newtype T_Show_10
  = C_Show'46'constructor_29 (AgdaAny ->
                              MAlonzo.Code.Agda.Builtin.String.T_String_6)
-- Interface.Show.Show.show
d_show_16 ::
  T_Show_10 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_show_16 v0
  = case coe v0 of
      C_Show'46'constructor_29 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Show._.show
d_show_20 ::
  T_Show_10 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_show_20 v0 = coe d_show_16 (coe v0)
