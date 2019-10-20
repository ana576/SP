%E3
C= 10*rand(1,50) + 10*rand(1,50)*j;
% Vectorul cu valori aleatoare complexe contine 50 de valori, iar acestea
% sunt distribuite in intervalul 0 si 10+10*j
[Med_aritm, Patrat, Matrice]= T1_E3_AnaMaria_Cimpoeru_funct(C); % Apelarea functiei
% Cele trei cerinte pot fi vizualizate in workspace pentru a nu inunda 
%command windowul cu matrici.
%% Media tinde spre 0 pentru ca avem distributie Gaussiana care tinde spre 0