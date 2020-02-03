function res = CurvaBezier3Puntos(Puntos, inc)
T = 0:inc:1;
res = [];
    for n=1:length(T)
        t = T(n);
        tmp = (Puntos'*[1 -2 1;0 2 -2;0 0 1])*[1;t;t.^2];
        res = [res;tmp'];
    end
end