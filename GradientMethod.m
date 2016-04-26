function [ xx ] = GradientMethod( x )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    k = 1;
    TOL = 1e-5;
    while (k<100)
        g1 = G(x);
        z = Gra(x);
        z0 = norm(z,2);
        if (z0==0)
            disp('ERROR');
            break;
        end
        z = z/z0;
        a1=0;
        a3=1;
        g3=G(x-a3*z);
        while (g3>=g1)
            a3 = a3/2;
            g3 = G(x-a3*z);
            if (a3<TOL/2)
            disp('No likely improvement');
            break;
        end
        end
        if (a3<TOL/2)
            disp('No likely improvement');
            break;
        end
        a2 = a3/2;
        g2 = G(x-a2*z);
        h1 = (g2-g1)/a2;
        h2 = (g3-g2)/(a3-a2);
        h3 = (h2-h1)/a3;
        a0 = 0.5*(a2-h1/h3);
        g0=G(x-a0*z);
        if (g0<g3)
            a = a0;
            gg = g0;
        else
            a = a3;
            gg = g3;
        end
        x = x-a*z;
        if (abs(gg-g1)<TOL)
            break;
        end
        k = k+1;
    end
    if (k==100) disp('SUCCESS');
    end
    xx = x;
    k
end

