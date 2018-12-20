%Funcion para calcular la probabilidad cuando se tiene un valor en una
%columna 
function [ Prob ] = Probabilidad(Matriz_Casos, columna, valor)

    num = size(Matriz_Casos, 1);
    map = Matriz_Casos(:, columna) == valor;
    criterio = sum(map);
    Prob = criterio/num;

end