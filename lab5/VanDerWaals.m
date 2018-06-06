 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
function Pressure = VanDerWaals(Temp,Vol,Gas)

switch Gas
    case {'Helium','He'}
        a = 0.0341;
        b = 0.02237;
    case {'Hydrogen','H2'}
        a = 0.244;
        b = 0.0266;
    case {'Oxygen','O2'}
        a = 1.36;
        b = 0.0318;
    case {'Chlorine','Cl2'}
        a = 6.49;
        b = 0.0562;
    case {'Carbon dioxide','CO2'}
        a = 3.59;
        b = 0.0427;
    case {'Neon','N'}
        a = 0.2135;
        b = 0.01709;
    otherwise
        error('Gas unknown')
end

Pressure = 0.08206.*Temp./(Vol - b) - a./(Vol).^2;