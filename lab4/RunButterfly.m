 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Define variable
t = linspace(0,24*pi,10000);
[x,y] = Butterfly(t);
%% Plot butterfly
figure(1); clf
subplot(2,1,1)
plot(t,x,'g-',t,y,'m-')
hold on
subplot(2,1,2)
plot(x,y,'r-')
axis square
hold off
%% Print butterfly
print -depsc RunButterfly