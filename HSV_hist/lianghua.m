clc;clear;close all;
rgb1=imread('F:\matlabfile\Final_Fruit_Recognition\TrainDatas\apples.jpg');
rgb2=imread('F:\matlabfile\Final_Fruit_Recognition\TrainDatas\fruit.jpg');
rgb3=imread('F:\matlabfile\Final_Fruit_Recognition\TrainDatas\lemon.jpg');

h1=getHsvHist(rgb1);
h2=getHsvHist(rgb2);
h3=getHsvHist(rgb3);

% h2=hsvHist(rgb);
figure,
subplot(3,1,1)
bar(h1),
% title('ƻ��HSV�Ǿ�������ֱ��ͼ');
ylabel('���صĸ���');xlabel('ƻ��HSV�Ǿ�������ֱ��ͼ');

subplot(3,1,2)
bar(h2),
% title('��ݮHSV�Ǿ�������ֱ��ͼ');
ylabel('���صĸ���');xlabel('��ݮHSV�Ǿ�������ֱ��ͼ');

subplot(3,1,3)
bar(h3),
% title('����HSV�Ǿ�������ֱ��ͼ');
ylabel('���صĸ���');xlabel('����HSV�Ǿ�������ֱ��ͼ');
toc;
disp(['����ʱ��: ',num2str(toc)]);