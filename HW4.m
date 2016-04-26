A = [6,2,1;2,3,1;1,1,1];
q = 2;
x = [1;1;1];

A_ = A - q*eye(3);
k = 1;
p = 1;
while (true)
    y = A_\x;
    u = y(p);
    p = 1;
    for i = 2:3
        if (abs(y(i))>abs(y(p)))
            p = i;
        end
    end
    Err = norm(x-y/y(p),inf);
    x  = y/y(p);
    if (Err<1e-4)
        u = (1/u)+q
        x
        k
        break;
    end
    k=k+1;
end

