data Seq a = Nil | Unit a | Cat (Seq a) (Seq a) deriving Show

appSeq :: Seq a -> Seq a -> Seq a

appSeq a b = Cat a b

conSeq :: a -> Seq a -> Seq a

conSeq a b = Cat (Unit a) b

lenSeq :: Seq a -> Int

lenSeq Nil = 0
lenSeq (Unit a) = 1
lenSeq (Cat s1 s2) = lenSeq (s1) + lenSeq (s2)

revSeq :: Seq a -> Seq a

revSeq Nil = Nil
revSeq (Unit a) = Unit a
revSeq (Cat s1 s2) = Cat (revSeq s2) (revSeq s1)

seqToList :: Seq a -> [a]

seqToList Nil = []
seqToList (Unit a) = [a]
seqToList (Cat s1 s2) = seqToList s1 ++ seqToList s2

bottom=bottom

headList :: [a] -> a

headList [] = bottom
headList (x:xs) = x
 
headSeq :: Seq a -> a

headSeq Nil = bottom
headSeq s = headList (seqToList s)

tailSeq :: Seq a -> a

tailSeq Nil = bottom
tailSeq s = headList (seqToList (revSeq s))

normSeq :: Seq a -> Seq a

normSeq Nil = bottom
normSeq (Unit a) = Unit a
normSeq (Cat Nil s2) = normSeq s2
normSeq (Cat s1 Nil) = normSeq s1
normSeq (Cat s1 s2) = Cat (normSeq s1) (normSeq s2)

isNil :: Seq a -> Bool

isNil Nil = True
isNil _ = False

eqSeq :: Seq Int -> Seq Int -> Bool

eqSeq s1 Nil = isNil s1
eqSeq Nil s2 = isNil s2
eqSeq (Unit b) (Unit a) = b == a
eqSeq (Unit a) (Cat s1 s2) = False
eqSeq (Cat s1 s2) (Unit a) = False 
eqSeq (Cat s1 s2) (Cat s3 s4) = eqSeq s1 s3 && eqSeq s2 s4 

seq2List :: Seq a -> [a]

seq2List = seqToList


