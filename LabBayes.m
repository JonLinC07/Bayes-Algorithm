addpath('C:\Users\ojmlc\Documents\Universidad\VII\Data Mining\Tumores');

%Probabilidades 
probBenigno = Probabilidad( Train, 10, 2 );
probMaligno = Probabilidad( Train, 10, 4 );

%Tumores benignos
benignos = Train(:,10) == 2;
mapBenignos = Train(benignos,:);

%Tumores malignos 
malignos = Train(:,10) == 4;
mapMalignos = Train(malignos,:);

%Conteo de valores unicos 
valores = (1:10);
columnas = (1:9);
conteoBenignos = conteo(mapBenignos, columnas, valores);
conteoMalignos = conteo(mapMalignos, columnas, valores);

%sumar 1 a cada una de las matrices
correccionBenignos = conteoBenignos + 1;
correccionMalignos = conteoMalignos + 1;

%Normalizacion de de las matrices
frecBen = sum(correccionBenignos(:, 1));
normBenignos = correccionBenignos(:, 1:9)/frecBen;

frecMal = sum(correccionMalignos(:, 1));
normMalignos = correccionMalignos(:, 1:9)/frecMal;
%Discard
%mal = .3491*.2061*.0242*.0182*.1212*.0848*.0485*.1576*.1758*.05273;
%ben = .6509*.1739*.7960*.7592*.7993*.7726*.8428*.2809*.8428*.9398;

%funcion test
testBenignos = test(Test, normBenignos, probBenigno);
testMalignos = test(Test, normMalignos, probMaligno);

%Taza de acierto
matchTotal = match(testBenignos, testMalignos, Test);









