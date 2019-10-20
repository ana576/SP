%E2
n=20; %Am ales o dimensiune posibila a vectorului
Gauss=randn(1,n) % Functie de creare a vectorului cu distributie normala 
%Gaussiana. Nu folosim ";" pentru a il putea vizualiza
counter=0; % Valorile negative sunt scrise intr-o matrice care va fi
% citita la sfarsitul programului. Pentru scrierea in matrice avem nevoie
% de un counter

for i=1:n %Parcurgerea vectorului
    if Gauss(1,i)<0 % Conditia de numar negativ
        counter = counter + 1; 
        Negativ(1,counter)=Gauss(1,i); % Cu ajutorul counterului 
        %Salvez valorile negative in matrice     
    end
end
Negativ % Afisarea matricii cu valori negative