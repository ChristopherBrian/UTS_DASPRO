module IsEqFront where
    isEqFront :: [Int] -> [Int] -> Bool
    isEqFront li1 li2 =
        if (null li1) then True
        else
            if (head li1 == head li2) then isEqFront (tail li1) (tail li2)
            else False