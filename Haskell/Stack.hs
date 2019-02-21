module Stack (Stack, empty, push, pop, top, isEmpty) where
data Stack a       = EmptyStack | Stk a (Stack a)
push x s           = Stk x s
top (Stk x s)      = x
pop (Stk _ s)      = s
empty              = EmptyStack
isEmpty EmptyStack = True
isEmpty (Stk x s)  = False

instance (Show a) => Show (Stack a) where
   show EmptyStack = "|"
   show (Stk x y) = (show x) ++ " <- " ++ (show y)


instance (Eq a) => Eq (Stack a) where 
	
	EmptyStack == EmptyStack = True
	EmptyStack == Stk x y = False
	Stk x y == EmptyStack = False
	Stk x y == Stk a b = x==a && y==b
