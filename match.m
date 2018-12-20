function [ Final ] = match(testBenignos, testMalignos, test)

    renglones = size(testBenignos(:, 1));
    renglones = renglones(1);
    Final = zeros(renglones, 3);
    contador = 0;
    
    for i = 1 : renglones
        if testBenignos(i, 1) > testMalignos(i, 1)
            Final(i, 1) = 2;
        else
            Final(i, 1) = 4;
        end
        
        Final(i, 2) = test(i, 11);
                        
    end
    
    for i = 1 : renglones
        if Final(i, 1) == Final(i, 2)
            contador = contador +1;
        end
    end
    
    contador = contador * 100;
    contador = contador/renglones;
    Final(1, 3) = contador;
    
    Final;
    
end
