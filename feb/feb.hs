
main :: IO ()
main = do
  print $ feb 10
  return ()

feb :: Int -> Int
feb i | i == 0    = 1
      | i == 1    = 1
      | otherwise = feb (i - 2) + feb (i - 1)
