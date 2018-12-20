function [ Contar ] = conteo(matriz, columnas, valores)
    
    for v = valores
       maps = matriz(:,columnas) == v;
       Contar(v, columnas) = sum(maps);
    end

end