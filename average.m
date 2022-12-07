img = imread('cameraman.tif');
i1 = zeros(258,258);
i1(2:257,2:257) = img;
i3 = zeros(256,256);
i3 = double(i3);
f = [1,1,1;1,1,1;1,1,1];
for i=2:256
    for j=2:256
        sum = 0;
        for k=1:3
            for l=1:3
                sum = sum+i1(i-2+k,j-2+l)*f(k,l);
            end
        end
        i3(i,j) = sum/9;
    end
end
i3 = cast(i3,'uint8');
imshow(i3);
subplot(1,2,1); imshow(img);
subplot(1,2,2); imshow(i3);