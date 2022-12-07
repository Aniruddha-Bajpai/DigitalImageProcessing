img = imread('cameraman.tif');
i2 = im2bw(img);
f1 = [-1,-1,-1;2,2,2;-1,-1,-1];
f2 = [-1,-1,2;-1,2,-1;2,-1,-1];
f3 = [-1,2,-1;-1,2,-1;-1,2,-1];
f4 = [2,-1,-1;-1,2,-1;-1,-1,2];
i3 = zeros(258,258);
i3(2:257,2:257) = img;
for i=2:257
    for j=2:257
        sum1=0;sum2=0;sum3=0;sum4=0;
        for k=1:3
            for l=1:3
                a1 = i2(i-2+k,j-2+l)*f1(k,l);
                sum1 = sum1+a1;
                a2 = i2(i-2+k,j-2+l)*f2(k,l);
                sum2 = sum2+a2;
                a3 = i2(i-2+k,j-2+l)*f3(k,l);
                sum3 = sum3+a3;
                a4 = i2(i-2+k,j-2+l)*f4(k,l);
                sum4 = sum4+a4;
            end
        end
    sum = [sum1,sum2,sum3,sum4];
    i3(i,j) = max(sum);
    end
end
subplot(1,2,1); imshow(i2);
subplot(1,2,2); imshow(i3);