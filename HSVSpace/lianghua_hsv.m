clc;clear;close all;
apples_rgb=imread('apples.jpg');
h1=getHsvHist(apples_rgb);
fruit_rgb=imread('fruit.jpg');
h2=getHsvHist(fruit_rgb);
ningmeng_rgb=imread('ningmeng.jpg');
h3=getHsvHist(ningmeng_rgb);
% h2=hsvHist(rgb);

figure,
subplot(3,1,1);
bar(h1),
% title('ƻ��HSV�Ǿ�������ֱ��ͼ','FontName','����','FontSize',10);
ylabel('���صĸ���','FontName','����','FontSize',10);
xlabel('ƻ��HSV�Ǿ���������Ҷȼ�','FontName','����','FontSize',10);
% set(gca,'FontName','Times New Roman','FontSize',6);
subplot(3,1,2);
bar(h2),
% title('��ݮHSV�Ǿ�������ֱ��ͼ','FontName','����','FontSize',10);
ylabel('���صĸ���','FontName','����','FontSize',10);
xlabel('��ݮHSV�Ǿ���������Ҷȼ�','FontName','����','FontSize',10);
% set(gca,'FontName','Times New Roman','FontSize',6);
subplot(3,1,3);
bar(h3),
% title('����HSV�Ǿ�������ֱ��ͼ','FontName','����','FontSize',10);
ylabel('���صĸ���','FontName','����','FontSize',10);
xlabel('����HSV�Ǿ���������Ҷȼ�','FontName','����','FontSize',10);
% set(gca,'FontName','Times New Roman','FontSize',6);
