function out = get_distance(a,b)
distances = xlsread('Distances.xlsx');
[~,city] = xlsread('Distances.xlsx',1,'B1:LY1');
out = -1;
for ii = 1:length(city)
    for jj = 1:length(city)
        if strcmp(a,city{ii}) && strcmp(b,city{jj})
            out = distances(ii,jj);
        end
    end
end
            
        