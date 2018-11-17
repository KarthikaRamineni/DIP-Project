function [out_r, out_g, out_b] = imposemin(r, g, b, bw_r, bw_g, bw_b)
    out_r = imimposemin(r, bw_r);
    out_g = imimposemin(g, bw_g);
    out_b = imimposemin(b, bw_b);
end