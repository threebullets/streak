function [ A ] = cond6(A,Ip,Wdl  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

a6=Ip-512;  %%cont ����512�ĶԽ������ظ���
b6=258+a6;  %%cont ˮƽ������һ����ʼλ��
c6=2*Wdl+1;  %%cont ˮƽ�����ȣ�Ҳ�Ǵ�ֱ������
d6=b6+c6-1;  %% cont ˮƽ�����һ����ֹλ��
e6=1024-d6+1;  %%cont  ��ֱ�������Ҳ���ʼλ��
f6=e6+c6-1;     %%cont  ��ֱ�������Ҳ���ֹλ��


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

