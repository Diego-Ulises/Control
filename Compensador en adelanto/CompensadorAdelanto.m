%% Obtenci�n del diagrama de bode y determinaci�n de 
%% la ganancia y �ngulo de fase de operaci�n del compensador 
clc
%%Definicion del compensador
num_comp = [4];
den_comp = [1 0.5 0];

compensador = tf(num_comp, den_comp)

bode(num_comp, den_comp)
