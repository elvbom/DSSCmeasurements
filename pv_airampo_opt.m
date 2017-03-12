close all
clear

%airampo maskingjorda
res = [999999 899999 799999 699999 599999 499999 399999 299999 199999 ...
    99999 89999 79999 69999 59999 49999 39999 29999 19999 ...
    9999 8999 7999 6999 5999 4999 3999 2999 1999 ...
    999 899 799 699 599 499 399 299 199 ...
    99 89 79 69 59 49 39 29 19 9 8 7 6 5 4 3 2 1 0];

a = 0.5*1; %area solar cell

%561
oa1_V = 0.001.*[550 549 548 547 546 544 543 541 540 535 ...
    532 530 527 524 520 515 510 498 463 ...
    452 442 428 411 388 350 285 196 93.6 ...
    83.3 73.8 64.2 55.0 45.3 36.1 27.0 18.0 8.9 ...
    8.0 7.1 6.2 5.2 4.4 3.5 2.6 1.7 0.8 ...
    0.6 0.5 0.4 0.3 0.2 0.1 0 0 0];
oa1_I = oa1_V./res./a;
oa1_P = oa1_V.*oa1_I;

oa2_V = 1e-3.*[480 479 478 477 477 475 475 475 473 470 ...
    468 467 465 463 461 457 454 446 420 ...
    414 406 396 383 365 336 283 201 97.1 ...
    87.3 77.5 67.7 57.8 48.3 38.6 28.9 19.3 9.7 ...
    8.7 7.7 6.7 5.8 4.8 3.8 2.9 1.9 1.0 ...
    1.1 1.0 0.9 0.8 0.7 0.6 0.5 0.3 0.2];
oa2_I = oa2_V./res./a;
oa2_P = oa2_V.*oa2_I;

%valdigt rod!
%kontralelektrod kan vara fel - ge fel varden
%maskingjorda glas kan bli behandlade ... ja vi vet inget
%fargen konstig
%lampan ar skev?
%kablar?
%resistansmaskinen?
oa3_V = 1e-3.*[451 451 451 450 449 448 447 445 442 437 ...
    433 429 427 425 422 417 410 396 360 ...
    342 326 308 282 248 207 161 111 54.0 ...
    48.4 43.0 37.5 32.3 26.9 21.6 16.2 10.7 5.3 ...
    4.8 4.2 3.6 3.1 2.6 2.0 1.5 0.9 0.4 ...
    0.3 0.3 0.2 0.2 0.1 0.1 0 0 0];
oa3_I = oa3_V./res./a;
oa3_P = oa3_V.*oa3_I;

%x-y coordinates pmax
pmax1 = [0.000175 0.35];
pmax2 = [0.000168 0.336];
pmax3 = [8.801e-5 0.308];

ffx1 = [pmax1(1) pmax1(1) 0];
ffy1 = [0 pmax1(2) pmax1(2)];
ffx2 = [pmax2(1) pmax2(1) 0];
ffy2 = [0 pmax2(2) pmax2(2)];
ffx3 = [pmax3(1) pmax3(1) 0];
ffy3 = [0 pmax3(2) pmax3(2)];

% figure
% subplot(2, 1, 1)
% plot(oa1_I, oa1_V, 'm', ffx1, ffy1, 'm', oa2_I, oa2_V, 'k', ffx2, ffy2, 'k', oa3_I, oa3_V, 'b', ffx3, ffy3, 'b')
% title('1:1 airampo: Current density vs voltage and fill factor')
% xlabel('Current density [A/cm^2]')
% ylabel('Voltage [V]')
% legend('Current-voltage', 'Fill factor')
% axis([0 0.3e-3 0 0.7])
% subplot(2, 1, 2)
% plot(oa1_I, oa1_P, 'm', oa2_I, oa2_P, 'k', oa3_I, oa3_P, 'b')
% title('1:1 corn: current density vs efficiency')
% xlabel('Current density [A/cm^2]')
% ylabel('Efficiency')
% axis([0 0.3e-3 0 1e-4])

figure
suptitle('Airampo: solvent concentration 1:1 using LED measurements')
subplot(2, 1, 1)
plot(oa1_I, oa1_V, 'b', oa2_I, oa2_V, 'r', oa3_I, oa3_V, 'g', ffx3, ffy3, 'g', ffx1, ffy1, 'b', ffx2, ffy2, 'r')
title('Current density vs. voltage and fill factor')
xlabel('Current density [A/m^2]')
ylabel('Voltage [V]')
legend('M1', 'M2', 'M3')
axis([0 0.3e-3 0 0.7])
subplot(2, 1, 2)
plot(oa1_I, oa1_P, 'b', oa2_I, oa2_P, 'r', oa3_I, oa3_P, 'g')
title('Current density vs. power output')
xlabel('Current density [A/m^2]')
ylabel('Power [W]')
legend('M1', 'M2', 'M3')
axis([0 0.3e-3 0 1e-4])
% 
% figure
% subplot(2, 1, 1)
% plot(oa2_I, oa2_V, ffx2, ffy2)
% title('1:1 airampo: Current density vs voltage and fill factor')
% xlabel('Current density [A/cm^2]')
% ylabel('Voltage [V]')
% legend('Current-voltage', 'Fill factor')
% axis([0 0.3e-3 0 0.7])
% subplot(2, 1, 2)
% plot(oa2_I, oa2_P)
% title('1:1 airampo: current density vs efficiency')
% xlabel('Current density [A/cm^2]')
% ylabel('Efficiency')
% axis([0 0.3e-3 0 1e-4])
% 
% figure
% subplot(2, 1, 1)
% plot(oa3_I, oa3_V, ffx3, ffy3)
% title('1:1 airampo: Current density vs voltage and fill factor')
% xlabel('Current density [A/cm^2]')
% ylabel('Voltage [V]')
% legend('Current-voltage', 'Fill factor')
% axis([0 0.3e-3 0 0.7])
% subplot(2, 1, 2)
% plot(oa3_I, oa3_P)
% title('1:1 airampo: current density vs efficiency')
% xlabel('Current density [A/cm^2]')
% ylabel('Efficiency')
% axis([0 0.3e-3 0 1e-4])