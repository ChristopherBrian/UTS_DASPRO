module HitungBiaya where
    hitungBiaya :: Int -> Int -> Int -> Bool -> Int
    hitungBiaya k h s a =
        (if (k == 1) then (if a then 750000 else 600000) else if (k == 2) then (if a then 600000 else 480000) else if a then 400000 else 320000) * h * (s*1500000-(if a then 150000 else 0))