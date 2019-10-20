% Ex 3

 Fs1=1000/2; % Cele trei frecvente cu ajutorul carora putem alege rezolutia
 Fs2= 1000/20; % 2ms, 20 ms sau 200 ms. 
 Fs3= 1000/200;
 Fs=Fs1; % Alegem una din cele trei rezolutii dorite
 
 Dur=0.25; %sec Durata unui bit
 Esant_bit=Fs*Dur; % Numarul de esantioane ce apartin unui bit
 T=20;
 % Valoare aleasa pentru a putea vedea mai multe perioada. Poate fi
 %  preferinte.

 %a) 
 for i=1:Fs*T
     if mod(i-1,Fs*Dur)==0 % Aflam cand incepe un nou bit pentru a da o 
     % valoare aleatoare
     a=2*randi(2)-3; % Randi e functiei ce returneaza numere intregi aleatoare
     % intre 1 si valoarea maxima, in acest caz 2.
     % Prelucrand aceste valori obtinem valorile de -1 si +1
     end
     s(i)=a;
 end
t=1/Fs:1/Fs:T;
figure(1)
plot(t,s)

%b)
 for i=1:Fs*T
     if mod(i-1,Fs*Dur)==0 % Analog ca la punctul a.
     a= 2*randi(4)-5; % Analoog ca la punctul anterior. Avem patru valori
     % posibile acum, de la 1 la 4.
     end
     s(i)=a;
 end
figure(2)
 plot(t,s)
 
 %c)
 for i=1:Fs*T
     if mod(i-1,Fs*Dur)==0 % Analog
     a= 2*randi(6)-7; % Acelasi concept doar ca pentru 6 tensiuni
     end
     s(i)=a;
 end
 figure(3)
 plot(t,s)
 
 %d)
  for i=1:Fs*T
     if mod(i-1,Fs*Dur)==0 % Analog
     a= 2*randi(8)-9; % Pentru cele 8 tensiuni dorite
     end
     s(i)=a;
 end
figure(4)
plot(t,s)
 
