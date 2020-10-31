using LinearAlgebra


A = round.(rand(5,5) * 10)
B = round.(rand(5,5) * 10)

pomocna = tril(A, -1)
m1 = pomocna[pomocna .> 0]
m1 = m1[rem.(m1, 3) .== 0]

srednja_A = mean(diag(A))
rev_diagB = diag(reverse(B, dims = 2))
s = mean(rev_diagB[rev_diagB .> srednja_A])


using Plots
t = 0:0.1:10;
y = sin.(t);
plot(t,y)