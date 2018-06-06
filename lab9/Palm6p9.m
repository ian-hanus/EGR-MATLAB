 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
 
A = 0:1:9;
T = [130 115 110 90 89 89 95 100 110 125];

[P1,Sr,r2,Amin1,Tmin1] = Paint(A,T,1)
[P2,Sr,r2,Amin2,Tmin2] = Paint(A,T,2)
[P3,Sr,r2,Amin3,Tmin3] = Paint(A,T,3)
[P4,Sr,r2,Amin4,Tmin4] = Paint(A,T,4)
%% Plot the graphs
A1 = linspace(0,9,100);
figure(1); clf
plot(A1,polyval(P1,A1),'k-')
hold on
plot(A1, polyval(P2,A1),'k.-')
plot(A1, polyval(P3,A1),'k--')
plot(A1, polyval(P1,A1),'k:')
plot(A,T,'ms')
hold off
gzoom
title ('Drying Time of Paint with Varying Amounts of Additive (ih52)')
xlabel('Additive (oz)')
ylabel('Time (min)')
legend('1st Order', '2nd Order', '3rd Order', '4th Order')
print -depsc Palm6p9plot