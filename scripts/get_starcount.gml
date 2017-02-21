var r1,r2,r3;

r1 = ctrl.time_energy / ctrl.max_time_energy;
r2 = ctrl.time_warps / ctrl.max_time_warps;
r3 = ctrl.timer / ctrl.max_timer;

var STAR;
STAR = (r1+r2+r3)/3;
STAR *= 6;

STAR = round(STAR);
return clamp(STAR,0,5);
