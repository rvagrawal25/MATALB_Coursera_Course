function output = blur(img,w)
output = uint8(zeros(size(img,1),size(img,2)));
for ii = 1:size(img,1)
    for jj = 1:size(img,2)
        if (ii-w)<1
            if (jj-w)<1
                A = img(ii:(ii+w),jj:(jj+w));
            elseif (jj+w)>size(img,2)
                A = img(ii:(ii+w),(jj-w):jj);
            else
                A = img((ii):(ii+w), (jj-w):(jj+w));
            end
        elseif (ii+w)>size(img,1)
            if (jj-w)<1
                A = img((ii-w):(ii),jj:(jj+w));
            elseif (jj+w)>size(img,2)
                A = img((ii-w):(ii),(jj-w):jj);
            else
                A = img((ii-w):(ii), (jj-w):(jj+w));
            end
        else
            if (jj-w)<1
                A = img((ii-w):(ii+w),jj:(jj+w));
            elseif (jj+w)>size(img,2)
                A = img((ii-w):(ii+w),(jj-w):jj);
            else
                A = img((ii-w):(ii+w), (jj-w):(jj+w));
            end
        end
        avg_val = sum(A(:))/(size(A,1)*size(A,2));
        output(ii,jj) = uint8(avg_val);
    end
end