%Closes previous figures if re-run
close('all');
%Define the set of points to calculate curves of
global PtosControlA;
global PtosControlB;
global PtosControlC;
global PtosControlD;
PtosControlA = [3 2;8 10;2 6];
PtosControlB = [3 2;8 10;3 6;8 4];
PtosControlC = [3 2;3 6;8 4];
PtosControlD = [3 2;3 6;8 4;8 10];

%Calculates and plots Bezier Curves
plotBezier();
plotSpline();


%Helper functions

function plotBezier()
    global PtosControlA;
    global PtosControlB;
    global PtosControlC;
    global PtosControlD;
    
    figure('NumberTitle', 'off', 'Name', 'Curvas Bezier');
    
    subplot(2,2,1);
    CurvaBezier(PtosControlA, 0.01);
    title('PtosControlA');
    
    subplot(2,2,2);
    CurvaBezier(PtosControlB, 0.01);
    title('PtosControlB');
    
    subplot(2,2,3);
    CurvaBezier(PtosControlC, 0.01);
    title('PtosControlC');
    
    subplot(2,2,4);
    CurvaBezier(PtosControlD, 0.01);
    title('PtosControlD');
end

function plotSpline()
    global PtosControlA;
    global PtosControlB;
    global PtosControlC;
    global PtosControlD;
    
    figure('NumberTitle', 'off', 'Name', 'Curvas Spline');
    subplot(2,2,1);
    CurvaSpline(PtosControlA, 0.01);
    title('PtosControlA');
    
    subplot(2,2,2);
    CurvaSpline(PtosControlB, 0.01);
    title('PtosControlB');
    
    subplot(2,2,3);
    CurvaSpline(PtosControlC, 0.01);
    title('PtosControlC');
    
    subplot(2,2,4);
    CurvaSpline(PtosControlD, 0.01);
    title('PtosControlD');
end