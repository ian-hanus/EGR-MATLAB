 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
function [x,y] = Butterfly(t)
x = sin(t).*(exp(cos(t))-2.*cos(4.*t)-(sin(t./12)).^5);
y = cos(t).*(exp(cos(t))-2.*cos(4.*t)-(sin(t./12)).^5);