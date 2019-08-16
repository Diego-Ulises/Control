%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Gráficas de Nyquist para un circuito LCR                 % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc

%La funcion de transferencia es: [CRs /(LCs^2+CRs+1)]

fprintf('La funcion de transferencia para el circuito LCR es: [CRs /(LCs^2+CRs+1)]\n\n');

disp('+-----L-----C-----+-----+');
disp('|                 |');
disp('|                 |');
disp('|                 |');
disp('Vi(t)             R  Vo(t)');
disp('|                 |');
disp('|                 |');
disp('|                 |');
disp('+-----------------+-----+');

fprintf('\n');

L= input('Inserte el valor del inductor (mH): ');
C=input('Inserte el valor del capacitor (mF): ');
R=input('Inserte el valor de la resistencia (k): ');
Ind=input('Inserte el valor independiente: ');

L=L*(10^(-3));
C=C*(10^(-3));
R=R*(10^(3));

LC=L*C;
RC=R*C;
figure(1)
sys= tf([RC 0], [LC RC Ind]) %Función de Transferencia
nyquist(sys)
grid

R=input('Inserte el segundo valor de la resistencia (k): ');
R=R*(10^(3));
LC=L*C;
RC=R*C;
 
sys1=tf([RC 0], [LC RC Ind])
figure(2) 
hold on
nyquist(sys1)
grid

R=input('Inserte el tercer valor de la resistencia (Ohm): ');
LC=L*C;
RC=R*C;
 
sys2=tf([RC 0], [LC RC Ind])
figure(3) 
hold on
nyquist(sys2)
grid

figure(4) 
hold on
nyquist(sys,sys1,sys2) 
grid
