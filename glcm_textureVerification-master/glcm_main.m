
clear all;clc;
 
ImagePath='F:\matlabfile\Final_Fruit_Recognition\glcm_textureVerification-master\Apples\';
Images = dir([ImagePath, '*png']);
PictureNums = length(Images);
FitureNums = 8;
gray_comatrix=zeros(PictureNums,FitureNums);
label_features=zeros(4,21);
 
for i=1:PictureNums
%     i
    name = Images(i).name;
    I=imread([ImagePath,name]);
%     I=im2double(I);
%    H=rgb2gray(I);
    
    H=graycomatrix(I,'GrayLimits',[],'NumLevels', FitureNums,'Offset',[0 1]);%�õ��Ҷȹ�������
    
    stats=graycoprops(H,'all');
    %����
    Energy = [];
    Energy= [Energy,stats.Energy];
    Energy=mean(Energy);
    %�Աȶ�
    Contrast=[];
    Contrast=[Contrast,stats.Contrast];
    Contrast=mean(Contrast);
    %�����
    Correlation=[];
    Correlation=[Correlation,stats.Correlation];
    Correlation=mean(Correlation);
%     %������
%     Dissimilarity=[];
% %     Dissimilarity=[Dissimilarity,stats.Dissimilarity];
%     Dissimilarity=mean(Dissimilarity);
%     %��ֵ
%     Entropy=[];
% %     Entropy=[Entropy,stats.Entropy];
%     Entropy=mean(Entropy);
    %�����
    Homogeneity=[];
    Homogeneity=[Homogeneity,stats.Homogeneity];
    Homogeneity=mean(Homogeneity);
%     %��ֵ
%     Mean=[];
% %     Mean=[Mean,stats.Mean];
%     Mean=mean(Mean);
%     %Э����
%     Variance=[];
% %     Variance=[Variance,stats.Variance];
%     Variance=mean(Variance);
  


    
    
    %     gray_comatrix(i,1)=Energy;
    %     gray_comatrix(i,2)=Contrast;
    %     gray_comatrix(i,3)=Correlation;
    %     gray_comatrix(i,4)=Dissimilarity;
    %     gray_comatrix(i,5)=Entropy;
    %     gray_comatrix(i,6)=Homogeneity;
    %     gray_comatrix(i,7)=Mean;
    %     gray_comatrix(i,8)=Variance;
    
    %����ǩ
    if(name(1)=='C')
        label = 1;
    else
        label = 0;
    end
%     label_features(1,i) = label;
    label_features(1,1)=0;
    label_features(2,1)=45;
    label_features(3,1)=90;
    label_features(4,1)=135;
    label_features(1,i+1) = Energy;%����
    label_features(2,i+1) = Contrast;%�Աȶ�
    label_features(3,i+1) = Correlation;%�����
%     label_features(i,5) = Dissimilarity;
%     label_features(i,6) = Entropy;%��ֵ
    label_features(4,i+1) = Homogeneity; %�����
%     label_features(i,8) = Mean;
%     label_features(i,9) = Variance;
end
 
% save('mat�ļ���', '������') 
save('label_features', 'label_features');
