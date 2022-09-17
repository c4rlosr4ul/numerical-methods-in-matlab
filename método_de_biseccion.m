clear all;

f = @(x)(x*x - 4*x - 10); %función

xl = input('Ingresar el límite inferior:');
xu = nput('Ingrese el límite superior:');
es = input('Ingrese el error estimado ');

fxl = f(xl);
fxu = f(xu);

if fxl * fxu < 0
    fprintf('Las suposiciones inciciales son correctas. \n');
else
    fprintf('Las suposiciones inciciales son incorrectas. \n');
end

xr = (xu + xl) / 2;
ea = 10000;

fprintf('xr: '); disp(xr);
fprintf('ea: '); disp(ea);

while ea > es
    
    fxr = f(xr);
    fxl = f(xl);

    if fxl * fxr < 0
        xu = xr;
    else if fxl * fxr > 0
        xl = xr;
    end

    xrprev = xr;
    xr = (xu + xl) / 2;
    
    ea = abs((xrprev - xr) / xr) * 100;
    fprintf('xr: '); disp(xr);
    fprintf('ea: '); disp(ea);
    
end