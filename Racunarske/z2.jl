#= Za zadatu matricu A veličine 10x10 čije su vrednosti slučajno generisane,
odrediti vektor v koji predstavlja sve elemente iznad glavne dijagonale. =#

using LinearAlgebra

function izvuciVektor()

    A = round.(rand(10,10) * 10)
    vektor = triu(A, 1)
    return vektor[vektor .> 0];
    
end
