I=imread('apples.jpg');
J=imread('fruit.jpg');
K=imread('ningmeng.jpg');


apples_R=I(:,:,1);
apples_G=I(:,:,2);
apples_B=I(:,:,3);


fruit_R=J(:,:,1);
fruit_G=J(:,:,2);
fruit_B=J(:,:,3);

ningmeng_R=K(:,:,1);
ningmeng_G=K(:,:,2);
ningmeng_B=K(:,:,3);
subplot(3,3,1),imhist(apples_H);title('ƻ��Rͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,2),imhist(apples_S);title('ƻ��Gͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,3),imhist(apples_V);title('ƻ��Bͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,4),imhist(fruit_H);title('��ݮRͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,5),imhist(fruit_S);title('��ݮGͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,6),imhist(fruit_V);title('��ݮBͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,7),imhist(ningmeng_H);title('����Rͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,8),imhist(ningmeng_S);title('����Gͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');
subplot(3,3,9),imhist(ningmeng_V);title('����Bͨ��');
xlabel({' ','���ؼ�'});ylabel('���س��ִ���');