///keyframe_save()
//returns a ds_list of the current frame.
var frame;
frame = ds_stack_create();


with(o_clone){
    var u,l,r,d;

    u = vup;
    l = vleft;
    r = vright;
    d = vdown;
    ds_stack_push(frame,drop,command,r,l,d,u,hsped,vsped,y,x,nr);
}

with(o_player){
    var u,l,r,d;
    
    u = keyboard_check(vk_up);
    l = keyboard_check(vk_left);
    r = keyboard_check(vk_right);
    d = keyboard_check(vk_down);
    
    ds_stack_push(frame,drop,command,r,l,d,u,hsped,vsped,y,x,nr);
}

ds_stack_push(frame,ctrl.worldtick)

return frame;
