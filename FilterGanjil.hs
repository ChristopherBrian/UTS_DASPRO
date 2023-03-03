module FilterGanjil where
    filterGanjil :: [Int] -> [Int]
    filterGanjil li =
        if (null li) then []
        else
            if (mod (head li) 2 == 1) then [head li] ++ filterGanjil (tail li)
            else filterGanjil (tail li)