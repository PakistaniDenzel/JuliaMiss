using LinearAlgebra

function generisiMatricu()

    M = zeros(10, 3);
    M[:, 1] = 1:10
    M[:, 2] = (1:10) .^ 2
    M[:, 3] = 2 .^ (1:10)
    return M;
    
end