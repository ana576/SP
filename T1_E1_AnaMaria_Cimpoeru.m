%E1
%a)
% Pentru ca operatia sa aibe sens trebuie ca lungimea vectorului b sa fie
% egala cu lungimea lui a adica 21.
a=0:0.1:2;
b= ones(21,1); 
a*b 
% Operatia aceasta a calculat suma tuturor elementelor din vectorul a
% pentru ca fiecare valoare din vectorul b este 1.
%b)
b*a 
% Inmultirea matriciala are sens doar cand matricea b este de forma m x p
% si a de forma p x a.

%c)
a.*b'
% Pentru a putea inmultii matricile element cu element a trebuit sa le
% aducem la aceasi forma, in cazul nostru, 1 linie si 21 de coloane.
% Intrucat matricea b este o matrice cu valori de 1 am obtinut din nou
% matricea a.
%% Observatii clc se utilizeaza cand ai deja multe valori in command window
% si vrei sa scapi de ele.
% clear all pentru a scapa de vectorii, matricile, valorile deja calculate,
% iar close all ca sa scapi de grafice. Util ca sa nu se suprapuna
% graficele de la exercitii diferite.