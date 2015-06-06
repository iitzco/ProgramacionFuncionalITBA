data SortedList a = Empty | SortedList (a,SortedList a) deriving Show

count :: (SortedList a) -> Int

count Empty = 0
count ( SortedList (a , b ) )= 1 + count b