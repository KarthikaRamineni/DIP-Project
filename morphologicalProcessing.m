function [MP_r,MP_g,MP_b] = morphologicalProcessing(M2_r,M2_g,M2_b)
	MP_r = imimposemin(M2_r,BW);
	MP_g = imimposemin(M2_g,BW);
	MP_b = imimposemin(M2_b,BW);
end
