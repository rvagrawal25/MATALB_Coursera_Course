function indices = saddle(M)
indices = [];
for ii = 1:size(M,1)
    for jj = 1:size(M,2)
        if M(ii,jj) >= M(ii,1:end)
            if M(ii,jj) <= M(1:end,jj)
                indices = [indices; ii jj];
            end
        end
    end
end