function [ ] = streak(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

clear;
clc;


strfile=strcat('1','.dat');
strfile1=strcat('2','.dat');
fid1=fopen(strfile,'wb+');
fid2=fopen(strfile1,'wb+');

%%Initial parameter
h=1024;      %%horizontal
v=768;       %%vertical
A=zeros(v,h);


sn=input('请输入白色条纹的条数：');
for i=1:sn
    Ip=input(sprintf('请输入第%d条白色条纹在对角线上的起始位置：',i));
    if(Ip>768)
        return
    end
    wdl=input(sprintf('请输入第%d条白色条纹在对角线上的宽度：',i));  %%width in diagonat line
    sum=Ip+wdl;

    if(sum>768)
        return
    end
        
    
    if Ip<=384&&sum<=384     %%768/2=384
        A=cond1(A,Ip,wdl);
    elseif Ip<=384&&sum<=512   %%384+(1024-768)/2=512
        A=cond2(A,Ip,wdl);
    elseif Ip<=384&&sum>512
        A=cond3(A,Ip,wdl);
    elseif Ip>384&&Ip<=512&&sum<=512
        A=cond4(A,Ip,wdl);
    elseif Ip>384&&Ip<=512&&sum>512
        A=cond5(A,Ip,wdl);
    elseif Ip>512&&sum>512
        A=cond6(A,Ip,wdl);
    else
        disp('您的输入有误')
    end
end



B=A;
C=A;
for i=1:768
    if rem(i,2)==1
        
        B(i,1:1024)=0;

    end
end

for i=1:768
    if rem(i,2)==0
        
        C(i,1:1024)=0;

    end
end

A=flipdim(A,2);
B=flipdim(B,2);
C=flipdim(C,2);

colormap(gray);
box off;
subplot(2,2,1)
image(A)

subplot(2,2,2)
image(B)

subplot(2,2,3)
image(C)

count=fwrite(fid1,B,'uint8');
count1=fwrite(fid2,C,'uint8');
fclose(fid1);
fclose(fid2);

imwrite(A, 'A.bmp', 'bmp');
imwrite(B, 'B.bmp', 'bmp');
imwrite(C, 'C.bmp', 'bmp');


end



