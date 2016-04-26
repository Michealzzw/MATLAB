function [II]= IteratedInterpolation(x,f,t)
%Iterated Interpolation
n = length(x);
Q = zeros(n);
Q(:,1) = f;
II = t;
for q = 1:length(t)
    for i = 2:n;
        for j = 1:i-1
            Q(i , j + 1) = ((t(q) - x(i - j)) * Q(i , j) - (t(q) - x(i)) * Q(i - 1 , j))...
                / (x(i) - x(i - j));
        end
    end
    II(q) = Q(n,n);
end
end

