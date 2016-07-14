clear all
clc
close all

X(1,1) = 0.40^2;
Y(1,1) = 0.40^ + 0.54^2;
B1 = [0,0];
B2 = [0,0.54];

%ģ�⵽Beacon1�ľ���
DB1(1,1) = sqrt(0.4^2);  
%ģ�⵽Beacon2�ľ���
DB2(1,1) = sqrt(0.54^2 + 0.4^2);
%ģ�������ֵ�Ȧ��
Tick = 4690;
TL(1,1) = Tick;
TR(1,1) = Tick;
%ģ��ָ���������ƽ����X��ĽǶ�
Theta(1,1) = 0;
Time(1,1) = 1;

for i = 2:200
    inc = 0.008*i;
    Y(:,i) = 0;
    X(:,i) = inc;
    DB1(:,i) = sqrt(inc^2 + 0.40^2);
    DB2(:,i) = sqrt(inc^2 + 0.40^2 + 0.54^2);
    TL(:,i) = Tick;
    TR(:,i) = Tick;
    Theta(:,i) = 0;
    Time(:,i) = i;
end

%������ݵľ���
C = [Time',DB1',DB2',Theta',TL',TR'];

%����ģ�������ļ�
fileID = fopen('example.txt','w');
fprintf(fileID,'%f %f %f %f %d %d\n',C');

