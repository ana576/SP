function [Med_aritm, Patrat, Matrice]= T1_E3_AnaMaria_Cimpoeru_funct(x)% numele functiei este 
% acelasi cu numele fisierului
a=size(x); % aflatam marimea vectorului pentru a il putea parcurgem 
Med_aritm=0;
for m=1:a
    Med_aritm = real(x(m))/max(a) + Med_aritm; % aflam partea reala si dupa o adaugam 
    % la contorul pentru media aritmetica. Maximul lui a, adica 50 in cazul
    % nostru, nu 1 (numarul de linii)
end
Patrat=power(x,2); % Power este functie pentru puteri
Matrice=x'*x; %Matrice obtinuta din inmultirea vectorului cu transpusa.
% Este scrisa sub aceasta forma dupa cum a fost explicat la exemplul 1.

%% Ca sa mearga functia trebuie sa pui path-ul corect in Matlab ( folderul unde ai salvate toate temele)