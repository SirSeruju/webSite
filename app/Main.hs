{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lib
import Web.Scotty
import Data.Monoid (mconcat)

main :: IO ()

main = scotty 3000 $ do
  get (regex "^/(.*)$") $ do
    path <- param "0"
    file $ "web" ++ path
