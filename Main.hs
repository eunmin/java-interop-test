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
            value <- newIntValue 10
            printNames value
            value <.> getName
  putStrLn $ "Value2: " ++ show name2
