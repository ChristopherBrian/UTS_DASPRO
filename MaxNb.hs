module MaxNb where
    maxNb :: [Int] -> (Int, Int)
    maxNb li =
        if (length li == 1) then (head li, 1)
        else
            let (m,n) = maxNb (tail li) in
                if (m < head li) then (head li, 1)
                else if (m > head li) then (m,n)
                else (m, n+1)