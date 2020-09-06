I=imread('Lena.jpg');
gray=rgb2gray(I);
GS=graycomatrix(gray,'NumLevels',256);%ˮƽλ�����Ӽ��㹲������
GSn=GS/sum(GS(:));%��һ������
stats=graycoprops(GS,'all');%���������������
maxProbability=max(GSn(:));%������
corr=stats.Correlation;%���
contrast=stats.Contrast;%�Աȶ�
energy=stats.Energy;%����
hom=stats.Homogeneity;%ͬ��
for J=1:size(GSn,1)
sumcols(J)=sum(-GSn(J,1:end).*log2(GSn(J,1:end)+eps));
end
entropy=sum(sumcols);%��
Y=[maxProbability,corr,contrast,energy,hom,entropy];
