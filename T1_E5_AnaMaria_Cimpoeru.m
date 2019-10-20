%E5
% a)
% situatia 1
F = 50; 
t = 0:0.001:0.2;
s = 2*sin(2*pi*F*t);
figure(1)
plot(t,s,'.-'),xlabel('Timp [s]'),grid

%situatia 2
t = 0:0.01:0.2;
s = 2*sin(2*pi*F*t);
figure(2)
plot(t,s,'.-'),xlabel('Timp [s]'),grid
% In acest caz nu sunt destule valori discrete calculate pentru a reconstrui
% corect sinusul ( pas prea mic)

% situatia 3
t = 0:0.0002:0.2;
s = 2*sin(2*pi*F*t);
figure(3)
plot(t,s,'.-'),xlabel('Timp [s]'),grid
% Folosind mai multe valori discrete obtinem o afisare mai buna a functiei
% sinus

% b)

%Perioada nu se modifica schimband pasul. In cea de-a doua situatie din
%cauza graficului nu se poate afla perioada. Perioada este diferenta dintre
%momentele de timp intre doua minime sau maxime succesive

P = 0.135-0.115 %secunde (Valori de minim masurate pe grafic)

% c)

F = 50; 
F2= 20; % Frecventa de 20 Hz utilizata pentru cosinus
t = 0:0.001:0.2;
s1 = 2*sin(2*pi*F*t); 
s2 = 2*cos(2*pi*F2*t); % Functia cosinus aferenta
figure(4)
plot(t,s1,'.-'),xlabel('Timp [s]'),grid
hold on % Pentru afisarea pe acelasi grafic
plot(t,s2,'.-r'),grid % r de la culoarea rosie (red)