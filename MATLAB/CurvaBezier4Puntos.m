function res = CurvaBezier4Puntos(Puntos, inc)
T = 0:inc:1;
res = [];
    for n=1:length(T)
        t = T(n);
        tmp = Puntos'*[1 -3 3 -1;0 3 -6 3;0 0 3 -3;0 0 0 1]*[1;t;t*t;t*t*t];
        res = [res;tmp'];
    end
end