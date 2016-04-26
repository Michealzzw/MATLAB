x = zeros(1,100);
y = zeros(1,100);
x(1) = 1;
y(1) = 9;
x(100) = 10;
y(100) = 1;
for alpha = 2:99
    x(alpha) = (alpha*0.01)*x(100)+(1-alpha*0.01)*x(1);
    y(alpha) = (alpha*0.01)*y(100)+(1-alpha*0.01)*y(1);
end
figure(1)
plot(x,y)