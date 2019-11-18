{-# LANGUAGE MultiParamTypeClasses, TypeFamilies, DataKinds #-}

module IntValue ( newIntValue
                , getValue) where

import Java
import ExpValue

data IntValue = IntValue @com.eunmin.IntValue deriving Class

foreign import java unsafe "@new" newIntValue :: Int -> Java a IntValue

foreign import java unsafe getValue :: Java IntValue Bool

type instance Inherits IntValue = '[ExpValue]
