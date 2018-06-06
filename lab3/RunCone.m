 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Inititialize the workspace
clear; format short e

%% Generate independent and dependent values
% your code here
t = 0:pi/64:6*pi;
x = t.*cos(6*t);
y = t.*sin(6*t);
z = t;

%% Make plot of y vs. x
figure(1); clf
subplot(2,1,1), plot(x,y,'r')
xlabel('x-axis')
ylabel('y-axis')
axis equal
subplot(2,1,2), plot3(x,y,z,'c')
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
axis equal

%% Save plot in color
print -depsc ConePlot