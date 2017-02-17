var r1,r2,r3;

r1 = time_energy / max_time_energy;
r2 = time_warps / max_time_warps;
r3 = timer / max_timer;

var STAR;
STAR = r1+r2+r3;
STAR *= 10;

STAR = round(STAR);
return clamp(STAR,0,6);
