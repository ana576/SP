% Ex 5
 
 Fs1=1000/2; % Cele trei frecvente cu ajutorul carora putem alege rezolutia
 Fs2= 1000/20; % 2ms, 20 ms sau 200 ms. 
 Fs3= 1000/200;
 Fs=Fs1; % Alegem una din cele trei rezolutii dorite
 
T=30; % [sec] 
  % Valoare aleasa pentru a putea vedea mai multe perioada. Poate fi
  % modificata dupa preferinte.
Per = 4; % [sec] Perioada semnalului sinusoidal
A=1.5; % Amplitudinea semnalului sinusoidal


F0=1/Per;
w0 = 2*pi*F0/Fs; 
N = Fs*T;      %% Numar de esantioane N=20*4kHz 
n = 0:N-1;
s = A*sin(w0*n); % Analog cu exercitiul precedent
for i=1:N
    if s(i)< 0
        s(i)= -1*s(i);
    end
end
% Transformarea sinusului intr-unul cu dublu alternanta
t=0:1/Fs:T-1/Fs;
figure(1)
plot(t,s),grid 

%% Observatie: Semnalul sinusoidal cu dubla alternanta este un semnal 
% sinusoidal in care valorile negative sunt trecute in modul.
% Astfel, obtinem mereu jumatate de sinus pozitiv, iar perioada semnalului
% nostru este de Per/2= 2 secunde