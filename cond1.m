function [ A ] = cond1(A,Ip,Wdl  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


a1=770-2*Ip-2*Wdl;  %%�����ֱ������ʼλ��
b1=2*Wdl-1;   %%�����ֱ������
c1=a1+b1-1;    %%�����ֱ������ֹλ��

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

end

