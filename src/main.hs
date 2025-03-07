
main = do
    putStrLn "Hello World!"
    putStrLn (foo 2)

foo :: Integer -> String
foo n
    | n > 5 = "aaaaa"
    | otherwise = foo (n + 1)
