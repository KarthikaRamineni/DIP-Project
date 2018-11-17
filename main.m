function main(im)
    im = imread(im);
    [r, g, b] = normalize(im);
    
    [t1_r, t2_r] = threshold(r);
    [t1_g, t2_g] = threshold(g);
    [t1_b, t2_b] = threshold(b);

    t1_r = t1_r / 255;  t2_r = t2_r / 255;
    t1_g = t1_g / 255;  t2_g = t2_g / 255;
    t1_b = t1_b / 255;  t2_b = t2_b / 255;
   
    [r, g, b] = ndimconv(r, g, b);
    
    [M1_r, M1_g, M1_b, M2_r, M2_g, M2_b] = adaptivemasking(r, g, b, t1_r, t1_g, t1_b, t2_r, t2_g, t2_b);
    
    [f_r, f_g, f_b] = imposemin(r, g, b, M2_r, M2_g, M2_b);
    
    [w_r, w_g, w_b] = waterShed(f_r, f_g, f_b);
    
    [l_r, l_g, l_b] = pixelLabel(w_r, w_g, w_b, M1_r, M1_g, M1_b);
    
    [p_r, p_g, p_b] = postProcess(l_r, l_g, l_b);
    
%     subplot(1,3,1), imshow(p_r);
%     subplot(1,3,2), imshow(p_g);
%     subplot(1,3,3), imshow(p_b);

    out = (p_r + p_g + p_b) / 3;
    imshow(uint8(out));
end
