#= Napisati Julia kod koji za zadate kvadratne matrice A i B istih dimenzija određuje:
   - vektor m koji se sastoji od elemenata ispod glavne dijagonale matrice A koji su pozitivni i deljivi sa 3,
   - skalar s koji predstavlja srednju vrednost elemenata sa sporedne dijagonale matrice B koji su veći od srednje vrednosti elemenata sa glavne
     dijagonale matrice A.  =#

using LinearAlgebra

A = round.(rand(5,5) * 10)
B = round.(rand(5,5) * 10)

pomocna = tril(A, -1)
m1 = pomocna[pomocna .> 0]
m1 = m1[rem.(m1, 3) .== 0]

srednja_A = mean(diag(A))
rev_diagB = diag(reverse(B, dims = 2))
s = mean(rev_diagB[rev_diagB .> srednja_A])

