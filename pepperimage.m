I = imread('peppers.png');

J = 255 - I;

figure; imshow(J); 

I = imread('peppers.png');
[height, width, channels] = size(I);
for x = 1:width
for y = 1:height
J(y, x, 1) = 255 - I(y, x, 1); % invert red
J(y, x, 2) = 255 - I(y, x, 2); % invert green
J(y, x, 3) = 255 - I(y, x, 3); % invert blue
end

I = imread('peppers.png');
[height, width, channels] = size(I);
for x = 1:width
for y = 1:height
J(y, x, 1) = 255 - I(y, x, 1); % invert red
J(y, x, 2) = 255 - I(y, x, 2); % invert green
J(y, x, 3) = 255 - I(y, x, 3); % invert blue
end
end
figure; imshow(J);
end
figure; imshow(J);

I = imread('peppers.png');
[height, width, channels] = size(I);
for x = 1:width
for y = 1:height
J(y, x, 1) = 255 - I(y, x, 1); % invert red
J(y, x, 2) = 255 - I(y, x, 2); % invert green
J(y, x, 3) = 255 - I(y, x, 3); % invert blue
end
end
figure; imshow(J);