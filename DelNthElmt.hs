module DelNthElmt where
    delNthElmt :: Int -> [Char] -> [Char]
    delNthElmt n lc =
        if (n == 1) then tail lc
        else [head lc] ++ delNthElmt (n-1) (tail lc)