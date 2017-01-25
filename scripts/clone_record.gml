if(object_index != o_clone && object_index != o_player) return false;
if(!visible) return false;
if(ctrl.warping == -1) return false;

var u,l,r,d;

if(object_index == o_clone){
    u = vup;
    l = vleft;
    r = vright;
    d = vdown;
}
else{
    u = keyboard_check(vk_up);
    l = keyboard_check(vk_left);
    r = keyboard_check(vk_right);
    d = keyboard_check(vk_down);
}

if(ctrl.worldtick % 4 == 0){
    // cell size = 9.
    /* 
    x = 1 ( l - 9 )
    y = 2 ( l - 8 )
    vsped = 3 ( l - 7 )
    hsped = 4 ( l - 6 )
    u = 5 ( l - 5 )
    d = 6 ( l - 4 )
    l = 7 ( l - 3 )
    r = 8 ( l - 2 )
    command = 9 ( l - 1 )
    */
    ds_list_add(mypath,x,y,vsped,hsped,u,d,l,r,command,drop);
}
