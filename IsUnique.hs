module IsUnique where
    isUniqueHead :: [Char] -> Bool
    isUniqueHead lc =
        if (length lc == 2) then
            if head lc == last lc then False
            else True
        else
            if head lc == head (tail lc) then False
            else isUniqueHead ([head lc] ++ (tail (tail lc)))
    isUnique :: [Char] -> Bool
    isUnique lc =
        if (length lc == 1) then True
        else
            if (isUniqueHead lc) then (isUnique (tail lc))
            else False