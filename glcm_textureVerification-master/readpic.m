AuImgList =dir(fullfile('F:\matlabfile\GLCM\glcm_textureVerification-master\app\','*.jpg'));  %�Ѵ�������ļ���Ŀ¼E:/researchData/CASIAv1.0/Au�µ�����jpg�ļ��г�����������Щ�ļ�������Ϣ��ŵ�һ������AuImgList �У�AuImgList ��һ���ṹ��������飬ֻҪ��AuImgList ����ѭ���Ϳ��Զ�ȡ�������ļ���������
%��������ͼƬ��ʽ֧�֣������Լ�������dir()��������ʵ�ֲ�������ͼƬ�ļ��Ĺ��ܣ�
%���ͼƬ������·���������� ["·��" ".��չ��"] �ַ�����ʵ�֡�
k =length(AuImgList);
for m=1:1:k
fileName=strcat('F:\matlabfile\GLCM\glcm_textureVerification-master\app\',AuImgList(m).name);  %��ȡͼ���ļ��ľ���·��
AuImage_data{m}=imread(fileName);  %��ͼ���ļ�
AuImageGray_data{m} = rgb2gray(AuImage_data{m});%�����еĺ�������RGB���Ҷ�ͼ���ת��


[rows , cols , colors] = size(AuImage_data{m});%�õ�ԭ��ͼ��ľ���Ĳ���
MidGrayPic = zeros(rows , cols);%�õõ��Ĳ�������һ��ȫ��ľ���������������洢������ķ��������ĻҶ�ͼ��
MidGrayPic = uint8(MidGrayPic);%��������ȫ�����ת��Ϊuint8��ʽ����Ϊ���������䴴��֮��ͼ����double�͵�


for i = 1:rows
    for j = 1:cols
        sum = 0;
        for k = 1:colors
            sum = sum + AuImage_data{m}(i , j , k) / 3;%����ת���Ĺؼ���ʽ��sumÿ�ζ���Ϊ��������ֶ����ܳ���255
        end
        MidGrayPic(i , j) = sum;
    end

end


str= strcat ('F:\matlabfile\GLCM\glcm_textureVerification-master\app\', AuImgList(m).name(1:end-4) , 'apple.png') ; % �����ַ����γ����ɵĻҶ�ͼ����ļ�����1��end-4ȥ��ԭ���ļ��ĺ�׺��

imwrite(MidGrayPic , str, 'png');      %д�ļ�
end 
