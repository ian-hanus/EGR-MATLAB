 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
clear; format short e
[x,y] = meshgrid(0:0.025:1);
T = 80.*exp(-(x-1).^2).*exp(-3.*(y-1).^2);
%% Surface Plot
figure(1);clf
xlabel('x (distance)')
ylabel('y (distance)')
title('Surface Plot of Palm 5.33')
surfc(x,y,T)
colorbar
colormap hot
print -depsc SurfacePlot533
%% Contour Plot
figure(2);clf
xlabel('x (distance)')
ylabel('y (distance)')
title('Contour Plot of  Palm 5.33')
contour(x,y,T,[0:10:80])
colormap hot
print -depsc ContourPlot533
%% Imagesc Plot
figure(3);clf
xlabel('x (distance)')
ylabel('y (distance)')
title('Imagesc Plot of Palm 5.33')
imagesc([0 1],[0 1],T)
colorbar
colormap hot
print -depsc ImagescPlot533