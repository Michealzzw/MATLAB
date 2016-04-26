clear;

x = 0:0.01:1;
f = 4./(1+x.^2);

RD = zeros(1000);
TD = zeros(1000);
SD = zeros(500);

for num = 1:1000
    h = 1/num;
    x_ = 0:h:1;
    f_ = 4./(1+x_.^2);
    RD(num) = RectRule( f_ , h ) - pi;
    TD(num) = TrapezoidalRule( f_ , h ) - pi;
    if (mod(num,2)==0) 
        SD(num/2) = SimpsonRule( f_ , h/2 ) - pi;
    end
end
num = 1:1:1000;
num2 = 2:2:1000;
figure(1);
plot(num,RD,'b',num,TD,'r',num2,SD,'m');

RD = zeros(200);
TD = zeros(200);
SD = zeros(100);

for num = 1:200
    h = 1/num;
    x_ = 0:h:1;
    f_ = 4./(1+x_.^2);
    RD(num) = RectRule( f_ , h ) - pi;
    TD(num) = TrapezoidalRule( f_ , h ) - pi;
    if (mod(num,2)==0) 
        SD(num/2) = SimpsonRule( f_ , h/2 ) - pi;
    end
end
num = 1:1:200;
num2 = 2:2:200;
figure(2);
plot(num,RD,'b',num,TD,'r',num2,SD,'m');



RD = zeros(100);
TD = zeros(100);
SD = zeros(50);

for num = 1:100
    h = 1/num;
    x_ = 0:h:1;
    f_ = 4./(1+x_.^2);
    RD(num) = RectRule( f_ , h ) - pi;
    TD(num) = TrapezoidalRule( f_ , h ) - pi;
    if (mod(num,2)==0) 
        SD(num/2) = SimpsonRule( f_ , h/2 ) - pi;
    end
end
num = 1:1:100;
num2 = 2:2:100;
figure(3);
plot(num,RD,'b',num,TD,'r',num2,SD,'m');


h = 1./num;
h2 = 1./num2;
horizon = zeros(100);
figure(4);
plot(h,RD,'b',h,TD,'r',h2,SD,'m',h,horizon,'black');

RD = zeros(990);
TD = zeros(990);
SD = zeros(495);

for num = 11:1000
    h = 1/num;
    x_ = 0:h:1;
    f_ = 4./(1+x_.^2);
    RD(num) = RectRule( f_ , h ) - pi;
    TD(num) = TrapezoidalRule( f_ , h ) - pi;
    if (mod(num,2)==0) 
        SD(num/2) = SimpsonRule( f_ , h/2 ) - pi;
    end
end
num = 11:1:1000;
num2 = 12:2:1000;
horizon = zeros(length(h));
figure(5);
plot(num,RD,'b',num,TD,'r',num2,SD,'m',h,horizon,'black');