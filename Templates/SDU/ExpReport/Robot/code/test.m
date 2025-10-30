clc; clear; close all;
F_ori = [0.527 -0.574 0.628 5;0.369 0.819 0.439 3;-0.766 0 0.643 8;0 0 0 1];
transl_m = transl(0, 10, 5);
F_fin = transl_m * F_ori;
trplot(F_ori, 'frame', 'A', 'color', 'b')
axis([5 15 5 15 5 15])
view(3)
hold on
tranimate(F_ori, F_fin, 'frame', 'B', 'color', 'r')
