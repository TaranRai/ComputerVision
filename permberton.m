
%pemberton image
%trying to mimic the lark instagram filter

I = imread('pemberton.JPG'); 
J = imresize(I, 0.1);
HSV = rgb2hsv(J);

H= HSV(:, :, 1);
S= HSV(:, :, 2);
V= HSV(:, :, 3);

s_H = 1; s_S = 1; s_V = 1.1;

T(:, :, 1) = s_H * H;
T(:, :, 2) = s_S * S;
T(:, :, 3) = s_V * V; 

T = hsv2rgb(T);

figure; imshow(T); 

%Now to transform the rgb colours with the exception of red 

R = T(:, :, 1);
G = T(:, :, 2);
B = T(:, :, 3);

s_r = 1; 
s_g = 1.2; 
s_b = 1.2;

A(:, :, 1) = s_r * R;
A(:, :, 2) = s_g * G;
A(:, :, 3) = s_b * B;

subplot(121); imshow(J); title('Original');
subplot(122); imshow(A); title('Lark attempt');




