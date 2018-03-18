import           Data.Char          (isDigit)
import           System.Environment (getArgs)


main :: IO ()
main = do
  let isDigitOnly cs = foldl (\b c -> b && isDigit c ) True cs
  args <- getArgs
  if 1 <= length args
  then do
    let n = (args !! 0)
    if isDigitOnly n
    then
      fizzBuzz (read n :: Int)
    else
      putStrLn "Argument is not digit"
  else
    putStrLn "Arguments are too short"

  return ()

fizzBuzz n
  | n <= 0 = return ()
  | otherwise = do
      fizzBuzz $ n - 1
      fizzBuzz' n

fizzBuzz' n
  | multiplesOf15 = putStrLn $ prefix ++ "FizzBuzz"
  | multiplesOf3  = putStrLn $ prefix ++ "Fizz"
  | multiplesOf5  = putStrLn $ prefix ++ "Buzz"
  | otherwise     = putStrLn $ prefix ++ show n
    where
      multiplesOf3  = n `mod` 3 == 0
      multiplesOf5  = n `mod` 5 == 0
      multiplesOf15 = multiplesOf3 && multiplesOf5
      prefix = show n ++ " : "


