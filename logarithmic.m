img = imread('cameraman.tif');
i2 = zeros(256,256);
img = cast(img,'double');
c = input('Enter the value');
for i=1:256
    for j=1:256
        i2(i,j) = c*log(1+img(i,j));
    end
end
img = cast(img,'uint8');
i2 = cast(i2,'uint8');
subplot(1,2,1); imshow(img);
subplot(1,2,2); imshow(i2);
