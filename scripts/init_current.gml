if(object_index != ctrl) return false; //No sneakies here!
var i = argument0;
if(i == noone) return 0;

i.nr = o_player.nr;
o_player.nr = irandom(10000000);

ctrl.numbers[? string(i.nr)] = i;
ctrl.numbers[? string(o_player.nr)] = o_player.id;


i.ID = ds_list_size(clones)-1;
i.controller = clones[|i.ID];
i.mypath = o_player.mypath;
i.originx = o_player.originx;
i.originy = o_player.originy;
i.deathx = o_player.x;
i.deathy = o_player.y;
i.birth = o_player.birth;
i.death = ctrl.worldtick;

o_player.mypath = ds_list_create();
o_player.command = 0;
