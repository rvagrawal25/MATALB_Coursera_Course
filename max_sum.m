function [summa, index] = max_sum(v,n)
if ~isscalar(n) || n<1
    error('Invalid Input of n, Please enter a positive integer');
elseif n > length(v)
    summa = 0;
    index = -1;
else
    for ii = 1:(length(v)-n+1)
        summa_iteration =0;
        for jj = ii:ii+n-1
            summa_iteration = summa_iteration + v(jj);
        end
        sum_matrix(ii) = summa_iteration;
    end
    summa = max(sum_matrix);
    index = find(sum_matrix==summa,1);
end