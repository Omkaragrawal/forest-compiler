{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE FlexibleInstances #-}

import qualified Data.List.NonEmpty as NE
import System.Exit
import System.IO.Temp
import System.Process
import Test.Hspec
import Test.QuickCheck
import Test.QuickCheck.Arbitrary

import Compiler
import HaskellSyntax
import Language

import HaskellSyntaxSpec
import JavaScriptSyntaxSpec

main :: IO ()
main = hspec javaScriptSyntaxSpecs

readFixture :: String -> IO String
readFixture name = readFile ("test/fixtures/" ++ name ++ ".tree")
