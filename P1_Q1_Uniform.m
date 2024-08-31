% PART 1 - Question 1
% Simulation of RVs using Rejection Method
% Uniform Distribution
clc;clear;close;
% Initialize
i = 100;
j = 0;
k = 0;
matlab_mean  = zeros(1,3);
matlab_variance   = zeros(1,3);
rejection_mean  = zeros(1,3);
rejection_variance   = zeros(1,3);

while(i <= 10000)
N = i;
uniform_rv = 2+2*rand(1,N);
j = j+1;
figure(j)

plot(1)=subplot(1,2,1);
rej = uniform_rejection(N);
rej = rej.';
histogram(rej)
grid on;
xlabel(plot(1),'Random Variable X');
ylabel(plot(1),'PDF (f(x))');
title(plot(1),{'Rejection Method';['Uniform Distribution N =' num2str(N)]})

plot(2)=subplot(1,2,2);
histogram(uniform_rv)
xlabel(plot(2),'Random Variable X');
ylabel(plot(2),'PDF (f(x))');
title(plot(2),{'Matlab Routine';['Uniform Distribution N = ' num2str(N)]})

k = k+1;

matlab_mean(k) = mean(uniform_rv);
matlab_variance(k) = var(uniform_rv);
rejection_mean(k) = mean(rej);
rejection_variance(k) = var(rej);

i = i*10;
end

function X = uniform_rejection(N)
z = 1/4;
X = zeros(N,1);
for i = 1:N
    flag = false;
    while flag == false
        x = rand();
        y = 2+2*rand();
        if z*x <= 1
           X(i) = y;
           flag = true;
        end
    end
end
end