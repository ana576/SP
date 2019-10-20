%E4
%a)
z=zeros(1,21); % matrice de zerouri de aceleasi dimensiuni ca z
z(6)=1; % punem valoarea 1 ca sa obtinem z-ul cerut
n=0:20;
m=-5:15;
figure(1) % subplot luat din exemplu. cu ajutorul functiei obtinem doua
% grafice in aceasi figura
subplot(2,1,1),stem(n,z),grid 
subplot(2,1,2),stem(m,z),grid 
%b)
t=abs(10-n); % definim t-ul. Functia abs este modulul
figure(2) % afisarea dupa cum este ceruta.
stem(n,t), grid
%c) 
n1= -15:25; % definim ca n1 pentru ca vom avea nevoie cand facem graficele
x1=sin(pi*n1/17); % definirea lui x1
n2= 0:50
x2=cos(pi*n2/sqrt(23)); % definirea lui x2
figure(3) % afisarea pe acelasi grafic in timp discret
stem(n1,x1),grid 
hold on % necesar ca sa punem doua semnale pe acelasi grafic
stem(n2,x2), grid
figure (4) % afisarea in aceasi fereastra in timp discret
subplot(2,1,1),stem(n1,x1),grid
subplot(2,1,2),stem(n2,x2),grid 

figure(5) % afisarea pe acelasi grafic in timp continuu
plot(n1,x1),grid 
hold on 
plot(n2,x2), grid
figure (6) % afisarea in aceasi fereastra in mod continuu
subplot(2,1,1),plot(n1,x1),grid
subplot(2,1,2),plot(n2,x2),grid 

%% Observatie: Semnal in timp discret: momentele de timp pentru care calculam semnalul sunt finite, un semnal continuu este format dintr-un
% infinit de valori ale lui t, imposibil de realizat in software. Functia
% plot uneste punctele si incearca sa refaca semnalul continuu.