function  t=compareRGB(A,B)

A=double(A);
B=double(B);

for k=1:3
    a{k}=A(:,:,k);
    b{k}=B(:,:,k);
    e(k)=((( (a{k}-b{k}).^2)));
end
t=sqrt(e(1)+e(2)+e(3)); 

end

    