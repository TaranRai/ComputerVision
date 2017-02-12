%%camera man noise image

%let's add some noise to the image 

C = imread('cameraman.tif');
Cd = im2double(C); %Cd in [0,1]
Cd = imnoise(Cd,'salt & pepper', 0.02); %adding salt and pepper noise to the image 
f = ones(3,3)/9; %kernel
CamMan =imfilter(Cd, f); %multidimensional filter 
subplot(121);imshow(Cd);
subplot(122);imshow(CamMan);

%as it can be seen there is some effect on the salt and pepper but not
%much, instead the image appears more blurred

%we can try matlabs inbuilt median filter
%K = medfilt2(J)

I = imread('cameraman.tif');
J = imnoise(I, 'salt & pepper', 0.02);
K= medfilt2(J);
subplot(121);imshow(J);
subplot(122);imshow(K);

%This is much better. Median filtering is often successful with grayscale
%images when reducing noise (nonlinear operation)

%idea behind the median filter is to run through the signal entry by entry
%and replace each entry with the median of neighboring entries. 

%example of a disk filter

I = imread('cameraman.tif');

radius = 1;
J1 = fspecial('disk', radius);
K1 = imfilter(I, J1, 'replicate');

radius = 10;
J10 = fspecial('disk', radius);
K10 = imfilter(I,J10,'replicate');
subplot(131);imshow(I);title('original');
subplot(132);imshow(K1);title('disk: radius=1');
subplot(133);imshow(K10);title('disk: radius=10');




