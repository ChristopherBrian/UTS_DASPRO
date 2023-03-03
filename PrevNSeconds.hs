module PrevNSeconds where
    prevNSeconds :: Int -> Int -> Int -> Int -> (Int, Int, Int)
    prevNSeconds j m d n =
        if (n == 1) then
            if d>0 then (j,m,d-1)
            else
                if m == 0 then
                    if j == 0 then (23,59,59)
                    else (j-1,59,59)
                else (j,m-1,59)
        else
            if d>0 then prevNSeconds j m (d-1) (n-1)
            else
                if m == 0 then
                    if j == 0 then prevNSeconds 23 59 59 (n-1)
                    else prevNSeconds (j-1) 59 59 (n-1)
                else prevNSeconds j (m-1) 59 (n-1)