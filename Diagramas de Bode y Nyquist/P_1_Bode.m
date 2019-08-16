%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          Diagramas de Bode                              % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clc

xo=input('Ingrese el factor que multiplica el numerador: ');
x1=input('Ingrese el coeficiente de S^2: ');
x2=input('Ingrese el coeficiente de S: ');
x3=input('Ingrese el coeficiente de del término independiente: ');
y1=input('Ingrese el coeficiente de S^2 del denominador: ');
y2=input('Ingrese el coeficiente de S del denominador: ');
y3=input('Ingrese el coeficiente de del término independiente del denominador: ');

x1=xo*(x1);
x2=xo*(x2);
x3=xo*(x3);


%sys=tf([9 1.8 9],[1 1.2 9 0]) 
sys=tf([x1 x2 x3],[y1 y2 y3 0]) 
bode(sys)  

x1=input('Ingrese el coeficiente de S^2: ');
x2=input('Ingrese el coeficiente de S: ');
x3=input('Ingrese el coeficiente de del término independiente: : ');

%sys1=tf([1 0.2 1],[1]) 
sys1=tf([x1 x2 x3],[1]) 
figure(2) 
hold on
bode(sys1) 

sys2=tf([1],[1 0])          
bode(sys2) 

y1=input('Ingrese el coeficiente de S^2 del denominador: ');
y2=input('Ingrese el coeficiente de S del denominador: ');
y3=input('Ingrese el coeficiente de del término independiente del denominador: ');

%sys3=tf([1],[1/9 1.2/9 1])
sys3=tf([1],[y1 y2 y3])
bode(sys3)                  
hold off    
figure(3) 

bode(sys,sys1,sys2,sys3)    
