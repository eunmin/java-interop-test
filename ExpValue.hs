{-# LANGUAGE TypeOperators, FlexibleContexts #-}

module ExpValue ( ExpValue(..)
                , getName ) where

import Java

data ExpValue = ExpValue @com.eunmin.ExpValue deriving Class

foreign import java unsafe getName :: (a <: ExpValue) => Java a String
