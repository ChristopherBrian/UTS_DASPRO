module NilaiEkstrim where
    nilaiEkstrim :: [Int] -> (Int,Int)
    nilaiEkstrim li =
        if (length li == 1) then (head li, last li)
        else
            let (m,n) = nilaiEkstrim (tail li) in
                if head li >= m then (head li,n)
                else if head li <= n then (m, head li)
                else (m,n)