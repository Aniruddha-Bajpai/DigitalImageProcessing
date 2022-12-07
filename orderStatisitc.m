img = imread('cameraman.tif');
i3 = zeros(256,256);
i4 = zeros(256,256);
i5 = zeros(256,256);
s = input("enter the size");
c = (s+1)/2;
for i=c:256-c+1
    for j=c:256-c+1
        i3(i,j) = min(min(img(i-c+1:i-c+s),j-c+1:j-c+s));
        i4(i,j) = max(max(img(i-c+1:i-c+s),img(j-c+1:j-c+s)));
        i4(i,j) = median(median(img(i-c+1:i-c+s),img(j-c+1:j-c+s)));
    end
end
subplot(2,2,1); imshow(uint8(img));
subplot(2,2,2); imshow(uint8(i3));
subplot(2,2,3); imshow(uint8(i4));
subplot(2,2,4); imshow(uint8(i5));
