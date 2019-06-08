%分开提取
bone_index = 1;
while bone_index <= 59
    [bone(bone_index).name,bone(bone_index).num] = getnumpvas('动图测试_Avatar00.calc',bone_index,1);
    bone_index = bone_index + 1;
end

%%重新组合
%按照画图顺序

%左臂线
LarmBone(1)=bone(17);
LarmBone(2)=bone(12);
LarmBone(3)=bone(13);
LarmBone(4)=bone(14);
LarmBone(5)=bone(15);

%右臂线
RarmBone(1)=bone(17);
RarmBone(2)=bone(8);
RarmBone(3)=bone(9);
RarmBone(4)=bone(10);
RarmBone(5)=bone(11);

%头至hips线
CenterBone(1)=bone(16);
CenterBone(2)=bone(17);
CenterBone(3)=bone(18);
CenterBone(4)=bone(19);
CenterBone(5)=bone(20);
CenterBone(6)=bone(21);
CenterBone(7)=bone(1);

%左腿线
LlegBone(1)=bone(1);
LlegBone(2)=bone(5);
LlegBone(3)=bone(6);
LlegBone(4)=bone(7);

%右腿线
RlegBone(1)=bone(1);
RlegBone(2)=bone(2);
RlegBone(3)=bone(3);
RlegBone(4)=bone(4);

zhenshu = size(bone(1).num);

Larm = [-LarmBone(1).num(1,:);
-LarmBone(2).num(1,:);
-LarmBone(3).num(1,:);
-LarmBone(4).num(1,:);
-LarmBone(5).num(1,:);];

plot3(Larm(:,1),Larm(:,2),Larm(:,3),'k-o');view(126,14);hold on;

    %右臂
    Rarm = [-RarmBone(1).num(1,:);
   -RarmBone(2).num(1,:);
   -RarmBone(3).num(1,:);
    -RarmBone(4).num(1,:);
    -RarmBone(5).num(1,:);];

    plot3(Rarm(:,1),Rarm(:,2),Rarm(:,3),'k-o');view(126,14);hold on;

    %中心线
    Cent = [-CenterBone(1).num(1,:);
    -CenterBone(2).num(1,:);
    -CenterBone(3).num(1,:);
    -CenterBone(4).num(1,:);
    -CenterBone(5).num(1,:);
    -CenterBone(6).num(1,:);
    -CenterBone(7).num(1,:);];

    plot3(Cent(:,1),Cent(:,2),Cent(:,3),'k-o');view(126,14);hold on;

    %左腿
    Lleg = [-LlegBone(1).num(1,:);
    -LlegBone(2).num(1,:);
    -LlegBone(3).num(1,:);
    -LlegBone(4).num(1,:);];

    plot3(Lleg(:,1),Lleg(:,2),Lleg(:,3),'k-o');view(126,14);hold on;

    %右腿
    Rleg = [-RlegBone(1).num(1,:);
   -RlegBone(2).num(1,:);
    -RlegBone(3).num(1,:);
    -RlegBone(4).num(1,:);];

    plot3(Rleg(:,1),Rleg(:,2),Rleg(:,3),'k-o');view(126,14);hold on;
