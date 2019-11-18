{-# LANGUAGE MultiParamTypeClasses, TypeOperators, FlexibleContexts #-}

module ExpValue ( ExpValue(..)
                , ExpValueArray(..)
                , getName ) where

import Java

data ExpValue = ExpValue @com.eunmin.ExpValue deriving Class

data ExpValueArray = ExpValueArray @com.eunmin.ExpValue[] deriving Class

foreign import java unsafe getName :: (a <: ExpValue) => Java a String

instance JArray ExpValue ExpValueArray
