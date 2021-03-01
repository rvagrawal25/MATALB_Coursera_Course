function valid = valid_date(year,month,day)
%% Making sure the user inputs are correct
if ~isscalar(year) || year < 1 || year ~= fix(year) || ~isscalar(month) || month < 1 || month ~= fix(month) || month > 12 || ~isscalar(day) || day < 1 || day ~= fix(day)
    valid = false;
% Calculating leap year
else
    if year/4 == fix(year/4)
        if year/400 == fix(year/400)
            leap_year = true;
        elseif year/100 == fix(year/100) && year/4 == fix(year/4)
            leap_year = false;
        else
            leap_year = true;
        end
    else
        leap_year = false;
    end

%% Validating the other dates
    if leap_year
        if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
            if day > 31
                valid = false;
            else
                valid = true;
            end
        elseif month == 2
            if day > 29
                valid = false;
            else
                valid = true;
            end
        else
            if day > 30
                valid = false;
            else
                valid = true;
            end
        end
    else
        if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
            if day > 31
                valid = false;
            else
                valid = true;
            end
        elseif month == 2
            if day > 28
                valid = false;
            else
                valid = true;
            end
        else
            if day > 30
                valid = false;
            else
                valid = true;
            end
        end
    end
end
