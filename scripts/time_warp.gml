if(object_index != ctrl) return false; //No sneakies here!

ds_list_add(timestamps,worldtick);
ds_list_add(clones,current);
current = ds_list_create();
warping = -1;
