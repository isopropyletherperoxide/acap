module Main where

import CapLib (calcCap, digitToFloat)
import System.Environment (getArgs)
import System.Exit (exitFailure)
import Text.Printf (printf)

main :: IO ()
main = do
        args <- getArgs
        let input =
                    case args of
                            [] -> Nothing
                            (a:_) -> Just a
        case input of
                Nothing -> exitFailure
                Just a -> do
                        let capVal = calcCap (map digitToFloat a)
                        printf "%f uF \n" $ capVal / 1000000
                        printf "%f nF \n" $ capVal / 1000
                        printf "%f pF \n" capVal
