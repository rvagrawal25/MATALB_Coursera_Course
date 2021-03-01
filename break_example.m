rng(0);
readings = randi(101,1,20);
found = false;
for ii = 1:length(readings)
    if readings(ii)>100
        found = true;
        break
    else
        found = false;
    end
end
if found
    fprintf('First Reading above 100 is at %d\n',ii);
else
    fprintf('The array did not include a number greater than 100\n');
end