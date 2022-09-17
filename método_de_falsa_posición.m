clear all;

f = @(x)(x*x - x - 2); %función

xl = input('Ingresar el límite inferior: ');
xu = input('Ingresar el límite superior: ');
es = input('Ingrese el error estimado: ');

fxl = f(xl);
fxu = f(xu);

if fxl * fxu < 0
    fprintf('Las suposiciones iniciales son correctas. \n');
    
    xr = xu - (fxu * (xl - xu) / (fxl - fxu));
    ea = 10000;
    fprintf('xr: '); disp(xr);
    fprintf('ea: '); disp(ea);
    
    while ea > es
        fxr = f(xr);
        if fxl * fxr > 0
            xl = xr;
            fxl = fxr;
            
            fprintf('xl: '); disp(xr);
        else
            xu = xr;
            fxu = fxr;
            
            fprintf('xu: '); disp(xr);
        end
        
        xrprev = xr;
        xr = xu - (fxu * (xl - xu) / (fxl - fxu));
        ea = abs(((xrprev - xr) / xr) * 100);
        
        fprintf('xr: '); disp(xr);
        fprintf('ea: '); disp(ea);
    end
else
    fprintf('Las suposiciones iniciales son incorrectas. \n');
end