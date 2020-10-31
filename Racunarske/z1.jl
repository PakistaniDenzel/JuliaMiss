#= Formirati matricu 4x4 koja iznad glavne dijagonale ima vrednosti 5, a na
glavnoj dijagonali vrednosti 4  =#

using LinearAlgebra

function formirajMatricu()
    
    A = ((I + zeros(4,4)) .* 4 + triu((ones(4,4) .* 5), 1))
    return A;

end
