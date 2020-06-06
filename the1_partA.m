s1 = size(imread('A1.jpg'));
s2 = size(imread('A2.jpg'));
s3 = size(imread('A3.jpg'));

a1 = imread('A1.jpg');
a2 = imread('A2.jpg');
a3 = imread('A3.jpg');

a1s = imread('A1_shrinked.jpg');
a2s = imread('A2_shrinked.jpg');
a3s = imread('A3_shrinked.jpg');

a1r1 = imresize(a1s, s1(1:2),'bilinear');
a2r1= imresize(a2s, s2(1:2),'bilinear');
a3r1 = imresize(a3s, s3(1:2),'bilinear');

imwrite(a1r1,'A1_result_bilinear.jpg');
imwrite(a2r1,'A2_result_bilinear.jpg');
imwrite(a3r1,'A3_result_bilinear.jpg');

a1r2 = imresize(a1s, s1(1:2),'bicubic');
a2r2 = imresize(a2s, s2(1:2),'bicubic');
a3r2 = imresize(a3s, s3(1:2),'bicubic');

imwrite(a1r2,'A1_result_bicubic.jpg');
imwrite(a2r2,'A2_result_bicubic.jpg');
imwrite(a3r2,'A3_result_bicubic.jpg');

res1 =  compareimg(a1,a1r1);
res2 = compareimg(a1,a1r2);
res3 = compareimg(a1r1,a1r2);

O_B1 = sum(res1(:));
O_C1 = sum(res2(:));
B_C1 = sum(res3(:));

res1 =  compareimg(a2,a2r1);
res2 = compareimg(a2,a2r2);
res3 = compareimg(a2r1,a2r2);

O_B2 = sum(res1(:));
O_C2 = sum(res2(:));
B_C2 = sum(res3(:));

res1 =  compareimg(a3,a3r1);
res2 = compareimg(a3,a3r2);
res3 = compareimg(a3r1,a3r2);

O_B3 = sum(res1(:));
O_C3 = sum(res2(:));
B_C3 = sum(res3(:));


 




