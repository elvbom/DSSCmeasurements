close all

%I-V 1st+2nd corn
figure
subplot(5, 1, 1)
plot(m113_I, m113_V, mX1_I, mX1_V, mX2_I, mX2_V, mXs1_I, mXs1_V, mXs2_I, mXs2_V, '-*')
title('1st + 2nd maize I-V 1:1')
xlim([0 2.5e-3])
ylim([0 1])
%legend('11', 'X1', 'X2', 'Xs1', 'Xs2')
subplot(5, 1, 2)
plot(m212_I, m212_V, mY1_I, mY1_V, '-*', mY2_I, mY2_V, mYs1_I, mYs1_V, mYs2_I, mYs2_V, '-*')
title('2nd maize 2:1')
xlim([0 2.5e-3])
ylim([0 1])
%legend('21', 'Y1', 'Y2', 'Ys1', 'Ys2')
subplot(5, 1, 3)
plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
title('1st + 2nd maize 4:1')
xlim([0 2.5e-3])
ylim([0 1])
%legend('1', '1Z', '2Z')
subplot(5, 1, 4)
plot(m511_I, m511_V, '-*', m512_I, m512_V) %en f?r d?lig
title('2nd maize 5:1')
xlim([0 2.5e-3])
ylim([0 1])
subplot(5, 1, 5)
plot(m1011_I, m1011_V, m1012_I, m1012_V, m1013_I, m1013_V, '-*')
title('2nd maize 10:1')
xlim([0 2.5e-3])
ylim([0 1])
 
%m?tfel p? nr 29 (-30) motsvarar 899 Ohm
%efficiency w/ measurement errors
figure
%1:1
subplot(5, 1, 1)
plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P, mXs2_I, mXs2_P, '-*')%, ...
    %[0 0.200], [0.08949 0.08949], 'k')
title('P 1st + 2nd maize I-Pmax w/ pot error curves, 1:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('11', 'X1', 'X2', 'Xs1', 'Xs2', 'Pmax 89.49')
ylabel('Efficiency P')
%2:1
subplot(5, 1, 2)
plot(m212_I, m212_P, mY1_I, mY1_P,  '-*', mY2_I, mY2_P, mYs1_I, mYs1_P, mYs2_I, mYs2_P, '-*')%, ...
    %[0 0.200], [0.1699 0.1699], 'k', [0 0.200], [0.1212 0.1212], 'k')
title('P 2nd maize 2:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('21', 'Y1', 'Y2', 'Ys1', 'Ys2', 'Pmax? 169.9', 'Pmax 121.2')
%4:1
subplot(5, 1, 3)
plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P)%, ...
    %[0 0.200], [0.113 0.113], 'k') 
title('P 1st + 2nd maize 4:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('1', '1Z', '2Z', 'Pmax 113')
%5:1
subplot(5, 1, 4)
plot(m511_I, m511_P, '-*', m512_I, m512_P, m511_15_I, m511_15_P, m512_15_I, m512_15_P)%, ...
    %[0 0.7e-4], [148.4 148.4], 'k', [0 0.200], [0.08951 0.08951], 'k') %en f?r d?lig
title('P 2nd maize 5:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('Pmax? 148.4', 'Pmax 89.51')
%10:1
subplot(5, 1, 5)
plot(m1011_I, m1011_P, m1012_I, m1012_P, m1013_I, m1013_P,  '-*')%, ...
    %[0 0.200], [0.1634 0.1634], 'k', [0 0.200], [0.1031 0.1031], 'k')
title('P 2nd maize 10:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('Pmax? 163.4', 'Pmax 103.1')

%effiency without measurement errors
figure
subplot(5, 1, 1)
plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P)%, [0 0.200], [0.08949 0.08949], 'k')
title('P 1st + 2nd maize I-Pmax w/out pot error curves, 1:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('11', 'X1', 'X2', 'Xs1', 'Pmax 89.49')
ylabel('Efficiency P')
subplot(5, 1, 2)
plot(m212_I, m212_P, mY2_I, mY2_P, mYs1_I, mYs1_P)%, [0 0.200], [0.1212 0.1212], 'k')
title('P 2nd maize 2:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('21', 'Y2', 'Ys1', 'Pmax 121.2')
subplot(5, 1, 3)
plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P)%, [0 0.200], [0.113 0.113], 'k') 
title('P 1st + 2nd maize 4:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('1', '1Z', '2Z', 'Pmax 113')
subplot(5, 1, 4)
plot(m512_I, m512_P)%, [0 0.200], [0.08951 0.08951], 'k') %en f?r d?lig
title('P 2nd maize 5:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('Pmax 89.51')
subplot(5, 1, 5)
plot(m1011_I, m1011_P, m1012_I, m1012_P)%, [0 0.200], [0.1031 0.1031], 'k')
title('P 2nd maize 10:1')
xlim([0 2.5e-3])
ylim([0 0.8e-3])
%legend('Pmax 103.1')

% %i-v and effiency without measurement errors
figure
subplot(5, 1, 1)
plot(m113_I, m113_V, mX1_I, mX1_V, mX2_I, mX2_V, mXs1_I, mXs1_V)
title('1st + 2nd maize I-V 1:1')
xlim([0 2.5e-3])
ylim([0 1])
%legend('11', 'X1', 'X2', 'Xs1', 'Xs2')
subplot(5, 1, 2)
plot(m212_I, m212_V, mY1_I, mY1_V, mY2_I, mY2_V, mYs1_I, mYs1_V)
title('2nd maize 2:1')
xlim([0 2.5e-3])
ylim([0 1])
%legend('21', 'Y1', 'Y2', 'Ys1', 'Ys2')
subplot(5, 1, 3)
plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
title('1st + 2nd maize 4:1')
xlim([0 2.5e-3])
ylim([0 1])
%legend('1', '1Z', '2Z')
subplot(5, 1, 4)
plot(m512_I, m512_V) %en for dalig
title('2nd maize 5:1')
xlim([0 2.5e-3])
ylim([0 1])
subplot(5, 1, 5)
plot(m1011_I, m1011_V, m1012_I, m1012_V)
title('2nd maize 10:1')
xlim([0 2.5e-3])
ylim([0 1])
