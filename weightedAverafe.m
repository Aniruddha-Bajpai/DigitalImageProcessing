img = imread('cameraman.tif');
i2 = zeros(258,258); % 2-rows and 2-col padding with zero
i2(2:257,2:257) = img;
i3 = zeros(256,256);
i3 = cast(i3,'double');
f = [1,2,1;2,4,2;1,2,1];
for i=2:255
    for j=2:255
        sum = 0;
        for k=1:3
            for l=1:3
                sum = sum+i2(i-2+k,j-2+l)*f(k,l);
            end
        end
        i3(i,j) = sum/16;
    end
end
i2 = cast(i2,'uint8');
i3 = cast(i3,'uint8');
subplot(1,2,1); imshow(i2);
subplot(1,2,2); imshow(i3);

