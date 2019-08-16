%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Respuesta a escalón unitario de sistemas compensados y no compensados  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
num1 = [4];
den1 = [1 0.5 4];

planta = tf(num1, den1)

num=[95.381 81 10];
den=[9.5381 95.4573 220.605 136.686 2 0];

compensador = tf(num, den)

t=0:0.05:15;
c1=step(num1,den1,t);
c=step(num,den,t);
plot(t,c1,'-',t,c,'-.')
grid
title('Respuesta a escalón unitario de sistemas compensados y no compensados')
xlabel ('t Seg')
ylabel ('Salidas c1, y c')
legend('Sistema compensado', 'Sistema no compensado');

% figure
% r=tf([num], [den]);
% rlocus (r)
