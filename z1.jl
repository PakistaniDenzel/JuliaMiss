using LinearAlgebra
using Statistics

A = round.(rand(5,5) * 10)
n = diag(A)

B = triu(A, 1)
vektor = B[B .> 0]
m = mean(vektor)