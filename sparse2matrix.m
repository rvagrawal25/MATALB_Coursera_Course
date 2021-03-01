function matrix = sparse2matrix(cellvec)
default_matrix = cellvec{2}*ones(cellvec{1}(1),cellvec{1}(2));

for ii = 3:length(cellvec)
    default_matrix(cellvec{ii}(1),cellvec{ii}(2)) = cellvec{ii}(3);
end
matrix = default_matrix;
