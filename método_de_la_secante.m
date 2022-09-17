clear all;

%función

f = @(x)(x*x - 4*x - 10);

x(1) = input('Ingresar el límite inferior:');
x(2) = input('Ingrese el límite superior:');

for i = 3 : 8
    
    x(i) = x(i - 1) - (f(x(i - 1))) * ((x(i - 1) - x(i - 2)) / (f(x(i - 1)) - f(x(i - 2))));
    
    fprintf('x: '); disp(x(i));
    
end