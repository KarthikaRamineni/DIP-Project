function [out_r, out_g, out_b] = postProcess(r, g, b)
    out_r = label2rgb(r);
    out_g = label2rgb(g);
    out_b = label2rgb(b);
end