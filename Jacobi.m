function [ x,time ] = Jacobi( A,B )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    x = B;
    R = B;
    x_ = x;
    n = length(x);
    time = 0;
    while (norm(R,inf)/norm(x,inf)>1e-4)
        time = time + 1;
        for i=1:n
            x_(i) = 0;
            for j=1:n
                if (j~=i)
                    x_(i) = x_(i)+ (-A(i,j))*x(j);
                end
            end
            x_(i) = (x_(i)+B(i))/A(i,i);
        end
        R = x-x_;
        x = x_;
    end

end

