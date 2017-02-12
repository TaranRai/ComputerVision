%face blurring task

F = imread('class.JPG');

FaceDetector = vision.CascadeObjectDetector();
bbox = step(FaceDetector,F);
g= ones(3,3)/9;

for j=1:size(bbox, 1)
    xbox=bbox(j,:);
    subImage = imcrop(F, xbox);
    H = fspecial('disk',10);
    blurred = imfilter(subImage,H);
    F(xbox(2):xbox(2)+xbox(4),xbox(1):xbox(1)+xbox(3),1:end) = blurred; 
end


    
B = insertObjectAnnotation(F,'rectangle', xbox, 'Face');
figure; imshow(B); title('Detected Faces');

