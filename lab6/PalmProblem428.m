 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
clear; format short e
Data = load('DataTable.dat');
Xloc = Data(:,2);
Yloc = Data(:,3);
Volume = Data(:,4);
Elements = numel(Xloc);
figure(1);clf
xlim([-30 30])
ylim([-30 30])
xlabel('{\it x} (miles)')
ylabel('{\it y} (miles)')
title('Customer Map (ih52)')
for k = 1:Elements
    text(Xloc(k),Yloc(k),num2str(k))
end
print -depsc CustomerMap428
%% Graph 2
figure(2);clf
[X,Y] = meshgrid(-30:2:30);
TotalCost = zeros(31);
for k = 1:Elements
    if k == 1
        Distance = sqrt((X-Xloc(k)).^2+(Y-Yloc(k)).^2);
        Cost = 0.5.*Distance.*Volume(k);
        TotalCost = Cost;
    else
        Distance = sqrt((X-Xloc(k)).^2+(Y-Yloc(k)).^2);
        Cost = 0.5.*Distance.*Volume(k);
        TotalCost = Cost + TotalCost;
    end
end
meshc(X,Y,TotalCost)
xlabel('{\it x} (miles)')
ylabel('{\it y} (miles)')
zlabel('Cost ($)')
title('Mesh with Contours (ih52)')
MinCost = min(TotalCost(:))
MinCostLoc = find(MinCost == TotalCost);
MinCostXLoc = -30 + 2*floor(MinCostLoc./31)
MinCostYLoc = -30 + 2*mod(MinCostLoc,31)
colormap copper
print -depsc MeshContours428
%% Graph 3
figure(3); clf
surf(X,Y,TotalCost)
shading interp
colormap copper
view(2)
colorbar
xlabel('{\it x} (miles)')
ylabel('{\it y} (miles)')
title('Surface Plot from Above (ih52)')
print -depsc SurfacePlot428
%% Graph 4
figure(4); clf
contour(X,Y,TotalCost,10)
colormap copper
colorbar
xlabel('{\it x} (miles)')
ylabel('{\it y} (miles)')
title('Contour Plot (ih52)')
print -depsc ContourPlot428