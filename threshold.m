function [T1, T2] = threshold(im)
    T1 = 256 * graythresh(im);
    new = im(im > T1);
    T2 = 256 * graythresh(new);
end