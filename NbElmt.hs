module NbElmt where
    nbElmt :: [Int] -> Int
    nbElmt li =
        if (null li) then 0
        else head li + nbElmt (tail li)