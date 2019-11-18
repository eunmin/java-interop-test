{-# LANGUAGE TypeOperators, FlexibleContexts #-}

module Util where

import Java
import ExpValue

data Util = Util @com.eunmin.Util deriving Class

foreign import java unsafe "@static com.eunmin.Util.printNames" printNames :: (a <: ExpValue) => a -> Java c ()
