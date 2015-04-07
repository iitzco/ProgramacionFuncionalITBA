power4 x = let sqr y = y * y in sqr (sqr x)

power4' x = x * x * x * x

power4'' x = g (g x) where g a = a * a
