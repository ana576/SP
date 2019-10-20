% Ex4
 Fs1=1000/2; % Cele trei frecvente cu ajutorul carora putem alege rezolutia
 Fs2= 1000/20; % 2ms, 20 ms sau 200 ms. 
 Fs3= 1000/200;
 Fs=Fs1; % Alegem una din cele trei rezolutii dorite
 
T=30;
  % Valoare aleasa pentru a putea vedea mai multe perioada. Poate fi
  % modificata dupa preferinte.
Per = 3; % Perioada semnalului sinusoidal
A=0.8; % Amplitudinea semnalului sinusoidal

F0=1/Per;
w0 = 2*pi*F0/Fs; 
N = Fs*T;      % Numar de esantioane N=20*4kHz 
n = 0:N-1;
s = A*sin(w0*n); % Obtinem semnalul sinusoidal folosind metoda prezentata
% in platforma

for i=1:N
    if s(i)< 0
        s(i)=0;
    end
end 
% Am transformant semnalul in unul sinusoidal redresat mono alternanta
t=0:1/Fs:T-1/Fs;
figure(1)
plot(t,s),grid 

%% Observatie: Semnalul sinusoidal redresat mono alternanta are valoarea 0
% pe partea in care valorile acestuia ar trebui sa fie negative. Perioada
% ramane tot 3 secunde in acest caz.
 