% Ex1
 Fs1=1000/2; % Cele trei frecvente cu ajutorul carora putem alege rezolutia
 Fs2= 1000/20; % 2ms, 20 ms sau 200 ms. 
 Fs3= 1000/200;
 Fs=Fs1; % Alegem una din cele trei rezolutii dorite
 Per=2; % Perioada semnalului dreptunghiular
 Factor_ump= 0.25; % Factor umplere
 Max=0.5; % Valoare maxima
 Min= -1; % Valoare minima
 T_max_per=0.25*2; % Timpul dintr-o perioada in care avem semnal dreptunghiular
 
  T=20;
  % Valoare aleasa pentru a putea vedea mai multe perioada. Poate fi
  % modificata dupa preferinte.
  
 for i=1:Fs*T  %numarul de esantioane intr-un timp T este egal cu Fs*T
     
     % Pentru a lua decizia de minim sau maxim va trebui sa vedem la ce
     % moment de timp dintr-o perioada se afla esantionul respectiv.
     % Decizia se va lua pe baza factorului de umplere
     
     a= rem(i/Fs,Per); %Calculam restul impartirii la perioada pentru a vedea
     % daca suntem la inceputul perioadei sau dupa jumatatea acesteia. 
     % Valorile pot fi 0 sau 1.
    intreg=floor(T);
    fract=T-intreg; % Metoda pentru calculul partii fractionare
    a=a+fract; % Aflam astfel in ce moment de timp din acea perioada se afla
    % esantionul curent. Decizia se va lua pe baza acestui lucru.

 if a < T_max_per % Conditia sa avem maxim ( esantionul se afla in perioada
     % "de umplere" a semnalului
     s(i)= Max;
 else s(i)= Min; %minimul
 end
 end
 
  t=1/Fs:1/Fs:T; % Afisarea grafica a semnalului
    plot (t,s)