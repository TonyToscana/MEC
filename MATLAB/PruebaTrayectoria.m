% Ejemplo de seguimiento de ruta utizando el
% ExampleHelperDifferentialDriveRobot de la Robotics System Toolbox

close all;
clear all;

%Definici�n de los puntos de la trayectoria (considerar escenario de 10x10m)
Puntos = [3 2;8 10;2 6];
%Definici�n del incremento inc (entre 0 y 1)
inc = 0.01;

%Generaci�n de la trayectoria (descomentar la funci�n que se desee utilizar)
path = CurvaBezier3Puntos(Puntos,inc);
%path = SplineCubicaNatural3Puntos(Puntos,inc);
%path = CurvaBezier4Puntos(Puntos,inc);
%path = SplineCubicaNatural4Puntos(Puntos,inc);

%Representaci�n de la trayectoria
figure;
plot(Puntos(:,1), Puntos(:,2),'o--g')
hold on;
plot(path(:,1), path(:,2),'k--d')
%xlim([0 max(Puntos(:,1))+2]);
%ylim([0 max(Puntos(:,2))+2]);
xlabel('X(m)');
ylabel('Y(m)');
axis equal;


%Definici�n del modelo de movimiento del robot
robotCurrentLocation = path(1,:); 
robotGoal = path(end,:);
initialOrientation = 0;
robotCurrentPose = [robotCurrentLocation initialOrientation];
robot = ExampleHelperDifferentialDriveRobot(robotCurrentPose);

%Definici�n del control de seguimiento de trayectoria
controller = robotics.PurePursuit;
controller.Waypoints = path;
controller.DesiredLinearVelocity = 0.25; %m/s
controller.MaxAngularVelocity = 1; %rad/s
controller.LookaheadDistance = 0.1; %m
%Nota: Cambiando los par�metros anteriores se cambia el comportamiento del
%robot al seguir el camino

%Seguimiento de los puntos de la trayectoria
goalRadius = 0.1;
distanceToGoal = norm(robotCurrentLocation - robotGoal);

%Nota: el seguimiento del camino lo hace hasta que llega a la meta, por lo
%que si la meta se encuentra como un punto del camino se parar�

while( distanceToGoal > goalRadius )

    %C�lculo de la velocidad lineal y angular del robot
    [v, omega] = step(controller, robot.CurrentPose);

    %Simulaci�n del robot usando las velocidades calculadas anteriormente
    drive(robot, v, omega)

    %Estimaci�n de la posici�n del robot en el escenario ([X,Y])
    robotCurrentLocation = robot.CurrentPose(1:2);

    %C�lculo de la distancia al objetivo
    distanceToGoal = norm(robotCurrentLocation - robotGoal);
end