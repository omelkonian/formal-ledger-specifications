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

module MAlonzo.Code.Interface.HasSubtract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- Interface.HasSubtract.HasSubtract
d_HasSubtract_6 a0 = ()
newtype T_HasSubtract_6
  = C_HasSubtract'46'constructor_7 (AgdaAny -> AgdaAny -> AgdaAny)
-- Interface.HasSubtract.HasSubtract._-_
d__'45'__12 :: T_HasSubtract_6 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__12 v0
  = case coe v0 of
      C_HasSubtract'46'constructor_7 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasSubtract._._-_
d__'45'__16 :: T_HasSubtract_6 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__16 v0 = coe d__'45'__12 (coe v0)
