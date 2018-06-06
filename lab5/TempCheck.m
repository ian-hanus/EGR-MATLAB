function TempCheck(MyID)
if nargin==0, error('Run with TempCheck(''Your ID'')'), end;
sum(MyID);
rng(sum(MyID));
format compact
delete('TempDiary.txt')
diary TempDiary.txt
disp(MyID)
DataLogger
diary off
end

function out=input(a)
persistent incount;
if isempty(incount)
    incount=1;
elseif incount==7
    incount=1;
else
    incount=incount+1;
end
if incount<7
    out = 250+100*rand(1)
else
    out=-1;
end
end
