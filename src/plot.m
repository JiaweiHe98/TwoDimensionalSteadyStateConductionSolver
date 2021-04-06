T=xlsread('./data.xlsx');
[x,y]=meshgrid(0:1:9,[0 1 2 2.65 3.115 3.58]);
pcolor(x,y,T)
shading interp;
yticks([0 1 2 2.65 3.115 3.58]);
colorbar;
grid;
title('temperature profile');