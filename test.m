function [ Resultado ] = test(matrizTest, matrizNorm, priori)
    
    renglones = size(matrizTest(:,1));
    renglones = renglones(1);
    Resultado = zeros(renglones, 2);
    
    for i = 1 : renglones
        vectorTest = matrizTest(i, 2:10);
        prob = priori;
        
        for j = 1 : length(vectorTest)
            prob = prob*matrizNorm(vectorTest(j), j);
        end
        
        Resultado(i, 1) = prob;
        Resultado(i, 2) = matrizTest(i, 11);
        
    end
   
    Resultado
end