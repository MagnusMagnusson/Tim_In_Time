if(object_index != ctrl) return false; //No sneakies here!
var i = argument0;
if(i == noone) return 0;

i.ID = ds_list_size(clones)-1;
i.controller = clones[|i.ID];
i.mypath = o_player.mypath;
o_player.mypath = ds_list_create();
o_player.command = 0;
i.originx = o_player.originx;
i.originy = o_player.originy;
i.birth = o_player.birth;
i.death = ctrl.worldtick;
o_player.originx = o_player.x;
o_player.originy = o_player.y;

