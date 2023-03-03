-- Faktorial (definisi-1)                           fac (n)
module Fac where
-- DEFINISI DAN SPESIFIKASI
    fac :: Int -> Int
    -- fac menghitung faktorial dari bilangan n,
    -- n berupa Integer
-- REALISASI
    fac n =
        if n == 0 then 1
        else n * fac(n-1)