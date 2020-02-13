function res = SplineCubicaNatural4Puntos(puntos,inc)
T = 0:inc:1;
res = [];
num_tramos = 3;
Dx = inv([2 1 0 0;1 4 1 0;0 1 4 1;0 0 1 2])*[3.*(puntos(2,1)-puntos(1,1)); 3.*(puntos(3,1)-puntos(1,1)); 3.*(puntos(4,1)-puntos(2,1)); 3.*(puntos(4,1)-puntos(3,1))];
Dy = inv([2 1 0 0;1 4 1 0;0 1 4 1;0 0 1 2])*[3.*(puntos(2,2)-puntos(1,2)); 3.*(puntos(3,2)-puntos(1,2)); 3.*(puntos(4,2)-puntos(2,2)); 3.*(puntos(4,2)-puntos(3,2))];

for tramo=1:num_tramos
    ax = puntos(tramo,1);
    ay = puntos(tramo,2);
    
    bx = Dx(tramo);
    by = Dy(tramo);
    
    cx = 3.*(puntos(tramo+1,1)-puntos(tramo,1))-2.*Dx(tramo)-Dx(tramo+1);
    cy = 3.*(puntos(tramo+1,2)-puntos(tramo,2))-2.*Dy(tramo)-Dy(tramo+1);
    
    dx = 2.*(puntos(tramo,1)-puntos(tramo+1,1))+Dx(tramo)+Dx(tramo+1);
    dy = 2.*(puntos(tramo,2)-puntos(tramo+1,2))+Dy(tramo)+Dy(tramo+1);
    
    for n=1:length(T)
        t = T(n);
        tmp = [ax bx cx dx;ay by cy dy]*[1;t;t.^2;t.^3];
        res = [res;tmp'];
    end
end
end

