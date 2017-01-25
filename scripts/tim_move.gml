///tim_move(up,down,left,right)

var u,d,l,r;
u = argument0;
d = argument1;
l = argument2;
r = argument3;

var topSpeed = 5;
vsped += .8 * !place_meeting(x,y+vsped + 0.5,o_wall);

var vkey = -l + r,
hkey = u

if hkey 
    {
    if place_meeting(x,y+3,o_wall)
        {
        vsped -= 16;
        drop = false;
        }
    }
else
    {
    drop = true;
    }
    
if drop
    {
    if vsped < 0
        {
        vsped+=1.5;
        }
    }
    
if !place_meeting(x+vkey*5,y,o_wall) 
    {    
    x += vkey * topSpeed
    x = clamp(x,1,room_width-1)
    }

if !place_meeting(x,y+vsped + .5,o_wall)
    {
        y += vsped
    }
else
    {
    while(place_meeting(x,y+vsped + 0.5,o_wall))
        {
            vsped+=-sign(vsped)*0.5
        }
        y+=vsped
    }
