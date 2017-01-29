var victim;
victim = argument0;

if(victim = o_player.id){
    with(o_clone){
        instance_destroy();
    }
    with(o_player){
        instance_destroy();
    }
    with(ctrl){
        clean(id);
    }
    ctrl.alarm[1] = 180;
    instance_create(room_width div 2, - 50,  you_died);
    return false;
}

if(victim.object_index = o_clone){
    var I = victim.ID;
    with(o_clone){
        if(ID >= I){
            instance_destroy();
            var N = nr;
            ctrl.numbers[?string(N)] = noone;
            var i = ds_list_find_index(ctrl.clones,controller);
            ds_list_delete(ctrl.clones,i);
            repeat(50){
                effect_create_above(ef_firework,x + irandom(64),y + irandom(128), irandom(3),irandom(c_white));
            }
        }
    }
    return false;
}
