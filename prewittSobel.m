I = imread('lena.png');
if length(size(I))==3
    I = rgb2gray(I);
end

P = edge(I,'prewitt');
S = edge(I,'sobel');
R = edge(I,'roberts');
C = edge(I,'canny');

subplot(2,3,1); imshow(I); hold on; title('Input image');
subplot(2,3,2); imshow(P); hold on; title('Prewitt');
subplot(2,3,3); imshow(S); hold on; title('Sobel');
subplot(2,3,4); imshow(R); hold on; title('Roberts');
subplot(2,3,5); imshow(C); title('Canny');