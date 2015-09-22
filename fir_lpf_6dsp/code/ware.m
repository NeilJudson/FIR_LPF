N = 10;
n = 0:N-1;
xn = (2^7-1)*(exp(j*pi*n/5)+exp(j*pi*3*n/5));
xn_r = fix(real(xn)+256);
fi_r = fopen('filter_in_r.txt','wt');
fprintf(fi_r,'%x\n',xn_r);
fclose(fi_r);
xn_i = fix(imag(xn)+256);
fi_i = fopen('filter_in_i.txt','wt');
fprintf(fi_i,'%x\n',xn_i);
fclose(fi_i);




k = 0:N-1;
wn = exp(-j*2*pi/N);
nk = n'*k;
wnnk = wn.^nk;

xk_r = xn_r*wnnk;
xk_i = xn_i*wnnk;

figure(1)
stem(n,xn_r)
figure(2)
stem(k,abs(xk_r))

%%128的直流
N = 100;
n = 0:N;
xn = cos(pi*n/5);
xn_r = fix(xn+128);
fi_r = fopen('filter_in_r.txt','wt');
fprintf(fi_r,'%x\n',xn_r);
fclose(fi_r);

%%6M高频+128的直流
N = 100;
n = 0:N;
xn = (2^7-1)*(cos(pi*3*n/5));
xn_r = fix(xn+128);
fi_r = fopen('filter_in_r.txt','wt');
fprintf(fi_r,'%x\n',xn_r);
fclose(fi_r);

%%2M低频+6M高频+256的直流
N = 100;
n = 0:N;
xn = (2^7-1)*(cos(pi*n/5)+cos(pi*3*n/5));
xn_r = fix(xn+256);
fi_r = fopen('filter_in_r.txt','wt');
fprintf(fi_r,'%x\n',xn_r);
fclose(fi_r);

%%8M高频+128的直流
N = 100;
n = 0:N;
xn = (2^7-1)*(cos(pi*4*n/5));
xn_r = fix(xn+128);
fi_r = fopen('filter_in_r.txt','wt');
fprintf(fi_r,'%x\n',xn_r);
fclose(fi_r);


fid = fopen('filter_out_r.txt','r');
for i = 1:100
temp = fscanf(fid,'%x',1);
if(temp > 1023)
	num(i) = temp - 2048;
else
	num(i) = temp;
end
end
fclose(fid);
figure(1);
plot(num);
figure(2);
stem(num);



