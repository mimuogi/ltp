-- v1 (without type classes)
type Height = Float
type Width  = Float
type Radius = Float
data Shape  = Rectangle Height Width |
              Circle Radius
              deriving (Eq, Show)
area :: Shape -> Float
perimeter :: Shape -> Float
area (Rectangle h w) = h * w
area (Circle r) = pi * r**2
perimeter (Rectangle h w ) = h + w + h + w
perimeter (Circle r) = 2*pi*r
