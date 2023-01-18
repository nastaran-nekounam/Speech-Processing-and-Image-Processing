function [cx,t]= cepsx(x,Fs)
t=(0:length(x)-1)/Fs;
cx=ifft(log2(abs(fft(x))));
figure
plot(t,cx)
xlim([0,0.015])
end