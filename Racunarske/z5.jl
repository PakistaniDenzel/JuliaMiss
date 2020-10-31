#=  Generisati matricu A tako da prva kolona sadrži brojeve od 1 do 10, druga
kolona sadrži kvadrate brojeva od 1 do 10 a treća kolona sadrži prvih deset stepena broja 2. =#

using LinearAlgebra

function generisiMatricu()

    M = zeros(10, 3);
    M[:, 1] = 1:10
    M[:, 2] = (1:10) .^ 2
    M[:, 3] = 2 .^ (1:10)
    return M;
    
end
