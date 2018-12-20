%Eliminar la primer columna 
Train(:,1) = [];

%Tumores benignos
benignos = Train(:,10) == 2;
mapBenignos = Train(benignos,:);

%Tumores malignos 
malignos = Train(:,10) == 4;
mapMalignos = Train(malignos,:);

%Grafica espezor de masa
plot(mapBenignos(:,1), 'Color', [0.0,0.0,0.9])
hold on
plot(mapMalignos(:,1), 'Color', [0.9,0.0,0.0])
title('Espezor de la masa')
xlabel('Personas')
ylabel('Espezor de la masa')

%Grafica de la uniformidad en el tamaño de las celulas
plot(mapBenignos(:,2), 'Color', [0.0,0.0,0.9])
hold on 
plot(mapMalignos(:,2), 'Color', [0.9,0.0,0.0])
title('Uniformidad del tamaño de las celulas')
xlabel('Uniformidad')
ylabel('Tumores')

%Uniformidad en la forma de las celulas 
plot(mapBenignos(:,3), 'Color', [0.0,0.0,0.9])
hold on
plot(mapMalignos(:,3), 'Color', [0.9,0.0,0.0])
title('Uniformidad de la forma de las celulas')
xlabel('Tumores')
ylabel('Uniformidad')

%Grafica de adherencia marginal
plot(mapBenignos(:,4), 'Color', [0.0,0.0,0.9])
hold on
plot(mapMalignos(:,4), 'Color', [0.9,0.0,0.0])
title('Adherencia Marginal')
xlabel('Tumores')
ylabel('Adherencia Marginal')

%Grafica del tamaño de la celula epitelial
plot(mapBenignos(:,5), 'Color', [0.0,0.0,0.9])
hold on
plot(mapMalignos(:,5), 'Color', [0.9,0.0,0.0])
title('tamaño de la celula epitelial')
xlabel('Tumores')
ylabel('Tamaño')

%Grafica de los nucleos desnudos
plot(mapBenignos(:,6), 'Color', [0.0,0.0,0.9])
hold on
plot(mapMalignos(:,6), 'Color', [0.9,0.0,0.0])
title('Nucleos Desnudos')
xlabel('Tumores')
ylabel('Nucleos Desnuds')

%Grafica cromatina suave 
plot(mapBenignos(:,7), 'Color', [0.0,0.0,0.9])
hold on
plot(mapMalignos(:,7), 'Color', [0.9,0.0,0.0])
title('Criomatina Suave')
xlabel('Tumores')
ylabel('Cromatina Suave')

%Grafsica nucleoli normal
plot(mapBenignos(:,8), 'Color', [0.0,0.0,0.9])
hold on
plot(mapMalignos(:,8), 'Color', [0.9,0.0,0.0])
title('Nucleoli Normal')
xlabel('Tumores')
ylabel('Nucleoli Normal')

%Grafica de mitosis 
plot(mapBenignos(:,9), 'Color', [0.0,0.0,0.9])  
hold on
plot(mapMalignos(:,9), 'Color', [0.9,0.0,0.0])
title('Mitosis')
xlabel('Tumores')
ylabel('Mitosis')