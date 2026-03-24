load ycbcr
y = ycbcr(:,:,1); 
cb = ycbcr(:,:,2); 
cr = ycbcr(:,:,3); 

subplot(2,2,1); imshow(ycbcr); hold on;
subplot(2,2,2); imshow(y); hold on;
subplot(2,2,3); imshow(cb); hold on;
subplot(2,2,4); imshow(cr);