a = 10;
b = 28;
c = 8/3;
a = 10;
b = 28;
c = 8/3;
InitValue = [1,1,1];

l = 0;r = 10000
N = 100000;
h = (r-l)/N;
m = 3;
ans = zeros(N,m);
t = l;
for j = 1:m
    ans(1,j) = InitValue(j);    
end
k = zeros(4,m);
for i = 1:N        
        x = ans(i,1);
        y = ans(i,2);
        z = ans(i,3);
        %x = a(y-x);
        %y = bx-y-xz;
        %z = xy-cz;
        k(1,1) = h*(a*(y-x));
        k(1,2) = h*(b*x-y-x*z);
        k(1,3) = h*(x*y-c*z);
        x = ans(i,1)+0.5*k(1,1);
        y = ans(i,2)+0.5*k(1,2);
        z = ans(i,3)+0.5*k(1,3);
        %x = a(y-x);
        %y = bx-y-xz;
        %z = xy-cz;
        k(2,1) = h*(a*(y-x));
        k(2,2) = h*(b*x-y-x*z);
        k(2,3) = h*(x*y-c*z);
        x = ans(i,1)+0.5*k(2,1);
        y = ans(i,2)+0.5*k(2,2);
        z = ans(i,3)+0.5*k(2,3);
        %x = a(y-x);
        %y = bx-y-xz;
        %z = xy-cz;
        k(3,1) = h*(a*(y-x));
        k(3,2) = h*(b*x-y-x*z);
        k(3,3) = h*(x*y-c*z);
        x = ans(i,1)+k(3,1);
        y = ans(i,2)+k(3,2);
        z = ans(i,3)+k(3,3);
        %x = a(y-x);
        %y = bx-y-xz;
        %z = xy-cz;
        k(4,1) = h*(a*(y-x));
        k(4,2) = h*(b*x-y-x*z);
        k(4,3) = h*(x*y-c*z);
        for j=1:m
            ans(i+1,j) = ans(i,j)+(k(1,j)+2*k(2,j)+2*k(3,j)+k(4,j))/6;
        end       
        
end
x = zeros(1,N);
y = zeros(1,N);
z = zeros(1,N);

for i =1:N
    x(i) = ans(i,1);
    y(i) = ans(i,2);
    z(i) = ans(i,3);
end

figure(1)
plot3(x,y,z)

