function [out_r, out_g, out_b] = waterShed(r, g, b)
    out_r = watershed(r);
    out_g = watershed(g);
    out_b = watershed(b);
end