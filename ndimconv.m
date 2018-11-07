function [c_r, c_g, c_b] = ndimconv(im_r,im_g,im_b) 
    c_r=imbilatfilt(im_r);
    c_g=imbilatfilt(im_g);
    c_b=imbilatfilt(im_b);
end
