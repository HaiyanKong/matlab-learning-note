%%  20220625
clear
clc

%% 
clear
clc

a = 1
b = '1'
c = 'A'
class(a)
b_1 = class(b)
c_1 = class(c)
d = [1 3]
e = [1,3,5,8,9,10]
f = [3;5]
g = [1,3,5,8,9,10;1,2,3,4,5,6]
h = f'
i = 1:1:100
j = 100:-1:1
k = length(e)                                           % �鿴һά������Ԫ��

%% 
clear
clc

l = [2,6,1,9,4,8,3]
l_1 = class(l)                                                   % �鿴����
l_2 = length(l)                                              % �鿴Ԫ�ظ���
l(4) = 19
l([2,5]) = [16,14]                                        % ��ȡ���Ķ��ԭʼ
m = l(end)
l([end-3:end]) = [1,2,3,4]                                % ��ȡ���ĺ��ĸ���
l(end-3:end) = [1,2,3,4]                                  % ��ȡ���ĺ��ĸ���
l(3) = []                                                   % ɾ��ĳһ��Ԫ��
n = [1,2]
n(3) = l(1)
n(4:7) = l(1:4)

%% 
clear
clc

o = [1:3]
p = [4:6]
q = [o;p]
r = q'
s(4,5) = 1
t = rand (4,5)
u = t(2,2:4)
v = t(:,2)

%% 
clear
clc

x = size(t)
x_1 = size(t,1)
x_2 = size(t,2)

%% 
clear
clc

y = ['hello','world']
z = ['hello';'world']

%% 
clear
clc

A{1,1} = 1
A{1,2} = 1:10
A{2,1} = 'sub001.mat'
%A{2,2} = []
A{1,1} = 'hello world'
class(A)

B = rand(3,4)

%%
clear
clc

Student.age = 18                                               % ά��1
Student.name = 'xiao'                                          % ά��2  
Student.scores = rand(10,1)                                    % ά��3
Student.scores                                                 % ��ȡ�ṹ��
class(Student)

%% �����뵼��

% way1���һ����Ա���
% way2���������
save('student.mat','Student')
save('D:\kdat\day2\student.mat','Student')

% way1��ֱ���Ͻ���
% way2���������
load('student.mat')
load('D:\kdat\day2\student.mat')

%% ��ϰ
clear
clc
load('D:\kdat\day2\sub001.mat');
% load('D:\kdat\day2\sub002.mat')

% 20��51����

% fs�ǲ�����
% nch��ͨ����
% �鿴��С
size(nirs_data.oxyData);
dc(:,:,1) = nirs_data.oxyData;
dc(:,:,2) = nirs_data.dxyData;
dc(:,:,3) = nirs_data.tHbData;
roi = dc([100:150,end-499:end],:,1:2);

%%
qpfh(3,4)
doc qpfh

%%
C = 7
D = num2str(C)
% ������ת�����ַ���
E = ['sub00',1,'.mat']
F = ['sub00',num2str(1),'.mat']

% strcat ƴ���ַ���
    % [] Ҳ����ƴ���ַ���
G = strcat('sub00',num2str(1),'.mat')

%% forѭ��
H = 10
if I > 10
    I = I+1
end

H =10
if I == 10
    I = I+1
end

H = 10
if H > 10
    H = H+1;
else
    H = H*10;
end

% ����
H = 10
if H > 11
    H = H+1;
elseif H > 10
    H = H +10;
else H = H*5;
end

disp(H)

%%
for J = 1:10;
    K = J*J;
    disp(K)
end
 
for J = [1,2,3,4,5]
    J
end

%%
% ������30������
% �ļ����ֱ���
% sub001.mat to sub030.mat
% д�δ���һ�δ�ӡ����ÿһ�����Ե��ļ�������Ϣ

for i = 1:30;
    j = num2str(i);
    if i < 10
        name = strcat('sub00',j,'.mat');
    else
        name = strcat('sub0',j,'.mat');
    end
    disp(name)
end

% 21��49����

% ��sub001.matƴ�ӵ�sub100.mat
for i = 1:100;
    j = num2str(i);
    if i < 10
        name = strcat('sub00',j,'.mat');
    elseif i < 100
        name = strcat('sub0',j,'.mat');
    else
        name = strcat('sub',j,'.mat');
    end
    disp(name)
end