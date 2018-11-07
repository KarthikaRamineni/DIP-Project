function [r_norm, g_norm, b_norm] = normalize(im)
    r = im(:,:,1);
    g = im(:,:,2);
    b = im(:,:,3);
    r_norm = (r - min(r)) / (max(r) - min(r));
    g_norm = (g - min(g)) / (max(g) - min(g));
    b_norm = (b - min(b)) / (max(b) - min(b));
end
