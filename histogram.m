i1=imread('cameraman.tif');
his = zeros(256,256);
hiseq = zeros(256,2);
for i=1:256
    his(i,1) = i-1;
end
for k=1:256
    cnt = 0;
    for i=1:256
        for j=1:256
            if i1(i,j) == k-1
                cnt = cnt+ 1;
            end
        end
    end
    his(k,2) = cnt;
end
for i=1:256
    his(i,3) = his(i,2)/65536;
end
his(1,4) = his(1,3);
for i=2: 256
    his(i,4) = his(i-1,4)+his(i,3);
end
for i=1: 256
    his(i,5) = his(i,4)*255;
end
for i=1: 256
    his(i,6) = round(his(i,5));
end
for i=1: 256
    hiseq(i,1) = his(i,1);
end
for i=1: 256
    cnt = 0;
    for j=1: 256
        if hiseq(i,1)==his(j,6)
            cnt = cnt+ his(j,2);
        end
    end
    hiseq(i,2) = cnt;
end
subplot(2,2,1);
bar(his(:,1),his(:,2));
subplot(2,2,2);
bar(hiseq(:,1),hiseq(:,2));
t1 = i1;
for k=1:256
    for i=1: 256
        for j=1: 256
            if t1(i,j) == k-1
                t1(i,j) = his(k,6);
            end
        end
    end
end
subplot(2,2,3)
imshow(i1);
subplot(2,2,4);
imshow(t1);