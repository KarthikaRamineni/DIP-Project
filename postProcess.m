function [out_r, out_g, out_b] = postProcess(r, g, b)
    out_r = label2rgb(r,'jet','k');
    out_g = label2rgb(g,'jet','k');
    out_b = label2rgb(b,'jet','k');
end
