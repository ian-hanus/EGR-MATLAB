 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize the workspace
clear; format short e

%%Load and split the data
MyData = load('NRELORNL2016.dat');
Day = MyData(:,1);
Hour = MyData(:,2);
AGHI = MyData(:,3);
AvgTemp = MyData(:,4);
AvgWind = MyData(:,5);


%% Calculate and print required values
delete('WeatherDiary.txt')
diary WeatherDiary.txt
A = max(AGHI);
B = min(AvgTemp);
C = max(AvgTemp);
D = max(AvgWind);
fprintf('Max irradiance of %+1.2e W/m^2\n', A)
fprintf('Max avg. temp. of %+1.2e deg C\n', C)
fprintf('Min avg. temp. of %+1.2e deg C\n', B)
fprintf('Max wind speed of %+1.2e m/sec\n', D)
diary off

%% Plot noontime irradiances
figure(1); clf
x = [1:366];
y = AGHI(13:24:end);
plot(x,y,'gs')
title('Noontime Irradiance at ECSU for 2012')
xlabel('Day of Year')
ylabel('Noontime Irradiance, W/m^2')
print -depsc ORNLirrad.eps

%% Plot January temperatures
figure(2); clf
g = [1:744];
h = AvgTemp(g);
plot(g,h,'d')
title('January Hourly Temperatures at ECSU for 2012')
xlabel('Hour in January')
ylabel('Hourly Temperature, ^(o)C')
print -depsc ORNLtemps.eps