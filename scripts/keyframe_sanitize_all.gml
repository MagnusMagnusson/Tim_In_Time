///keyframe_sanitize_all(list,clone)
var list,clone;
list = argument0;
clone = argument1;


if(is_undefined(list)){
    return false;;
}

for(var i = 0; i < ds_stack_size(list)-1; i++){
   // show_message(string(i) + "/" + string(ds_list_size(list)) + " = " + string( list[|i]));
    keyframe_sanitize(list[|i],clone);
}
