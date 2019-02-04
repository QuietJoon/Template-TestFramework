module Data where

data Value
    = IntValue Int
    | StrValue String
    deriving (Eq, Show)
