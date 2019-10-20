% Ex1
 Fs1=1000/2; % Cele trei frecvente cu ajutorul carora putem alege rezolutia
 Fs2= 1000/20; % 2ms, 20 ms sau 200 ms. 
 Fs3= 1000/200;
 Fs=Fs1; % Alegem una din cele trei rezolutii dorite
Per = 5; % Perioada semnalului tringhiular.
Max = 1; 
Min = -2;
Panta_poz= 1;
Panta_neg= -3/2; % Pentru a ajunge de la 1 la -2 in 2 secunde avem nevoie 
% de o panta de (-2-1)/2= -3/2
 
T=20;
  % Valoare aleasa pentru a putea vedea mai multe perioada. Poate fi
  % modificata dupa preferinte.
  
for i=1:Fs*T % Numarul de esantioane
    a= rem(i/Fs,Per);
    intreg=floor(T);
    fract=T-intreg; 
    a=a+fract; % Analog cu exercitiul precedent aflam in ce moment de timp
    % din perioada ne aflam.
   
    % Cu ajutorul formulei pantii si a momentului de timp in care este 
    % esantionul calculam  amplitudinea 

   if rem(i/Fs,Per) <= 3 % Folosind aceasi metoda ca la exercitiul precedent
   % Vrem sa vedem daca ne aflam in primele 3 secunde.( Partea cu panta pozitiva)
    s(i)= a-2;
  

    else s(i)=(-3/2)*(a-3)+1; % Pentru panta negativa
    end
end

t=1/Fs:1/Fs:T;
figure(1)
plot(t,s) % Afisarea semnalului


