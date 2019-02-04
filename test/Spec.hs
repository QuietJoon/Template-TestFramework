import qualified System.IO.Silently as Silently

import qualified Test.Framework as Test
import qualified Test.Framework.Providers.HUnit as Test
import qualified Test.Framework.Providers.QuickCheck2 as Test
import Test.HUnit
import Test.QuickCheck

import Test.Data

getIOValue :: Int -> IO Int
getIOValue v = return v

main :: IO ()
main = do
  captured <- Silently.capture_ (getIOValue 1)
  Test.defaultMain [
    Test.Data.tests
    ]
