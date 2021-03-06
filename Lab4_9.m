obj_filter = dsp.FIRFilter('Numerator', fir1(50,0.25,'low'));
fvtool(obj_filter);
x = randn(125,1);
y = step(obj_filter,x);

figure
grid on
hold on
xaxis = 1:100;

plot(xaxis,x(1:100),'r');
plot(xaxis,y(26:125),'b');

obj_filter.Numerator = fir1(50,0.25,'high');
fvtool(obj_filter);
