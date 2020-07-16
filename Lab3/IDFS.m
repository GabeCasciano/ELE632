function [x] = IDFS(X)

    No = length(X);
    omega = 1/No;
    
    x = zeros(No,0);
    
    for n = 1:1:No
        x_sum = 0;
        for r = 1:1:No-1
            x_sum = x_sum + X(r)*exp(i*omega*r*n);
        end
        x(n) = x_sum;
    end
end

