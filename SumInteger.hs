module SumInteger where
    f :: Int -> Bool
    f x =
        if (mod x 2 == 0) then True
        else False
    sumInteger :: Int -> Int -> (Int -> Bool) -> Int
    sumInteger m n f =
        if m == n + 1 then 0
        else
            if f (m) then m + sumInteger (m+1) n f
            else sumInteger (m+1) n f