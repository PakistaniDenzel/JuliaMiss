using LinearAlgebra

function izvuciVektor()

    A = round.(rand(10,10) * 10)
    vektor = triu(A, 1)
    return vektor[vektor .> 0];
    
end
