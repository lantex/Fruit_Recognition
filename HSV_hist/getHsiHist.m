function vec = getHsiHist(rgb)
[M,N,O] = size(rgb);
if O~= 3
    error('3 components are needed for histogram');
end
rgb = rgb2hsi(rgb);
[h,s,i]=size(rgb);
H = h; S = s; I = i;
h = h*360;

%��hsv�ռ�ǵȼ��������
%  h������8����
%  s������3����
% i������3����
for i = 1:M
    for j = 1:N
        if h(i,j)<=20||h(i,j)>316
            H(i,j) = 0;
        end
        if h(i,j)<=40&&h(i,j)>21
            H(i,j) = 1;
        end
        if h(i,j)<=75&&h(i,j)>41
            H(i,j) = 2;
        end
        if h(i,j)<=155&&h(i,j)>76
            H(i,j) = 3;
        end
        if h(i,j)<=190&&h(i,j)>156
            H(i,j) = 4;
        end
        if h(i,j)<=270&&h(i,j)>191
            H(i,j) = 5;
        end
        if h(i,j)<=295&&h(i,j)>271
            H(i,j) = 6;
        end
        if h(i,j)<=315&&h(i,j)>296
            H(i,j) = 7;
        end
%         if h(i,j)<=315&&h(i,j)>296
%             H(i,j) = 8;
%         end
%         if h(i,j)<=220&&h(i,j)>190
%             H(i,j) = 9;
%         end
%         if h(i,j)<=255&&h(i,j)>220
%             H(i,j) = 10;
%         end
%         if h(i,j)<=275&&h(i,j)>255
%             H(i,j) = 11;
%         end
%         if h(i,j)<=290&&h(i,j)>275
%             H(i,j) = 12;
%         end
%         if h(i,j)<=316&&h(i,j)>290
%             H(i,j) = 13;
%         end
%         if h(i,j)<=330&&h(i,j)>316
%             H(i,j) = 14;
%         end
%         if h(i,j)<=345&&h(i,j)>330
%             H(i,j) = 15;
%         end
    end
end
for i = 1:M
    for j = 1:N
        if s(i,j)<=0.2&&s(i,j)>0
            S(i,j) = 0;
        end
        if s(i,j)<=0.7&&s(i,j)>0.2
            S(i,j) = 1;
        end
        if s(i,j)<=1&&s(i,j)>0.7
            S(i,j) = 2;
        end
%         if s(i,j)<=1&&s(i,j)>0.75
%             S(i,j) = 3;
%         end
    end
end
for i = 1:M
    for j = 1:N
        if i(i,j)<=0.2&&i(i,j)>0
            I(i,j) = 0;
        end
        if v(i,j)<=0.7&&v(i,j)>0.2
            I(i,j) = 1;
        end
        if v(i,j)<=1&&v(i,j)>0.7
            I(i,j) = 2;
        end
%         if v(i,j)<=1&&v(i,j)>0.75
%             V(i,j) = 3;
%         end
    end
end

%��������ɫ�����ϳ�Ϊһά����������L = H*Qs*Qv+S*Qv+v��Qs,Qv�ֱ���S��V����������, Lȡֵ��Χ[0,71]
%ȡQs = 3; Qv = 3
L=zeros(M,N);
for  i = 1:M
    for j = 1:N
        L(i,j) = H(i,j)*9+S(i,j)*3+I(i,j);
    end
end
%����L��ֱ��ͼ
Hist=zeros(1,72);
for i = 0:72
    Hist(i+1) = size(find(L==i),1);
end
vec=Hist';