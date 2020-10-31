using LinearAlgebra

#= findmax vraca (maxVrednost, CartesianIndex(vrsta, kolona)) [2][1] pristupamo
CartesianIndexu kao [2] od findmaxa, i onda [1] za pristup broju vrste =#
function vrstaMaxSuma(A)

    sumaVrste = round.(sum(A, dims = 2))
    rez = findmax(sumaVrste)[2][1]
    return rez
end
