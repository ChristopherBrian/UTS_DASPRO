module InsSorted where
    insSorted :: Int -> [Int] -> [Int]
    insSorted x li =
        if x < last li then
            if (head li < x) && (x < head (tail li)) then [head li] ++ [x] ++ tail li
            else [head li] ++ insSorted x (tail li)
        else li ++ [x]