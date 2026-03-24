RGB = imread('girl.tif');
R = RGB(:,:,1); %extract red component
G = RGB(:,:,2); %extract green component
B = RGB(:,:,3); %extract blue component

subplot(2,2,1); imshow(RGB); hold on;
subplot(2,2,2); imshow(R); hold on;
subplot(2,2,3); imshow(G); hold on;
subplot(2,2,4); imshow(B);