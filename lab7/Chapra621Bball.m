 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Establish functions
MyFun = @(x,v,theta) tan(theta).*x-9.81/(2.*v.^2.*(cos(theta).^2)).*x.^2+1.8;
%% Get angle in radians
FunZero1 = fzero(@(dummytheta) MyFun(90,30,dummytheta)-1,[0.1]);
FunZero2 = fzero(@(dummytheta) MyFun(90,30,dummytheta)-1,[1]);
%% Plot trajectories
x = linspace(0,90,1000);
y1 = MyFun(x,30,FunZero1);
y2 = MyFun(x,30,FunZero2);
figure(1); clf
plot(x,y1,'k-',x,y2,'c-')
legend('37.959 Degrees','51.532 Degrees')
axis([0 90 0 50])
xlabel('x (m)')
ylabel('y (m)')
print -depsc Chapra621BballPlot
%% Convert angle to degrees
Angle1 = radtodeg(FunZero1)
Angle2 = radtodeg(FunZero2)


