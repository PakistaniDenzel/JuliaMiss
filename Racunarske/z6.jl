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


