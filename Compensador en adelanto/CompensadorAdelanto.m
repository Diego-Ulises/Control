%% Obtención del diagrama de bode y determinación de 
%% la ganancia y ángulo de fase de operación del compensador 
clc
%%Definicion del compensador
num_comp = [4];
den_comp = [1 0.5 0];

compensador = tf(num_comp, den_comp)

bode(num_comp, den_comp)
