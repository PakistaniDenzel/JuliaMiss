#=  Neka je matricom A predstavljena prodaja odgovarajućeg proizvoda u
toku jednog meseca, gde svaka kolona odgovara jednom danu u mesecu a vrsta odgovara
jednom određenom tipu proizvoda. Element matrice predstavlja broj prodatih proizvoda u
toku jednog dana, npr. A(i,j)=3 se odnosi na količinu (3) prodatih i-tog proizvoda j-tog dana
u mesecu. 
Odrediti:
    • Najbolje prodavani proizvod u toku meseca,
    • Dan kada je prodat najveći broj proizvoda,
    • Kog dana je bilo najviše proizvoda koji se uopšte nisu prodavali. =#

using LinearAlgebra

A = round.(rand(rand(5:30), 30)*100);

function najboljeProdavani(A)

    return findmax(A)[1]
    
end

function najboljiDan(A)

    return findmax(sum(A, dims = 1))[2][2]    

end

function najviseNeprodatihProizvoda(A)

    a = sum(x-> x==0, A, dims = 1)
    println("Najvise neprodatih proizvoda je bilo u ", findmax(a)[2][2], ". danu meseca")
    return findmax(a)[2][2]

end


