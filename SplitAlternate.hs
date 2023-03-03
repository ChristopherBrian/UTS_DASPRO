module SplitAlternate where
    splitAlternate :: [Char] -> ([Char],[Char])
    splitAlternate lc =
        if (length lc == 2) then ([head lc],[last lc])
        else if (length lc == 1) then ([head lc], [])
        else
            let (m,n) = splitAlternate (tail (tail lc)) in
                ([head lc] ++ m, [head (tail lc)] ++ n)