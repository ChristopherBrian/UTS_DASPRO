module DelAllX where
    delAllX :: [Int] -> Int -> ([Int], Int)
    delAllX l x =
        if (length l == 0) then ([],0)
        else
            let (m,n) = delAllX (tail l) x in
                if x == head l then (m, n+1)
                else ([head l] ++ m, n)