function [out_r, out_g, out_b] = pixelLabel(r, g, b, M_r, M_g, M_b)
    r(~M_r) = 0;
    g(~M_g) = 0;
    b(~M_b) = 0;
    
    out_r = bwlabel(r);
    out_g = bwlabel(g);
    out_b = bwlabel(b);
end