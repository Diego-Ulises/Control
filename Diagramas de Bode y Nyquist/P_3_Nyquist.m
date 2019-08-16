%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Diagrama de Nysquist                             %
%                     Autor: Diego Villegas Govea                         % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc

x0=input('Ingrese el coeficiente del numerador: ');
y1=input('Ingrese el coeficiente de S^2 del denominador: ');
y2=input('Ingrese el coeficiente de S del denominador: ');
y3=input('Ingrese el coeficiente del término independiente del denominador: ');

sys=tf([x0],[y1 y2 y3]) 

nyquist(sys);