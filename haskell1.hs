fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = if x > 1
 then fibonacci (x-1) + fibonacci (x-2) 
 else -1

fatorial :: Int -> Int
fatorial 0 = 1
fatorial x = if x > 0
 then x * fatorial (x-1)
 else -1

fib_list :: Int -> [Int]
fib_list x = take x list where list = 0:1:[ y + z | (y, z) <- zip list (tail list) ]

remover :: Int -> [x] -> [x]
remover _ [] = []
remover y (x:xs)
   | y == 0 = xs
   | otherwise = x : remover (y-1) xs

inserir :: a -> Int -> [a] -> [a]
inserir newElement 0 as = newElement:as
inserir newElement i (a:as) = a : inserir newElement (i - 1) as

separarImparPar :: [Int] -> ([Int], [Int])
separarImparPar [] = ([], [])
separarImparPar [x] = ([x], [])
separarImparPar (x:y:xs) = (x:xp, y:yp) where (xp, yp) = separarImparPar xs

quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

ordenaimparpar :: [Int]->[Int]
ordenaimparpar x = quicksort([y | y<- x,  odd y]) ++ quicksort([y | y<- x,  even y])

main = do
  let result_fib = fibonacci (2)
  if result_fib >= 0
    then print(result_fib)
    else print("Apenas numeros naturais")

  let result_fat = fatorial (5)
  if result_fat >= 0
    then print(result_fat)
    else print("Apenas numeros naturais")

  let fib_list_var = 5
  if fib_list_var >= 0
    then print(fib_list (fib_list_var))
    else print("Apenas numeros naturais")

  print(remover 0 [0,1,2,3,4,5,6,7,8,9])

  print(inserir 0 2 [0,1,2,3])

  print(separarImparPar (quicksort [8,7,6,5,1,2,3,4]))

  print(ordenaimparpar [2,5,4,1])

