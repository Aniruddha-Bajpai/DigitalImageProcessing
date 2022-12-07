img = imread('cameraman.tif');
i2 = im2bw(img);
sc = strel('line',11,90);
erode = imerode(img,sc);
dilate = imdilate(img,sc);
open = imdilate(erode,sc);
close = imerode(dilate,sc);
boundary = zeros(256,256);
erode = im2bw(erode);
for i=1:255
    for j=1:255
        boundary(i,j) = i2(i,j)-erode(i,j);
    end
end
hm = zeros(size(i2));
i2invert = invertedF(i2);
w = ones(size(sc));
[m,n] =  size(sc);
for i=1:m
    for j=1:n
        w(i,j) = w(i,j)-sc(i,j);
    end
end
iminver = imerode(i2invert,w);
for i=1:255
    for j=1:255
        if(erode(i,j)==iminver(i,j))
            hm(i,j) = erode(i,j);
        end
    end
end
subplot(1,7,1); imshow(i2);
subplot(1,7,2); imshow(erode);
subplot(1,7,3); imshow(dilate);
subplot(1,7,4); imshow(open);
subplot(1,7,5); imshow(close);
subplot(1,7,6); imshow(boundary);
subplot(1,7,7); imshow(hm);
