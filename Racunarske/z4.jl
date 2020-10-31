#= Neka je zadata proizvoljna matrica B. Napisati kod koji određuje logičku
vrednost da li je proizvod svih elemenata u parnim vrstama veći od sume svih elemenata u
neparnim kolonama (true ako da, false ako ne). =# 

using LinearAlgebra

function trueOrFalse(B)

    parneVrste = B[2:2:end, :]
    neparneKolone = B[:, 1:2:end]
    return prod(parneVrste) > prod(neparneKolone)
    
end

