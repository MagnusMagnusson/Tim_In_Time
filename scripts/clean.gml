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
    while(!ds_stack_empty(timestamps)){
        var frame = ds_stack_pop(timestamps);
        ds_stack_destroy(frame);
    }
    ds_list_clear(clones);
    ds_map_clear(numbers);
}
