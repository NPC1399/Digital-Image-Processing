a = imread('Chast-Xray.jpg');
an = imadjust(a);
laplace = [0 -1 0;-1 4 -1;0 -1 0];
b = imfilter(an,laplace);
c = an+b;
sobel_x = [1 0 -1;2 0 -2;1 0 -1];
sobel_y = [1 2 1;0 0 0;-1 -2 -1];
d = imfilter(an,sobel_x)+imfilter(an,sobel_y);
figure,imshow(a);title('Before');
e = an-b-d; %noise
f = an-e; %delete noise
g = an+f;
h = imadjust(g,[],[],0.3);
figure,imshow(h);title('After');