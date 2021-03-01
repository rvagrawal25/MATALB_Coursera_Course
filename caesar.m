function coded = caesar(a,n)
coded_double = double(a) + n;

for ii = 1:length(coded_double)
    while coded_double(ii)>126
        coded_double(ii) = coded_double(ii) -127 + 32;
    end
    while coded_double(ii)<32
        coded_double(ii) = coded_double(ii) -32 + 127;
    end
end
coded = char(coded_double);
end