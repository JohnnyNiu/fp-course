data Z = X String | Y
    deriving (Eq, ToString)

instance Eq Z where
    X a == X b = a == b
    Y == Y = true
    _ == _ = false

class ToString a where
    toString:: a -> String
    
instance ToString Int where
    toString = show

instance ToString Bool where
    toString True = "true"
    toString False = "false"