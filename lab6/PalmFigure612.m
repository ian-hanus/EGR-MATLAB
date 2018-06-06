 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
figure(1);clf
xlim([0,4])
ylim([0,4])
title('The Power Function {\it y = x^m} (ih52)')
xlabel('{\it x}')
ylabel('{\it y}')
x = linspace(0,4,1000);
hold on
for k = [-0.5,0,0.5,1,2]
    plot(x,x.^k,'k-')
end
text(1.25,3.4,'{\it m} = 2')
text(2.75,3.2,'{\it m} = 1')
text(3.25,2,'{\it m} = 0.5')
text(3.25,1.15,'{\it m} = 0')
text(2.75,0.4,'{\it m} = -0.5')
hold off
print -depsc PalmFigure