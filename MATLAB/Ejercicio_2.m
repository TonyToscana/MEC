PtosControlA = [3 2;8 10;2 6];
PtosControlB = [3 2;8 10;3 6;8 4];
PtosControlC = [3 2; 3 6;8 4];
PtosControlD = [3 2; 3 6;8 4;8 10];
res = CurvaBezier3Puntos(PtosControlA, 0.01)
t = 0:0.1:1;
puntos_x = res(:,1);
puntos_y = res(:,2);
plot(puntos_x',puntos_y');