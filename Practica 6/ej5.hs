data Form = Atom	| Or Form Form	| Implies Form Form	| Forall Char Form	| Not Form	| And Form Form	| Iff Form Form	| Exists Char Form  deriving Show

normalize :: Form -> Form

normalize (Atom) = Atom
normalize (Or f1 f2) = Or (normalize f1) (normalize f2)
normalize (Implies f1 f2) = Or (Not (normalize f1)) (normalize f2)
normalize (Forall a f) = Not (Exists a (Not (normalize f)))
normalize (Not f) = Not (normalize f)
normalize (And f1 f2) = Not (Or (Not (normalize f1)) (Not (normalize f2)))
normalize (Iff f1 f2) = Not (Or (Not (Or (Not (normalize f1)) (normalize f2))) (Not (Or (Not (normalize f2)) (normalize f1))))
normalize (Exists a f) = Exists a (normalize f)

data FN = AtomFN | OrFN FN FN 	| NotFN FN | ExistsFN Char FN deriving Show

form2FN :: Form -> FN

form2FN = fn2FN.normalize

fn2FN :: Form -> FN

fn2FN (Atom) = AtomFN
fn2FN (Not f) = NotFN (fn2FN f)
fn2FN (Or f1 f2) = OrFN (fn2FN f1) (fn2FN f1)
fn2FN (Exists a f) = ExistsFN a (fn2FN f)
fn2FN _ = bottom

bottom = bottom
