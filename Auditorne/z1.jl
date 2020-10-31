#= Napisati Julia kod koji za zadatu kvadratnu matricu A određuje:
  - vektor m koji se formira od elemenata sa glavne dijagonale matrice A,
  - skalar s koji predstavlja srednju vrednost elemenata iznad glavne dijagonale matrice A. (koristiti funkciju mean() iz paketa Statistics). =#

using LinearAlgebra
using Statistics

A = round.(rand(5,5) * 10)
n = diag(A)

B = triu(A, 1)
vektor = B[B .> 0]
m = mean(vektor)
