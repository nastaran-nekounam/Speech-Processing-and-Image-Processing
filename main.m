[x1,Fs1]=audioread( 'data_base\Eee_f.m4a');
cepsx(x1,Fs1)

[x2,Fs2]=audioread( 'data_base\Eee_m.m4a');
cepsx(x2,Fs2)
%%

[x1,Fs1]=audioread( 'data_base\Aaa_m.m4a');
cepsx(x1,Fs1)

[x2,Fs2]=audioread( 'data_base\Aaa_f.m4a');
cepsx(x2,Fs2)
%%

[x1,Fs1]=audioread( 'data_base\Iii_m.m4a');
cepsx(x1,Fs1)

[x2,Fs2]=audioread( 'data_base\Iii_f.m4a');
cepsx(x2,Fs2)
%%
[x1,Fs1]=audioread( 'data_base\Ooo_m.m4a');
cepsx(x1,Fs1)

[x2,Fs2]=audioread( 'data_base\Ooo_f.m4a');
cepsx(x2,Fs2)

%%
[x1,Fs1]=audioread( 'data_base\Uuu_m.m4a');
cepsx(x1,Fs1)

[x2,Fs2]=audioread( 'data_base\Uuu_f.m4a');
cepsx(x2,Fs2)
%%
[x,Fs]=audioread( 'echo_sound.wav');
cx=ifft(log2(abs(fft(x))));

X = fftshift(fft(x));
f = (-length(x)/2:length(x)/2-1)*Fs/length(x);
f= reshape(f,[length(f),1]);
myfilt = (1./(1+0.8*exp(-1i*2*pi/Fs*5000.*f)));
X=X.*myfilt;
output = ifft(ifftshift(X));
audiowrite('E:\Seven\DSP\CA3\o1.wav',output,Fs);

%%
image1 = imread('tiger.jpg');
IMAGE1 = dct2(image1);

% figure
% imshow(log(abs(IMAGE1)),[])
% colormap(gca,jet(64))
% colorbar

[m,n] = size(IMAGE1);
mm =floor(m*0.95);
nn =floor(n*0.95);

IMAGE2 = IMAGE1(1:mm,1:nn);
image2 = idct2(IMAGE2);
image2 = uint8(image2);
imwrite(image2,'E:\Seven\DSP\CA3\tiger2.jpg');

mmm =floor(m*0.85);
nnn =floor(n*0.85);

IMAGE3 = IMAGE1(1:mmm,1:nnn);
image3 = idct2(IMAGE3);
image3 = uint8(image3);
imwrite(image3,'E:\Seven\DSP\CA3\tiger3.jpg');

