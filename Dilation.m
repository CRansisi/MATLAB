%Dilation

BW1 = zeros(9,10);
BW1(4:6,4:7) = 1;
SE = strel('diamond',3);
BW2 = imdilate(BW1,SE);

%Erosion
BW3 = imerode(BW1,SE);

subplot(1,3,1); imshow(BW1); hold on; title('Black & White image');
subplot(1,3,2); imshow(BW2); hold on; title('Dilated image');
subplot(1,3,3); imshow(BW3); title('Eroded image');