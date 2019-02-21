-- v2 (with type classes)
type Height = Float
type Width  = Float
type Radius = Float
data Rectangle  = Rectangle Height Width deriving (Eq, Show)
data Circle = Circle Radius deriving (Eq, Show)

class (Eq a, Show a) => Shape a where
   area :: a -> Float
   perimeter :: a -> Float
   
instance Shape Rectangle where
   area (Rectangle h w) = h * w
   perimeter (Rectangle h w ) = h + w + h + w

instance Shape Circle where
   area (Circle r) = pi * r**2
   perimeter (Circle r ) = 2*pi*r

type Volume = Float
volumePrism :: (Shape a) => a -> Height -> Volume
volumePrism base height = (area base) * height

surfacePrism :: (Shape a) => a -> Height -> Float
surfacePrism base height = (area base)*2 + (perimeter base) * height
