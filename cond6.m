function [ A ] = cond6(A,Ip,Wdl  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

a6=Ip-512;  %%cont 超出512的对角线像素个数
b6=258+a6;  %%cont 水平方法第一排起始位置
c6=2*Wdl+1;  %%cont 水平方向宽度，也是垂直方向宽度
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

