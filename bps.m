img = imread('cameraman.tif');
subplot(3,3,1); imshow(img);
p1 = bitget(img,1); p2 = bitget(img,2); 
p3 = bitget(img,3); p4 = bitget(img,4);
p5 = bitget(img,5); p6 = bitget(img,6);
p7 = bitget(img,7); p8 = bitget(img,8);
subplot(3,3,2); p1 = cast(p1,'logical'); imshow(p1);
subplot(3,3,3); p2 = cast(p2,'logical'); imshow(p2);
subplot(3,3,4); p3 = cast(p3,'logical'); imshow(p3);
subplot(3,3,5); p4 = cast(p4,'logical'); imshow(p4);
subplot(3,3,6); p5 = cast(p5,'logical'); imshow(p5);
subplot(3,3,7); p6 = cast(p6,'logical'); imshow(p6);
subplot(3,3,8); p7 = cast(p7,'logical'); imshow(p7);
subplot(3,3,9); p8 = cast(p8,'logical'); imshow(p8);