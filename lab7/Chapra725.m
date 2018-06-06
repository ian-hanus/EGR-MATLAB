 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Chapra 7.25 minimum
MyFun1 = @(x,y) 2.*y.^2-2.225.*x.*y-1.75.*y+1.5.*x.^2;
[MinX1, MinY1] = fminsearch(@(dummyv) MyFun1(dummyv(1),dummyv(2)),[0 0])
%% Chapra 7.25 surface plot
figure(1);clf
x = linspace(-4,4,20);
[X,Y] = meshgrid(x);
surfc(X,Y,MyFun1(X,Y))
colormap jet
title('Surface Plot w/ Contours of Chapra 7.25')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
print -depsc Chapra725Plot
%% Chapra 7.26 maximum
MyFun2 = @(x,y) 4.*x+2.*y+x.^2-2.*x.^4+2.*x.*y-3.*y.^2;
[MaxX2,NegMaxY2] = fminsearch(@(dummyv) -MyFun2(dummyv(1),dummyv(2)),[0 0]);
MaxX2 = MaxX2
MaxY2 = -1.*NegMaxY2
%% Chapra 7.26 surface plot
figure(2);clf
surfc(X,Y,MyFun2(X,Y))
colormap jet
title('Surface Plot w/ Contours of Chapra 7.26')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
print -depsc Chapra726Plot
%% Chapra 7.27 minimum
MyFun3 = @(x,y) -8.*x+x.^2+12.*y+4.*y.^2-2.*x.*y;
[MinX3,MinY3] = fminsearch(@(dummyv) MyFun3(dummyv(1),dummyv(2)),[0,0])
%% Chapra 7.27 surface plot
figure(3);clf
surfc(X,Y,MyFun3(X,Y))
colormap jet
title('Surface Plot w/ Contours of Chapra 7.27')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
print -depsc Chapra727Plot