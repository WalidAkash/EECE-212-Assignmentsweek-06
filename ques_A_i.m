close all
clear all
clc
format long

%Trapezoid Method
%Begin
I = @(x) x/((x^2)+4);
y = [];
n  = 0;
h = 0.125;
for i = 0:h:9
    y1 = I(i);
    n = n+1;
    y = [y y1];
end

int = 0;
for i = 1:n
    if i == 1 || i == n
        int = int + y(1, i);
    else
        int = int + 2*y(1,i);
    end
end
final_integral = (h/2)*int;
fprintf('\nNumerical Integral = %f\n',final_integral)
%End

%Analytical Value
analytical_value = 1.528178448;
fprintf('Analytical_Integral = %f\n', analytical_value)

%Accuracy
Accur = 100- abs((analytical_value-final_integral)/analytical_value);
fprintf('Accuracy = %f Parcent\n', Accur)

% When h = 0.25,
% Numerical Integral = 1.526819
% Accuracy = 99.999110 %

% When h = 0.125,
% Numerical Integral = 1.527839
% Accuracy = 99.999778 %




