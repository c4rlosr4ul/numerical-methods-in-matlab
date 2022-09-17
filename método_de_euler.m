clear all;

f = @(x, y)(3*x*x + 1); %función

x0 = input('Ingrese el valor de x0: ');
xn = input('Ingrese el valor de xn: ');
y0 = input('Ingrese el valor de y0: ');
h = input('Ingrese el valor de h: ');

while xn ~= x0
    
    z = f(x0, y0);
    
    y1 = (y0 + (z * h)) ;
    
    x1 = (x0 + h);
    
    fprintf('el valor de x1 es: '); disp(x1);
    fprintf('el valor de y1 es: '); disp(y1);
    
    x0 = x1;
    y0 = y1;
    
end