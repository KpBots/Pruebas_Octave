k1 = 1; %how many times you want wave to oscillate in x-dir
k2 = 1; %how many times you want wave to oscillate in y-dir
u = linspace(-pi,pi,30); %how many segments
v = linspace(-pi,pi,30); % how many segments
[x,y] = meshgrid(u,v);  %how many segments
ii = 0;

	z = z2 = x;
	surf (x, y, z, "zdatasource", "z");
	hold on
	%surf (x, y, z2, "zdatasource", "z2");
	while 1
		z=sin(k2*x+(ii)*pi/180);
		%z2=-sin(k2*x+(ii)*pi/180);
		refreshdata ()
		pause(.001)
		ii++;
	endwhile