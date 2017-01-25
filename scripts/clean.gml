///clean(instance)
me = argument0;
if(me == noone){
    return false;
}

if(object_index == o_player){
    ds_list_destroy(mypath);
}

if(object_index == o_clone){
    ds_list_destroy(controller);
    ds_list_destroy(mypath);
}

if(object_index == ctrl){
    ds_list_clear(current);
    ds_list_clear(timestamps);
    ds_list_clear(clones);
}
