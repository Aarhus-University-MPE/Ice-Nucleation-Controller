% Ice Nucleation Interpolation
clear
clc

therm_pos = [1 1; 2 1; 3 1; 2 2; 1 3; 2 3; 3 3];
therm_val = [0; 1; 0; 2; 0; 1; 0];
pointgrid = [1 2 4; 2 3 4; 1 4 5;4 5 6; 4 6 7; 3 4 7];

therm_pos(:,1) = (therm_pos(:,1) - 1) * 110/2;
therm_pos(:,2) = (therm_pos(:,2) - 1) * 70/2;

for i = 1:size(pointgrid,1)
plane_val(i,:) = inv([therm_pos(pointgrid(i,:),:) ones(3,1)])*therm_val(pointgrid(i,:));

x = [therm_pos(pointgrid(i,1),1) therm_pos(pointgrid(i,2),1) therm_pos(pointgrid(i,3),1)];
y = [therm_pos(pointgrid(i,1),2) therm_pos(pointgrid(i,2),2) therm_pos(pointgrid(i,3),2)];

z = plane_val(i,1) * x + plane_val(i,2) * y + plane_val(i,3);

patch(x,y,z,'g')
hold on
end

val = interpolateTemp(40,10,plane_val)

scatter3(40,10,val,50,'or','filled');


function temp = interpolateTemp(x,y, plane_val)
i = 1;
temp = plane_val(i,1) * x + plane_val(i,2) * y + plane_val(i,3);
end
