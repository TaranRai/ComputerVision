I = imread('burnaby.jpg');
R = I(:, :, 1);
G = I(:, :, 2);
B = I(:, :, 3);
s_r= 1.25; s_g= 1; s_b= 1;
J(:, :, 1) = s_r* R;
J(:, :, 2) = s_g* G;
J(:, :, 3) = s_b* B;
figure; imshow(J);