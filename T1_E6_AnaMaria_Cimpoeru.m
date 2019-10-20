%E6
F0 = 2000 ; % Frecventa este 1/Perioada
Fs = 12000; % Frecventa de esantionare 
% In 10 ms cu 0.5 ms pe bit vom aveam 10/0.5 = 20 de biti
A=zeros(1,20); % Vector care contine 20 de biti momentan cu zerouri
for i=1:20
   A(i)=randi([0,1]); % cu ajutorul functiei randi se atributie aleator o
   % valoare de 0 sau 1
end

% Fiecarui bit ii vor corespunde un numar de Fs/F0 esantioane
Esant_bit= Fs/F0;

% Numar de esantioane N=10ms*12kHz 

N = 10*12;
for i=1:N
    s(i)= A(floor(i/Esant_bit+1-0.001)); % Semnalul este format astfel:
    % fiecarui bit ii sunt atribuite 6 esantioane, iar valoarea de 0.001 am
    % folosit-o pentru a nu exista probleme la depasirea indexului
    % vectorilor
end
    
t=0:1/12:10-1/12;
figure(1) % semnalul continuu in timp 
plot (t,s),xlabel('milisecunde (ms)'),grid 

n = 0:N-1;
figure(2) % semnalul discret in functie de n
stem (n,s), grid

%% % Cel de-al x-lea esantion apartine bitului y astfel: catul impartirii lui x la Esant_bit este y 