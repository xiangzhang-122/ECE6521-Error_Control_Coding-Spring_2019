% 12-30
gen_poly= [2 ,3];
rate = 0.5;
miu = 2;
trellis = poly2trellis(miu, gen_poly);
y =[1.5339, 0.6390, -0.6747, -3.0183, 1.5096, 0.7664, -0.4019, 0.3185,2.7121, -0.7304, 1.4169, -2.0341, 0.8971, -0.3951, 1.6254, -1.1768, 2.6954, -1.0575];
ap_LLR = zeros(1,rate*length(y));
[alpha, beta, LLR, dec_seq] = mogen_log_map_bcjr(y, trellis, 0.5, ap_LLR, 'term')
%% result:
% LLR =
% 
%   Columns 1 through 7
% 
%    1.727054457421833   1.524714900128696   1.520045309854099   0.220964967279118   7.770356372022310   7.160980566122126   3.488390307985007
% 
%   Columns 8 through 9
% 
%    2.910983556072122 -12.905576523783669
% 
% 
% dec_seq =
% 
%      1     1     1     1     1     1     1     1     0

%-----------------------------prob. 3 -------------------------
ap_LLR =[1, -0.5, -1.5, 0, 0.8, -1.2, 2, -1.8, 0];
[alpha, beta, LLR, dec_seq] = mogen_log_map_bcjr(y, trellis, 0.5, ap_LLR, 'term')

%%%% result   %%%%
% LLR =
% 
%   Columns 1 through 7
% 
%    2.743644276379321   2.304810088786809  -0.028032174538474   0.604497999838365   7.905004170729362   6.250852219305019   4.034942270625599
% 
%   Columns 8 through 9
% 
%    1.587647993451506 -12.758928754465675
% 
% 
% dec_seq =
% 
%      1     1     0     1     1     1     1     1     0





