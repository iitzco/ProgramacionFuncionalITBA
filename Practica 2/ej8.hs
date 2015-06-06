--a)

data ColorPrimario = Azul | Amarillo | Rojo

data ColorSecundario = M ColorPrimario ColorPrimario 

mezclar :: (ColorPrimario,ColorPrimario) -> ColorSecundario

mezclar (Azul,Amarillo) = M Azul Amarillo 
mezclar (Azul,Rojo) = M Azul Rojo
mezclar (Rojo,Amarillo) = M Rojo Amarillo

mezclar (x,y) = mezclar (y,x)



--b)

data Punto = D2 Float Float | D3 Float Float Float

modulo :: Punto -> Float
xCoord :: Punto -> Float
yCoord :: Punto -> Float
suma :: Punto -> Float

modulo (D2 x y) = sqrt (x*x + y*y)
modulo (D3 x y z) = sqrt (x*x + y*y + z*z)

xCoord (D2 x y) = x
yCoord (D2 x y) = y

suma (D2 x y) = x + y
suma (D3 x y z) = x + y + z

--c)

data Shape = Circle Float | Rectangle Float Float

area :: Shape -> Float
perimetro :: Shape -> Float

area (Circle x) = pi * x * x
area (Rectangle b h) = b * h

perimetro (Circle x) = 2 * pi * x 
perimetro (Rectangle b h) = 2 * b + 2 * h

--d)

data Figura3D = Cubo Float | Cilindro Float Float | Esfera Float

area3d :: Figura3D -> Float
volumen3d :: Figura3D -> Float

area3d (Cubo x) = x * x * x
area3d (Cilindro r h) = r
area3d (Esfera r) = r

volumen3d (Cubo x) = x
volumen3d (Cilindro r h) = r
volumen3d (Esfera r) = r

--e)

type Nombre = [Char]
type Documento = Integer
type Edad = Integer
type Direccion = [Char]
type Telefono = Integer
type TelefonoLaburo = Integer
type DireccionLaburo = [Char]

data Persona = Laburante Nombre Edad Documento Direccion Telefono DireccionLaburo TelefonoLaburo 
				| Desempleado Nombre Edad Documento Direccion Telefono

trabaja :: Persona -> [Char]

trabaja (Laburante _ _ _ _ _ _ _) = "Si"
trabaja (Desempleado _ _ _ _ _) = "No"












