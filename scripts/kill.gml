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
}
