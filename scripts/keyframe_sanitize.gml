///keyframe_sanitize(frame, cloneID)

var frame, clone;
frame = argument0;
clone = argument1;
if(is_undefined(frame)){
    return false;;
}

for(var i = 1; i < ds_list_size(frame); i += 11){
    var idd = frame[|i];
    if(idd = o_player.id){
        ds_list_replace(frame,i,clone);
    }
}

