module SumOfDigits where
    sumOfDigits :: Int -> Int
    sumOfDigits x =
        if x < 10 then x
        else (mod x 10) + sumOfDigits (div x 10)