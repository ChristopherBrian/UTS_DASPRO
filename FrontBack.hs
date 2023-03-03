module FrontBack where
    splitList :: [Int] -> ([Int],[Int])
    splitList li =
        if null li then ([],[])
        else if (length li == 1) then ([head li],[])
        else
            let (m,n) = splitList (tail (init li)) in
                ([head li] ++ m, n ++ [last li])