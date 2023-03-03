module PrevSecond where
    prevSecond :: Int -> Int -> Int -> (Int, Int, Int)
    prevSecond j m d =
        if d>0 then (j,m,d-1)
        else
            if m == 0 then
                if j == 0 then (23,59,59)
                else (j-1,59,59)
            else (j,m-1,59)