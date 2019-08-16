%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   Gráficas de Bode para un circuito RLC                 % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc

%La funcion de transferencia es: ^[1 /(LCs^2+RCs+1)]

fprintf('La funcion de transferencia para el circuito RLC es: [1/(LCs^2+RCs+1)]\n\n');

disp('+-----R-----L-----+-----+');
disp('|                 |');
disp('|                 |');
disp('|                 |');
disp('Vi(t)             C  Vc(t)');
disp('|                 |');
disp('|                 |');
disp('|                 |');
disp('+-----------------+-----+');

fprintf('\n');

%Numerador
x1= input('Inserte el coeficiente del numerador: ');

%Denominador
L= input('Inserte el valor del inductor (mH): ');
C=input('Inserte el valor del capacitor (uF): ');
R=input('Inserte el valor de la resistencia (k): ');
Ind=input('Inserte el valor independiente: ');

L=L*(10^(-3));
C=C*(10^(-6));
R=R*(10^(3));

LC=L*C;
RC=R*C;

sys= tf([x1], [LC RC Ind]) %Función de Transferencia
bode(sys)

C=input('Inserte el segundo valor del capacitor (uF): ');
C=C*(10^(-6));

LC=L*C;
RC=R*C;
 
sys1=tf([x1], [LC RC Ind])
figure(2) 
hold on
bode(sys1)

C=input('Inserte el tercer valor del capacitor (uF): ');
C=C*(10^(-6));

LC=L*C;
RC=R*C;
 
sys2=tf([x1], [LC RC Ind])
figure(3) 
hold on
bode(sys2)

figure(4) 
hold on
bode(sys,sys1,sys2) 

