module ListPlus where
    listPlus :: [Int] -> [Int] -> [Int]
    listPlus li1 li2 =
        if (null li2) then li1
        else listPlus (li1 ++ [head li2]) (tail li2)