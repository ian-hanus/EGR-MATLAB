 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Establish functions
f1 = @(x) 20.*exp(-4*x)-36.*exp(-2*x)+18.*exp(-x)-1;
f2 = @(x) x.^5 + 100.*cos(2*x);
f3 = @(x) 10./(x-2)-90.*exp(-(x/2));
%% Function one plot
figure(1); clf
x = linspace(-10,10,1000);
subplot(2,1,1)
plot(x, f1(x),'k-')
xlabel('x')
ylabel('f(x)')
title('Plot of f(x)= 20e^{-4x}-36e^{-2x}+18e^{-x}-1 (ih52)')
subplot(2,1,2)
plot(x, sign(f1(x)), 'k-')
xlabel('x')
ylabel('sign(f(x))')
title('Plot of sign(f(x))')
axis([-10 10 -1.2 1.2])
print -depsc F1Plot
%% Function one roots
[Root11,ValueRoot11] = fzero(@(xdummy) f1(xdummy), [-1 0.2])
[Root12,ValueRoot12] = fzero(@(xdummy) f1(xdummy), [0.2 1])
[Root13,ValueRoot13] = fzero(@(xdummy) f1(xdummy), [2.5 3])
%% Function two plot
figure(2);clf
x = linspace(-10,10,10000);
subplot(2,1,1)
plot(x, f2(x),'k-')
xlabel('x')
ylabel('f(x)')
title('Plot of f(x)=x^5+100cos(2x) (ih52)')
subplot(2,1,2)
plot(x, sign(f2(x)), 'k-')
xlabel('x')
ylabel('sign(f(x))')
title('Plot of sign(f(x))')
axis([-10 10 -1.2 1.2])
print -depsc F2Plot
%% Function two roots
[Root21,ValueRoot21] = fzero(@(xdummy) f2(xdummy), [-2 0])
[Root22,ValueRoot22] = fzero(@(xdummy) f2(xdummy), [0 1.5])
[Root23,ValueRoot23] = fzero(@(xdummy) f2(xdummy), [1.5 3])
%% Function three plot
figure(3);clf
x = linspace(-10,10,10000);
subplot(2,1,1)
plot(x, f3(x),'k-')
xlabel('x')
ylabel('f(x)')
title('Plot of f(x)=10/(x-2)-90e^{-(x/2)},x~=2 (ih52)')
subplot(2,1,2)
plot(x, sign(f3(x)), 'k-')
xlabel('x')
ylabel('sign(f(x))')
title('Plot of sign(f(x))')
axis([-10 10 -1.2 1.2])
print -depsc F3Plot
%% Function Three Roots
[Root31,ValueRoot31] = fzero(@(xdummy) f3(xdummy), [2.1 3])
[Root32,ValueRoot32] = fzero(@(xdummy) f3(xdummy), [7 9])