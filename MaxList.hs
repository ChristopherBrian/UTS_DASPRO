module MaxList where
    maxList :: [Int] -> Int
    maxList li =
        if (length li == 1) then head li
        else
            if head li >= maxList (tail li) then head li
            else maxList (tail li)