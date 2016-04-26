function [ x , time ] = Iteration( A , B ,omega)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    x = B;
    R = B;
    x_ = x;
    n = length(x);
    time = 0;
    while (norm(R,inf)/norm(x,inf)>1e-4)
        time = time+1;
        for i=1:n
            x_(i) = 0;
            for j=1:n;
                if (j~=i)
                    if (i<j)
                        x_(i) = -A(i,j)*x(j)+x_(i);
                    else
                        x_(i) = -A(i,j)*x_(j)+x_(i);
                    end
                end
            end
            x_(i) = ((x_(i)+B(i))/A(i,i)-x(i))*omega+x(i);
        end
        R = x-x_;
        x = x_;
    end

end

