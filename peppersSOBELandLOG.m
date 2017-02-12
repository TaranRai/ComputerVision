%peppers image SOBEL vs LOG methods

img = imread('peppers.png');
imgG = rgb2gray(img);
imgd = im2double(imgG);

I = imgd;


%define sobel convolution kern
S = [-1, 0 ,1; -2, 0, 2; -1, 0, 1];
IS = imfilter(I, S);

L = double(imread('peppers.png')); 
L= imresize(L, 0.333);
K = fspecial('log', 11, 1);
LL= imfilter(L, K);
subplot(121); imshow(IS); title('Sobel Method');
subplot(122); imshow(LL); title('Log Method'); 


%using the edge function

BW = edge(I, 'Sobel Method', 



