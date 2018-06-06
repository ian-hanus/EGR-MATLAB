%% Initialize Workspace
clear 
format short e
%% Generate a conical helix
% Compute values
t = 0:pi/64:6*pi;
% Equations
x = t.*cos(6*t);
y = t.*sin(6*t);
z = t;
% Plot
figure(1);clf
subplot(2,1,1), plot(x,y,'r')
axis equal
subplot(2,1,2), plot3(x,y,z,'c')
axis equal
print -depsc Chapra222Graph