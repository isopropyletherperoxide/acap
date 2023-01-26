module Main where

import CapLib
import System.Environment
import Text.Printf

main :: IO ()
main = do
  args <- getArgs
  let input = head args
  let capVal = calcCap (map digitToFloat input)
  printf "%f uF \n" $ capVal / 1000000
  printf "%f nF \n" $ capVal / 1000
  printf "%f pF \n" capVal
