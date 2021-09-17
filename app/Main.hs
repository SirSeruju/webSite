{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lib
import Web.Scotty
import Data.Monoid (mconcat)

main :: IO ()

main = scotty 8080 $ do
  get "/" $ do
    file $ "web/index.html"
  get (regex "^/(.*)$") $ do
    path <- param "0"
    file $ "web" ++ path
