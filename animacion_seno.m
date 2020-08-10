pkg load symbolic;
x = 0:0.1:2*pi;
y = sin(x);
y2 = cos(x);
n = 0.0;hold on;
plot(x, y, "ydatasource", "y");
plot(x, y2, "ydatasource", "y2");
axis ([0, 2*pi])

while (1)
	pause(0.0001);
	y = sin(x + n);
	y2 = cos(x + n);
	refreshdata()
	n = n + 0.01;
endwhile