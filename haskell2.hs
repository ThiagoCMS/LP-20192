inverterText :: [Char] -> String
inverterText a = text where
  b = words a
  c = reverse b
  text = unwords c

main = do
  print(inverterText "lá vou eu")
