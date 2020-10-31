# Napisati funkciju koja izračunava obim i površinu kruga poluprečnika r.

using LinearAlgebra

function obimKruga(r)
    println("Obim kruga je: ", round(2*r*pi))
    return round(2*r*pi);
end

function povrsinaKruga(r)
    println("Povrsina kruga je: ", round(4*pi*(r^2)))
    return round(4*pi*(r^2));
end

