 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Establish function & solve Chapra equation
MyFun = @(d,h) (2.*40.*d.^(5/2))./5+1/2.*40000.*d.^2-95.*9.81.*d-95.*9.81.*h;
ChapraFunZeros = fzero(@(ddummy) MyFun(ddummy,0.43), [0 1])
%% Graph of d for 50 values of h
h = linspace(0.0001,1,50);
dvals = zeros(1,50);
for k = 1:numel(h)
    dvals(k) = fzero(@(ddummy) MyFun(ddummy,h(k)),[0.00001 10]);
end
figure(1); clf
plot(h,dvals,'k-')
grid on
title('Plot of Chapra Problem 6.20')
xlabel('h (m)')
ylabel('d (m)')
print -depsc Chapra620Fig

    