module SplitList where
    splitList :: [Int] -> ([Int],[Int])
    splitList li =
        if (null li) then ([],[])
        else
            let (m,n) = splitList (tail li) in
                if head li >= 0 then (m ++ [head li],n)
                else (m, [head li] ++ n)