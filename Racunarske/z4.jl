using LinearAlgebra

function trueOrFalse(B)

    parneVrste = B[2:2:end, :]
    neparneKolone = B[:, 1:2:end]
    return prod(parneVrste) > prod(neparneKolone)
    
end

