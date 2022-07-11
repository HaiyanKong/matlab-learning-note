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
k = length(e)                                           % 查看一维向量的元素

%% 
clear
clc

l = [2,6,1,9,4,8,3]
l_1 = class(l)                                                   % 查看类型
l_2 = length(l)                                              % 查看元素个数
l(4) = 19
l([2,5]) = [16,14]                                        % 提取更改多个原始
m = l(end)
l([end-3:end]) = [1,2,3,4]                                % 提取更改后四个数
l(end-3:end) = [1,2,3,4]                                  % 提取更改后四个数
l(3) = []                                                   % 删除某一个元素
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

Student.age = 18                                               % 维度1
Student.name = 'xiao'                                          % 维度2  
Student.scores = rand(10,1)                                    % 维度3
Student.scores                                                 % 读取结构体
class(Student)

%% 保存与导入

% way1：右击可以保存
% way2：下面代码
save('student.mat','Student')
save('D:\kdat\day2\student.mat','Student')

% way1：直接拖进来
% way2：下面代码
load('student.mat')
load('D:\kdat\day2\student.mat')

%% 练习
clear
clc
load('D:\kdat\day2\sub001.mat');
% load('D:\kdat\day2\sub002.mat')

% 20点51卡了

% fs是采样率
% nch是通道数
% 查看大小
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
% 将数字转换成字符串
E = ['sub00',1,'.mat']
F = ['sub00',num2str(1),'.mat']

% strcat 拼接字符串
    % [] 也可以拼接字符串
G = strcat('sub00',num2str(1),'.mat')

%% for循环
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

% 卡了
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
% 假如有30个被试
% 文件名分别是
% sub001.mat to sub030.mat
% 写段代码一次打印出来每一个被试的文件名的信息

for i = 1:30;
    j = num2str(i);
    if i < 10
        name = strcat('sub00',j,'.mat');
    else
        name = strcat('sub0',j,'.mat');
    end
    disp(name)
end

% 21：49卡了

% 从sub001.mat拼接到sub100.mat
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