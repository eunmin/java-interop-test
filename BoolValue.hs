{-# LANGUAGE MultiParamTypeClasses, TypeFamilies, DataKinds #-}

module BoolValue where

import Java
import ExpValue

data BoolValue = BoolValue @com.eunmin.BoolValue deriving Class

foreign import java unsafe "@new" newBoolValue :: Bool -> Java a BoolValue

foreign import java unsafe getValue :: Java BoolValue Bool

type instance Inherits BoolValue = '[ExpValue]
