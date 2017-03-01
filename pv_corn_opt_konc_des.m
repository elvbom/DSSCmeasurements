figure
subplot(2, 1, 1)
plot(m212_I, m212_V, mY1_I, mY1_V, mY2_I, mY2_V, mYs1_I, mYs1_V, mYs2_I, mYs2_V)
title('2nd maize 2:1')
xlim([0 0.55])
ylim([0 700])
legend('21', 'Y1', 'Y2', 'Ys1', 'Ys2')
subplot(2, 1, 2)
plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
title('1st + 2nd maize 4:1')
xlim([0 0.55])
ylim([0 700])
legend('1', '1Z', '2Z')