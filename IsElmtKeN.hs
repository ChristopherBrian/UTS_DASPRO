module IsElmtKeN where
    isElmtKeN :: Int -> Int -> [Int] -> Bool
    isElmtKeN n e li =
        if (n == 1) then
            if (head li == e) then True
            else False
        else isElmtKeN (n-1) e (tail li)