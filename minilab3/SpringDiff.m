function dydt = SpringDiff(t,y,C)

dydt = [y(2)...
        (-C(1).*y(1)-C(2).*y(2))./C(3)]