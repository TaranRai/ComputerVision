%edge detection 

%we will look at the detection of vertical and horizontal edges in an image


%import image
img = imread('Westminster.jpg');
%convert to grayscale
imgG = rgb2gray(img);
%convert to double
imgd = im2double(imgG);

I = imgd;

%now we look at the vertical edges

%a simple first derivative kernel is 0.5*[-1 0 1]
%an edge is where an image changes brightness suddenly 

%one approach to detect edges is through spatial derivatives of the image
%brightness, as derivatives measure change

%the derivative of f(x) with respect to x measures how much f changes as x 
%changes 

%an image is a function of two variables I(x, y), therefore we can take
%derivatives with respect to x or y
%taking the derivative with respect to x measure the sudden change of
%image intensity in the horizontal direction
%taking the derivative with repsect to y measures the sudden change of
%image intensity in the vertical direction

%first derivative kernel defined
K = 0.5*[-1 0 1];

%vertical edge
%with respect to x of image I
Iy = imfilter(I, K);
figure;
imshow(im2uint8(Iy));

%horizontal edge
%with repsect to y of image I
Ix = imfilter(I, K);
figure;
imshow(im2uint8(Ix));


%The SOBEL edge detection method
%a common variant of the first derivative filter (with repsect to x)


%define 3x3 matrix 
S = [-1, 0, 1 ; -2, 0, 2; -1,0,1];

IS = imfilter(I, S);
figure;
imshow(im2uint8(IS));


%The Prewitt method 

P = [-1, 0, 1; -1, 0, 1; -1, 0 1];

IP =imfilter(I,P);
figure;
imshow(im2uint8(IP));



%The LOG filter
I = double(imread('Westminster.jpg'));
I = imresize(I, 0.333);
K = fspecial('log', 11, 1);
J = imfilter(I, K);
figure; imshow(im2uint8(J));
title('LOG');





