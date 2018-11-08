function main(im)
    im = imread(im);
    [r, g, b] = normalize(im);
    
    [t1_r, t2_r] = threshold(r);
    [t1_g, t2_g] = threshold(g);
    [t1_b, t2_b] = threshold(b);
    
    t1_r = t1_r / 255;  t2_r = t2_r / 255;
    t1_g = t1_g / 255;  t2_g = t2_g / 255;
    t1_b = t1_b / 255;  t2_b = t2_b / 255;
   
    [conv_r, conv_g, conv_b] = ndimconv(r, g, b);
    
    [M1_r, M1_g, M1_b, M2_r, M2_g, M2_b] = adaptivemasking(r, g, b, t1_r, t1_g, t1_b, t2_r, t2_g, t2_b);
    
     subplot(1,3,1), imshow(M2_r);
     subplot(1,3,2), imshow(M2_g);
     subplot(1,3,3), imshow(M2_b);
end