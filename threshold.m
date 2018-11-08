function [T1, T2] = threshold(im)
    im = round(im*255);
    T1 = otsu(im) - 1;
    new = im(im > T1);
    T2 = otsu(new) - 1;
    T1 = double(T1);
    T2 = double(T2);
end

function level = otsu(im)
    im = uint8(im);
    [m, n] = size(im);
    p = zeros(1,256);
    for i = 1:m
        for j = 1:n
            p(im(i,j)+1) = p(im(i,j)+1) + 1;
        end
    end
    total = m * n;
    p = p / total;

    s = 0.0;
    level = 0;
    for i = 0:255
        w0 = 0;
        w1 = 0;
        m0 = 0;
        m1 = 0;
        
        for j = 0:i-1
            w0 = w0 + p(j+1);
            m0 = m0 + (j * p(j+1));
        end
        m0 = m0 / w0;
        for j = i:255
            w1 = w1 + p(j+1); 
            m1 = m1 + (j * p(j+1));
        end
        m1 = m1 / w1;
        
        temp = w0 * w1 * (m0 - m1)^2;
        if(temp >= s)
            s = temp;
            level = i;
        end
    end
end
