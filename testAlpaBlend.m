IBG = imread('image.png');
IFG = imread('dog.jpg');
alpha = 0.4;
I = alphaBlend(IFG,IBG,alpha);
subplot(1,3,1);imshow(IFG);hold on;
subplot(1,3,2);imshow(IBG);hold on;
subplot(1,3,3);imshow(I);