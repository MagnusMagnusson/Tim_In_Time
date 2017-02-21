///mouse_in_area(x0,y0,x1,y1);

var x0,x1,y0,y1,mx,my;

x0 = argument0;
x1 = argument2;
y0 = argument1;
y1 = argument3;
mx = mouse_x;
my = mouse_y;

return mx >= x0 && mx <= x1 && my >= y0 && my <= y1;
