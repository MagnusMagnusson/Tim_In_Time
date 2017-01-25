if(object_index != ctrl) return false; //No sneakies here!
var i = argument0;
if(i == noone) return 0;

i.originx = o_player.originx;
i.originy = o_player.originy;
i.birth = o_player.birth;
o_player.originx = o_player.x;
o_player.originy = o_player.y;

