I = imread('lena.png');
if length(size(I))==3
    I = rgb2gray(I);
end

%applying gaussian noise
I = imnoise(I,'salt & pepper');

H = @(x) min(x(:));
JMin = nlfilter(I,[3 3],H);

H = @(x) max(x(:));
JMax = nlfilter(I,[3 3],H);

H = @(x) median(x(:));
JMedian = nlfilter(I,[3 3],H);

subplot(2,2,1); imshow(I); hold on; title('Input Image');
subplot(2,2,2); imshow(JMin); hold on; title('Min Filter');
subplot(2,2,3); imshow(JMax); hold on; title('Max Filter');
subplot(2,2,4); imshow(JMedian); title('Median Filter');
