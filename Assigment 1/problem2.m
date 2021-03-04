original = imread('Chast-Xray.jpg');
subplot(221),imshow(original),title('original image');
subplot(223),imhist(original),axis tight,title('original hist')
pheq = histeq(original);
subplot(222),imshow(pheq);
title('After Histogram Equalization');
subplot(224), imhist(pheq),axis tight
title('Histogram of the hist-equalized image')