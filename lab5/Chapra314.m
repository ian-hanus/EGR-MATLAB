 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
clear; format short e

v = @(t) ...
    (t>= 0 & t<8).*(10.*t.^2-5.*t)+...
    (t>=8 & t<16).*(624-3.*t)+...
    (t>=16 & t<=26).*(36.*t+12.*(t-16).^2)+...
    (t>26).*(2136.*exp(-0.1.*(t-26)));

t = linspace(-5,50,1000);
figure(1);clf
plot(t,v(t),'k-')
title('Velocity of a Rocket vs Time (ih52)')
xlabel('Time, s')
ylabel('Velocity, m/s')
grid on
print -depsc Chapra314    