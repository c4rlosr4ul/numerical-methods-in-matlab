clear all;

%funciones

f = @(x)(x*x - 5);

g = @(x)((x + (5/x)) / 2);

xo = input('Ingrese el valor que supone raiz: ');

N = input('Ingrese el número de iteraciones deseadas: ');

for i = 1 : N
    
    x1 = g(xo);
    
    ea = abs(((x1 - xo)/x1) * 100);
    
    xo = x1;
    
    fprintf('x1: '); disp(x1);

    fprintf('ea: '); disp(ea);
    
end