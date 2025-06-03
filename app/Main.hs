module Main where

parse :: String -> IO ()
parse input = do
    let list = words input

    let first = read (list !! 0) :: Integer
    let second = read (list !! 1) :: Integer

    if      last list == "+" then print (first + second)
    else if last list == "-" then print (first - second)
    else if last list == "*" then print (first * second)
    else if last list == "/" then putStrLn "Division not ready"
    else putStrLn ("Unknown input: " ++ last list)

main :: IO ()
main = do 
    putStrLn "Welcome! Please enter an expression:"
    input <- getLine
    parse input