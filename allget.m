bone_file = '¶¯×÷2000_Char00.calc';
bone_index = 1;
bones = zeros(1001,177);
while bone_index <=59
    [~,bones(:,(bone_index-1)*3+1:(bone_index-1)*3+3)] = getnumpvas(bone_file,bone_index,1);
    bone_index = bone_index + 1;
end

x = zeros(59,1);
y = zeros(59,1);
z = zeros(59,1);
zhenshu = 1;
%while zhenshu <= 1000  
  bone_index = 1;
    while bone_index <= 59
        x(bone_index,1) = bones(zhenshu,(bone_index-1)*3+1);
        y(bone_index,1) = bones(zhenshu,(bone_index-1)*3+2);
        z(bone_index,1) = bones(zhenshu,(bone_index-1)*3+3); 
        bone_index = bone_index + 1;
    end
    scatter3(x,y,z);
  %  m(zhenshu)=getframe;
    %hold off;
   % zhenshu = zhenshu + 1;
%end