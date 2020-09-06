clear all;
clc;
ImagePath='F:\matlabfile\GLCM\glcm_textureVerification-master\Data1\';  %���ݼ�·��
Images=dir([ImagePath,'*.png']);%���ݼ����ͼ��
PictureNums=length(Images);%ͼ�����
FitureNums=8;
gray_comatrix=zeros(PictureNums,FitureNums);%����һ��9*8�����
label_features=zeros(PictureNums,FitureNums+1);
for i=1:PictureNums
    name=Images(i).name;
    I=imread([ImagePath,name]);
   [GLCMS,SI]=graycomatrix(I,'GrayLimits',[],'NumLevels',FitureNums,'Offset',[0 1;-1 1;0 -1;-1 -1]);%��ȡ�ҶȾ���
   H=GLCMS;
   [kk,ll,mm]=size(H);
    
    
   
%     stats=graycoprops(H,'all');
%     %����
%     Energy=[];
%     Energy=[Energy,stats.Energy];
end