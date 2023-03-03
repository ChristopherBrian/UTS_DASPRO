module IsSortedDown where
    isSortedDown :: [Int] -> Bool
    isSortedDown li =
        if (length li == 2) && (head li > last li) then True
        else if (head li > head (tail li)) then isSortedDown (tail li)
        else False