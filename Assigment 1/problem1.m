original = imread('Chast-Xray.jpg');
al = im2double(original);
[r c] = size(al);
gamma = 0.3;
out = abs((1*al).^gamma);
maxr = max(out(:));
minc = min(out(:));
for i = 1:r
    for j = 1:c
        out(i,j) = (255*out(i,j))/(maxr-minc);
    end
end
out = uint8(out);
subplot(221);imshow(original);title('Before');
subplot(222);imshow(out);title('After');
