module GetElTengah where
    getElTengah :: [Int] -> Int
    getElTengah li =
        if (length li == 1) || (length li == 2) then head li
        else getElTengah (tail(init li))