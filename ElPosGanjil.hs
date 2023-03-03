module ElPosGanjil where
    elPosGanjil :: [Int] -> [Int]
    elPosGanjil li =
        if (length li == 1) || (length li == 2) then [head li]
        else [head li] ++ elPosGanjil (tail (tail li))