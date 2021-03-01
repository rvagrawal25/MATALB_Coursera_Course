function charnum = char_counter(a,b)
charnum = 0;
if ~ischar(b)
    charnum = -1;
elseif ~isfile(a)
    charnum = -1;
else
    fid = fopen(a,'rt');
    line = fgets(fid);
    if fid<0
        fprintf('Error opening file');
    end
    while ischar(line)
        for ii = 1:length(line)
            if strcmp(line(ii),b)
                charnum = charnum+1;
            end
        end
        line = fgets(fid);
    end
end