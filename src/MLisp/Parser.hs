module MLisp.Parser
    ( someFunc,
    ) where

import Text.Megaparsec
import Text.Megaparsec.Char
import Data.Void
import Control.Monad.Identity
import qualified Text.Megaparsec.Char.Lexer as L

someFunc :: IO ()
someFunc = putStrLn "someFunc"

type Parser = ParsecT Void String Identity

pScheme :: Parser String
pScheme = choice $ map string ["data",
  "file",
  "ftp",
  "http",
  "https",
  "irc",
  "mailto"]


