function [ x ] = Newton( x )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    k = 1;
    TOL = 1e-5;
    while (k<100)
        Fx = F(x);
        Jx = Newton_Jacobi(x);
        y = Jx\(-Fx);
        x = x+y;
        if (norm(y,2)<TOL)
            disp('SUCCESS');
            break;
        end
        k = k+1;
    end
    if (k==100) disp('ERROR');
    end
    k

end

