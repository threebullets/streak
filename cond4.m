function [ A] = cond4(A,Ip,Wdl  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

a4=Ip-384;  %%cont����384�ĶԽ������ظ���
b4=2*a4-1;  %%cont ˮƽ������һ����ʼλ��
c4=2*Wdl;  %%cont ˮƽ������
d4=b4+c4-1;

i=0;
for n=1 : 768
    A(n,b4+i:d4+i)=255;
    i=i+1;
end


end

