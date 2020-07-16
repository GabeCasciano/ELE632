n = 0:35;
ohm = -pi:(2*pi)/35:pi;

Ohm_o = ((2*pi)/3)/35;

H = [zeros(1, floor(Ohm_o)) ones(ceil(Ohm_o, 35))];
h = ifft(H);

H_2 = freqz(h,1,0:2*pi/1001:2*pi);