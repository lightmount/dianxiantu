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