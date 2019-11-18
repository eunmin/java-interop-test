{-# LANGUAGE TypeOperators, FlexibleContexts #-}

module Util where

import Java
import ExpValue

foreign import java unsafe "@static com.eunmin.Util.printNames" printNames :: (a <: ExpValueArray) => a -> Java c ()
