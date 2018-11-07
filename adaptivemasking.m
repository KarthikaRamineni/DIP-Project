function [M1_r,M1_g,M1_b,M2_r,M2_g,M2_b] = normalize(im_r,im_g,im_b,t1_r,t1_g,t1_b,t2_r,t2_g,t2_b)
    M1_r=im_r>t1_r;
    M1_g=im_g>t1_g;
    M1_b=im_b>t1_b;
    M2_r=im_r>t2_r;
    M2_g=im_g>t2_g;
    M2_b=im_b>t2_b;
end
