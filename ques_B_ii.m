close all
clear all
clc
format long

%Simpson’s 1/3 Rule
%begin
x = [1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7];
y = [-15.997 -17.966 -19.808 -21.267 -21.813 -20.458 -15.712 -5.089 14.875 49.042 103.968 188.257 312.947];
n = length(y);
h = x(2)-x(1);
int = 0;

for i = 1:n
    if i == 1 || i == n
        int = int + y(1, i);
    elseif mod(i, 2) == 0
        int = int + 4*y(1,i);
    else
        int = int + 2*y(1,i);
    end
end
final_integral = (h/3)*int;
fprintf('\nNumerical Integral = %f\n',final_integral)
%End

%Analytical Value
analytical_value = 184.9465714;
fprintf('Analytical_Integral = %f\n', analytical_value)

%Accuracy
Accur = 100- abs((analytical_value-final_integral)/analytical_value);
fprintf('Accuracy = %f Parcent\n', Accur)
