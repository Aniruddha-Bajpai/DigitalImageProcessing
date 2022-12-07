img = imread('cameraman.tif');
i2 = zeros(256,256);
for i=1:256
    for j=1:256
        i2(i,j) = 255-img(i,j);
    end
end
i2 = cast(i2,'uint8');
subplot(1,2,1); imshow(img);
subplot(1,2,2); imshow(i2);
