% %plotta ideal QE
% sun_spec = 300:1:1200;
% 
% ideal_qe = ones(1, 901)*100;
% for i = 800:901
%     ideal_qe(i) = 0;
% end
%     
% qe = ideal_qe;
% for i = 450:475
%     qe(i) = qe(i-1)-1;
% end
% for i = 476:500
%     qe(i) = qe(i-1)+1;
% end
% 
% plot(sun_spec, ideal_qe, sun_spec, qe);
% title('Quantum Efficiency for Ideal Solar Cell vs. Solar Cell with Surface Recombination and Low Bulk Diffusion Lengths')
% xlabel('Wavelength [nm]');
% ylabel('Quantum Efficiency [%]');

%plotta pv growt 95-15
pv_growth = [100 1000 2500 10000 16000];
t = [1995:4:2017];