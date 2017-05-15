function [ A ] = cond3(A,Ip,Wdl  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Wdl1=384-Ip;
a1=770-2*Ip-2*Wdl1;  %%左侧竖直方向起始位置
b1=2*Wdl1-1;   %%左侧竖直方向宽度
c1=a1+b1-1;    %%左侧竖直方向终止位置

p=a1;
for n=1 : b1
    A(p,1:n)=255;
    p=p+1;
end
i=2;
for n=(c1+1):768
    A(n,i:i+b1-1)=255;
    i=i+1;
end

Ip2=385;
Wdl2=128;
a2=Ip2-384;  %%cont超出384的对角线像素个数
b2=2*a2-1;  %%cont 水平方法第一排起始位置
c2=2*Wdl2;  %%cont 水平方向宽度
d2=b2+c2-1;

i=0;
for n=1 : 768
    A(n,b2+i:d2+i)=255;
    i=i+1;
end

Ip3=511;
Wdl3=Wdl-Wdl1-Wdl2;
a6=Ip3-512;  %%cont 超出512的对角线像素个数
b6=258+a6;  %%cont 水平方法第一排起始位置
c6=2*Wdl3+1;  %%cont 水平方向宽度，也是垂直方向宽度
d6=b6+c6-1;  %% cont 水平方向第一排终止位置
e6=1024-d6+1;  %%cont  垂直方向最右侧起始位置
f6=e6+c6-1;     %%cont  垂直方向最右侧终止位置


j=b6;
for n=1:(e6-1)
    A(n,j:j+c6-1)=255;
    j=j+1;
end

j=e6;
for n=1:c6
    A(j,(1024-c6+n):1024)=255;
    j=j+1;
end


end

