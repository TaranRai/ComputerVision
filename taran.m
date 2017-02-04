I = imread('taran.png');
figure; imshow(I); 

J = 255 - I;

figure; imshow(J);


%B = imresize(I, 0.5);
%figure; imshow(B); 

C = im2double(I);
figure; imshow(C); 

figure; imshow(I(:,:,2)); 
