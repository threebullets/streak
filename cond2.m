function [ A ] = cond2(A,Ip,Wdl  )
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
Wdl2=Wdl-Wdl1;
a2=Ip2-384;  %%cont超出384的对角线像素个数
b2=2*a2-1;  %%cont 水平方法第一排起始位置
c2=2*Wdl2;  %%cont 水平方向宽度
d2=b2+c2-1;

i=0;
for n=1 : 768
    A(n,b2+i:d2+i)=255;
    i=i+1;
end


end

