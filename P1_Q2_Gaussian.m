% PART 1 - Question 2
% Gaussian Distribution
clc;clear;close;
% Initialize
i =100;
j = 0;
k = 0;
transform_mean = zeros(1,3);
transform_variance = zeros(1,3);

while(i <= 10000)
% Gaussian Distribution
N = i;
normal_transform = normrnd(2,2,N,N);
X = sum(normal_transform)/N;
k = k+1;
transform_mean(k) = mean(X);
transform_variance(k) = var(X);
figure(1)
j = j+1;
plot(j) = subplot(3,1,j);
histogram(X,'BinMethod','sqrt')
grid on;
xlabel('Random Variable Y');
if j == 2
ylabel('PDF (f(y))');
end
title(plot(j),['Transform Y of Gaussian Distribution for N = ' num2str(N)])
i = i*10;
end