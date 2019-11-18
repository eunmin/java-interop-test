module Main where

import Java
import ExpValue
import BoolValue
import IntValue
import Util

main :: IO ()
main = do
  name1 <- java $ do
            value <- newBoolValue False
            value <.> getName
  putStrLn $ "Value1: " ++ show name1
  name2 <- java $ do
            value1 <- newIntValue 10
            value2 <- newBoolValue True
            values <- arrayFromList [(superCast value1 :: ExpValue),
                                     (superCast value2 :: ExpValue)]
            printNames values
            value1 <.> getName
  putStrLn $ "Value2: " ++ show name2
