-- PD 2010-11
-- 2� pr�ctica (19 de octubre)
-- Departamento de Ciencias de la Computaci�n e I.A.
-- Universidad de Sevilla
-- =====================================================================
 
-- import Test.QuickCheck 

-- ---------------------------------------------------------------------
-- Ejercicio 1. Define la funci�n media3 que recibe como argumentos 
-- tres n�meros y devuelve la media aritm�tica de dichos n�meros. Por 
-- ejemplo, 
--    media3 1 3 8     =>  4.0
--    media3 (-1) 0 7  =>  2.0
--    media3 (-3) 0 3  =>  0.0

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------

media3 :: Fractional a => a -> a -> a -> a
media3 a b c = (a+b+c)/3

-- ---------------------------------------------------------------------
-- Ejercicio 2. Define la funci�n sumaMonedas que recibe los
-- siguientes argumentos: euros, dos-euros, cinco-euros, diez-euros y
-- veinte-eros y devuelve la cantidad total de euros. Por ejemplo,
--    sumaMonedas 0 0 0 0 1  =>  20
--    sumaMonedas 0 0 8 0 3  => 100
--    sumaMonedas 1 1 1 1 1  =>  38

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------

sumaMonedas :: Num a => a -> a -> a -> a -> a -> a
sumaMonedas a b c d e = a*1+b*2+c*5+d*10+e*20 

-- ---------------------------------------------------------------------
-- Ejercicio 3. Define la funci�n intercala que recibe dos listas xs e 
-- ys de dos elementos cada una, y devuelve una lista de cuatro 
-- elementos, construida intercalando los elementos de xs e ys. Por
-- ejemplo,
--    intercala [1,4] [3,2]  =>  [1,3,4,2]

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------

intercala :: [a] -> [a] -> [a]
intercala [x1,x2] [y1,y2] = [x1,y1,x2,y2]

-- ---------------------------------------------------------------------
-- Ejercicio 4. Define la funci�n reagrupa que toma una tupla cuyos
-- elementos son tres tuplas de tres elementos cada una, y act�a del 
-- siguiente modo:
--    reagrupa ((1,2,3),(4,5,6),(7,8,9))  =>  ((1,4,7),(2,5,8),(3,6,9))

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------



-- ---------------------------------------------------------------------
-- Ejercicio 5. Define la funci�n maxMin que recibe cuatro n�meros, y 
-- devuelve una lista formada por dos pares de la forma ("min",x) y 
-- ("max". y) donde x e y son el m�nimo y el m�ximo de los cuatro 
-- n�meros.
--    maxMin 2 5 (-1) 7  => [("min",-1),("max",7)]
--    maxMin 0 5 9 4     => [("min",0),("max",9)]
-- Indicaci�n: Usar las funciones minimum y maximum.

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------

maxMin :: (Ord a) => a -> a -> a -> a -> [(String,a)]
maxMin a b c d = [("min",(minimum [a,b,c,d])),("max",(maximum [a,b,c,d]))]

-- ---------------------------------------------------------------------
-- Ejercicio 6. Define la funci�n
--    tailSeguro :: [a] -> [a]
-- que se comporta como la funci�n tail, excepto que tailSeguro aplica
-- la lista vac�a en s� misma y tail devuelve error en ese caso. Da
-- cuatro definiciones distintas utilizando
--    1. una expresi�n condicional
--    2. guardas
--    3. patrones
-- Comprobar con QuickCheck que las definiciones son equivalentes.
-- 
-- Indicaci�n: Usar la funci�n null.
-- --------------------------------------------------------------------

tailSeguro :: [a] -> [a]
tailSeguro xs 

-- ---------------------------------------------------------------------
-- Ejercicio 7. La disyunci�n excluyente xor de dos f�rmulas se verifica
-- si una es verdadera y la otra es falsa.
-- ---------------------------------------------------------------------
-- Ejercicio 7.1. Define la funci�n xor_1 que calcule la disyunci�n
-- excluyente a partir de la tabla de verdad. Usar 4 ecuaciones, una por
-- cada l�nea de la tabla.
-- ---------------------------------------------------------------------

-- ---------------------------------------------------------------------
-- Ejercicio 7.2. Define la funci�n xor_2 que calcule la disyunci�n
-- excluyente a partir de la tabla de verdad y patrones. Usa 2
-- ecuaciones, una por cada valor del primer argumento.
-- ---------------------------------------------------------------------

-- ---------------------------------------------------------------------
-- Ejercicio 7.3. Define la funci�n xor_3 que calcule la disyunci�n
-- excluyente a partir de la disyunci�n (||), conjunci�n (&&) y negaci�n
-- (not). Usar 1 ecuaci�n.
-- ---------------------------------------------------------------------

-- ---------------------------------------------------------------------
-- Ejercicio 7.4. Define la funci�n xor_4 que calcule la disyunci�n
-- excluyente a partir de desigualdad (/=). Usa 1 ecuaci�n.
-- ---------------------------------------------------------------------

-- ---------------------------------------------------------------------
-- Ejercicio 7.5. Comprobar con QuickCheck la equivalencia de las 4
-- definiciones anteriores.
-- ---------------------------------------------------------------------
