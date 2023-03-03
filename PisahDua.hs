module PisahDua where
    pisahDua :: [Int] -> Int -> ([Int],[Int])
    pisahDua li n =
        if null li then ([],[])
        else
            let (m,a) = pisahDua (tail li) n in
                if head li <= n then ([head li] ++ m, a)
                else (m, [head li] ++ a)