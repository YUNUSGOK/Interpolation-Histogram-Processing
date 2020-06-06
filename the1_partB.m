img1 = imread('B1.jpg');
img2 = imread('B2.jpg');
img3 = imread('B3.jpg');
img4 = imread('B4.jpg');

res1 = img1;
res2 = img2;
res3 = img3;
res4 = img4;

%Start ::result1 
map1r = mapped(img1(:,:,1),img2(:,:,1));
map1g = mapped(img1(:,:,2),img2(:,:,2));
map1b = mapped(img1(:,:,3),img2(:,:,3));

res1(:,:,1) = map1r(double(img1(:,:,1))+1);
res1(:,:,2) = map1g(double(img1(:,:,2))+1);
res1(:,:,3) = map1b(double(img1(:,:,3))+1);

imwrite(res1,'B1_hismatch_out.jpg');

hist1 = histogram(histcum(res1));
saveas(hist1,'B1_histmatch.jpg')
%End ::result1 

%Start ::result2 
map2r = mapped(img2(:,:,1),img1(:,:,1));
map2g = mapped(img2(:,:,2),img1(:,:,2));
map2b = mapped(img2(:,:,3),img1(:,:,3));

res2(:,:,1) = map2r(double(img2(:,:,1))+1);
res2(:,:,2) = map2g(double(img2(:,:,2))+1);
res2(:,:,3) = map2b(double(img2(:,:,3))+1);

imwrite(res2,'B2_histmatch_out.jpg');

hist2 = histogram(histcum(res2));
saveas(hist2,'B2_histmatch.jpg')
%End ::result2

%Start ::result3 
map3r = mapped(img3(:,:,1),img4(:,:,1));
map3g = mapped(img3(:,:,2),img4(:,:,2));
map3b = mapped(img3(:,:,3),img4(:,:,3));

res3(:,:,1) = map3r(double(img3(:,:,1))+1);
res3(:,:,2) = map3g(double(img3(:,:,2))+1);
res3(:,:,3) = map3b(double(img3(:,:,3))+1);

imwrite(res3,'B3_histmatch_out.jpg');

hist3 = histogram(histcum(res3));
saveas(hist3,'B3_histmatch.jpg')
%End ::result3

%Start ::result4 
map4r = mapped(img4(:,:,1),img3(:,:,1));
map4g = mapped(img4(:,:,2),img3(:,:,2));
map4b = mapped(img4(:,:,3),img3(:,:,3));

res4(:,:,1) = map4r(double(img4(:,:,1))+1);
res4(:,:,2) = map4g(double(img4(:,:,2))+1);
res4(:,:,3) = map4b(double(img4(:,:,3))+1);

imwrite(res4,'B4_histmatch_out.jpg');

hist4 = histogram(histcum(res4));
saveas(hist4,'B4_histmatch.jpg')
%End ::result4







