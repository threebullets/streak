function [ A ] = cond3(A,Ip,Wdl  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Wdl1=384-Ip;
a1=770-2*Ip-2*Wdl1;  %%�����ֱ������ʼλ��
b1=2*Wdl1-1;   %%�����ֱ������
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

Ip2=385;
Wdl2=128;
a2=Ip2-384;  %%cont����384�ĶԽ������ظ���
b2=2*a2-1;  %%cont ˮƽ������һ����ʼλ��
c2=2*Wdl2;  %%cont ˮƽ������
d2=b2+c2-1;

i=0;
for n=1 : 768
    A(n,b2+i:d2+i)=255;
    i=i+1;
end

Ip3=511;
Wdl3=Wdl-Wdl1-Wdl2;
a6=Ip3-512;  %%cont ����512�ĶԽ������ظ���
b6=258+a6;  %%cont ˮƽ������һ����ʼλ��
c6=2*Wdl3+1;  %%cont ˮƽ�����ȣ�Ҳ�Ǵ�ֱ������
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

