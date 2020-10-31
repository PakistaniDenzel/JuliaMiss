using LinearAlgebra

function formirajMatricu()
    
    A = ((I + zeros(4,4)) .* 4 + triu((ones(4,4) .* 5), 1))
    return A;

end
