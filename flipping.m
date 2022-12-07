img = imread('cameraman.tif');
i2 = flip(img,1);
i3 = flip(img,2);
subplot(1,3,1); imshow(img);
subplot(1,3,2); imshow(i2);
subplot(1,3,3); imshow(i3);
im = zeros(256,256);
for i=1:256
    for j=1:256
        im(256-i+1,:) = i2(1,:);
    end
end
im = cast(im,'uint8');