clear
clc
close all

csud = csvread('pdata/cs-ubar.csv');
csTd = csvread('pdata/cs-Tbar.csv');
csmd = csvread('pdata/cs-mu.csv');

ncs  = size(csud, 1)/2;
csy  = csud(1:ncs, 1);
csu  = csud(1:ncs, 2);
csmu = csmd(1:ncs, 2);
csT  = csTd(1:ncs, 2);

mydata = csvread('vd.csv');
myy   = mydata(:,1);
myu   = mydata(:,2);
myT   = mydata(:,3);
mymut = mydata(:,6);

mydata2 = csvread('solution.csv');
myy2   = mydata2(:,1);
myu2   = mydata2(:,2);
myT2   = mydata2(:,3);
mymut2 = mydata2(:,6);

figure('position', [0 0 1300 900])
semilogx(csy, csu, 'linewidth', 3);
hold on
semilogx(myy, myu, 'linewidth', 3);
semilogx(myy2, myu2, 'linewidth', 3);
h = legend('DNS', 'Wall model (VD)', 'Wall model (PNL)');
set(h, 'fontsize', 28)
set(gca, 'fontsize', 28)
xlabel('y', 'fontsize', 28)
ylabel('U', 'fontsize', 28)

figure('position', [0 0 1300 900])
semilogx(csy, csT, 'linewidth', 3);
hold on
semilogx(myy, myT, 'linewidth', 3);
semilogx(myy2, myT2, 'linewidth', 3);
h = legend('DNS', 'Wall model (VD)', 'Wall model (PNL)');
set(h, 'fontsize', 28)
set(gca, 'fontsize', 28)
xlabel('y', 'fontsize', 28)
ylabel('T', 'fontsize', 28)

figure('position', [0 0 1300 900])
semilogx(myy, mymut, 'linewidth', 3);
hold on
semilogx(myy2, mymut2, 'linewidth', 3);
h = legend('Wall model (VD)', 'Wall model (PNL)');
set(h, 'fontsize', 28)
set(gca, 'fontsize', 28)
xlabel('y', 'fontsize', 28)
ylabel('\mu_t', 'fontsize', 28)

