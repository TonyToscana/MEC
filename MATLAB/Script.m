%Closes previous figures if re-run
close('all');
%Define the set of points to calculate curves of
PtosControlA = [3 2;8 10;2 6];
PtosControlB = [3 2;8 10;3 6;8 4];
PtosControlC = [3 2;3 6;8 4];
PtosControlD = [3 2;3 6;8 4;8 10];

%Calculates and plots Bezier Curves
CurvaBezier(PtosControlA, 0.01);
CurvaBezier(PtosControlB, 0.01);
CurvaBezier(PtosControlC, 0.01);
CurvaBezier(PtosControlD, 0.01);
