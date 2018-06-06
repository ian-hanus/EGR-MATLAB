clear; format short e
n = input('How many entries? ');
Temp = zeros(n, 1);
for k=1:n
    MyTemp = input('Temperature: ');
    while MyTemp<0 | numel(MyTemp)~=1
        
        MyTemp = input('No! Temperature: ');
        
    end
    Temp(k) = MyTemp;
end

Temp = Temp(:)