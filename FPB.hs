-- FPB                                          fpb(m,n)
module FPB where
-- DEFINISI DAN SPESIFIKASI
    fpb :: Int -> Int -> Int
    -- fpb menghitung faktor persekutuan terbesar bilangan m dan n,
    -- m dan n berupa integer
    fpb m n =
        if (mod m n == 0) then n
        else fpb n (mod m n)