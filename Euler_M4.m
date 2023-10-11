clc %limpia Command Window
clear %limpia Workspace
v0 = 0; %Velocidad inicial en m/s
y0 = 0; %Posición inicial
h = 0.001; %Paso del tiempo h
k = 0.6; %Constante de arrastre, k la cual se puede modificar
k2 = 0;
T = 10; % Tiempo total de simulación
g = 9.8; %Aceleración de la gravedad en m/s^2
j = 1; %Inicializa el índice de los vectores
v(j) = v0; %Asigna en el índice 1 del vector de velocidad v0=0
y(j) = y0; %Asigna en el índice 1 del vector de posición y0=0
v2(j) = v0;
y2(j) = y0;
for t = h:h:T
v(j+1) = v(j) + (-g - k*v(j))*h; %Calcula la siguiente velocidad
y(j+1) = y(j) + v(j)*h; %Calcula la siguiente posición
v2(j+1) = v2(j) + (-g - k2*v2(j))*h; %Calcula la siguiente velocidad
y2(j+1) = y2(j) + v2(j)*h; %Calcula la siguiente posición
j = j+1; %incrementa el índice de los vectores
end
time = (0:h:T); %Vector de tiempo
%Gráfica de posición vs tiempo
subplot(1,2,1)
hold on
plot(time,y,'b');
xlabel('Tiempo [s]');
ylabel('Posición vertical [m]');
plot(time,y2,'--b');
legend('k = 0.6','k = 0.0')
xlabel('Tiempo [s]');
ylabel('Posición vertical [m]');
axis([0 10 -140 0])
hold off
%Gráfica de velocidad vs tiempo
subplot(1,2,2)
hold on
plot(time,v,'k');
xlabel('Tiempo [s]');
ylabel('Velocidad [m/s]');
plot(time,v2,'--k');
legend('k = 0.6','k = 0.0')
xlabel('Tiempo [s]');
ylabel('Velocidad [m/s]');
axis([0 10 -22 0])
hold off

