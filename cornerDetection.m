%Corner detection 
%corner function identifies corners in an image 
%the larger the difference between the surroundings of a pixel and those of
%its neighbours, the more likely that a pixel appears at a corner

I = checkerboard(40,2,2);
C = corner(I);
subplot(1,2,1);
imshow(I);
hold on
plot(C(:,1), C(:,2), '*', 'Color', 'c')
title('Maximum Corners = 200')
hold off

%corners are more reliable features in finding the correspondance between
%images 