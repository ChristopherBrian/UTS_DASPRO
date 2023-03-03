module ElmtKeN where
    elmtKeN :: Int -> [Int] -> Int
    elmtKeN n li =
        if (n == 1) then head li
        else elmtKeN (n-1) (tail li)