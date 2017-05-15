function [ A] = cond4(A,Ip,Wdl  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

a4=Ip-384;  %%cont超出384的对角线像素个数
b4=2*a4-1;  %%cont 水平方法第一排起始位置
c4=2*Wdl;  %%cont 水平方向宽度
d4=b4+c4-1;

i=0;
for n=1 : 768
    A(n,b4+i:d4+i)=255;
    i=i+1;
end


end

