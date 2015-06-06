data TipTree a = Tip a | Join (TipTree a) (TipTree a) deriving Show

heightTip :: (TipTree a) -> Int

heightTip (Tip a) = 0
heightTip (Join h1 h2) = 1 + ((heightTip h1) `max` (heightTip h2))    

leaves :: (TipTree a) -> Int

leaves (Tip a) = 1
leaves (Join h1 h2) = leaves h1 + leaves h2

nodes :: (TipTree a) -> Int

nodes (Tip a) = 0
nodes (Join h1 h2) = nodes h1 + nodes h2 + 1

walkover :: (TipTree a) -> [a]

walkover (Tip a) = [a]
walkover (Join h1 h2) = walkover h1 ++ walkover h2

mirrorTip :: (TipTree a) -> (TipTree a) 

mirrorTip (Tip a) = Tip a
mirrorTip (Join h1 h2) = Join (mirrorTip h2) (mirrorTip h1)

mapTip :: (TipTree a) -> (a -> b) -> (TipTree b)

mapTip (Tip a) f = Tip (f a)
mapTip (Join h1 h2) f = Join (mapTip h1 f) (mapTip h2 f) 