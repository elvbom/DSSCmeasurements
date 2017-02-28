konc = 1:1:20;

%konc vs Pmax
pmax_meas = zeros(1, 20);  %m matfel
for i=1:20
    pmax_meas(i) = NaN;
end

pmax_meas(1) = 89.49;
pmax_meas(2) = 121.2;
pmax_meas(4) = 113;
pmax_meas(5) = 148.4;
pmax_meas(10) = 163.4;
pmax = pmax_meas;
pmax(5) = 89.51;
pmax(10) = 103.1;

pmax3 = pmax_meas;

figure
plot(konc, pmax_meas, '*-', konc, pmax, '*-');