function [Dr] = DFS(x, No)

    omega = (2*pi)/No;
    n = 1:No;
    Dr = zeros(No,0);
    
    for r = 1:1:No
        Dr(r) = sum(x.*exp(-1*omega*r.*(n-1)))/(No);
    end
end

