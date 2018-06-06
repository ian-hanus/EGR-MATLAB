 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
Vol = linspace(1,2,200);
Temp = 300;
Indices = linspace(1,2,15);
plot(Vol,VanDerWaals(Temp,Vol,'Helium'),'r-')
hold on
plot(Vol,VanDerWaals(Temp,Vol,'Chlorine'),'m-')
plot(Vol,VanDerWaals(Temp,Vol,'Neon'),'c-')
plot(Vol,VanDerWaals(Temp,Vol,'Carbon dioxide'),'k-')
plot(Vol,VanDerWaals(Temp,Vol,'Oxygen'),'b-')
plot(Vol,VanDerWaals(Temp,Vol,'Hydrogen'),'y-')
legend('Chlorine','Helium','Neon','Carbon dioxide','Oxygen','Hydrogen')
PointPlot = plot(Indices,VanDerWaals(Temp,Indices,'Chlorine'),'ks',...
    Indices, VanDerWaals(Temp,Indices,'Helium'),'ro',...
    Indices, VanDerWaals(Temp,Indices,'Neon'),'cp',...
    Indices, VanDerWaals(Temp,Indices,'Carbon dioxide'),'k*',...
    Indices,VanDerWaals(Temp,Indices,'Oxygen'),'bd',...
    Indices,VanDerWaals(Temp,Indices,'Hydrogen'),'y+');
title('Pressures at Differing Volumes')
ylabel('Pressure, atm')
xlabel('Volume, L/mol')
hold off
print -depsc GraphPressures
