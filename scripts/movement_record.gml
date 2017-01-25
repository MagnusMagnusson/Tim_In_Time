var vkey = -keyboard_check(vk_left) + keyboard_check(vk_right),
hkey = keyboard_check(vk_up)

//PUSH
if(keyboard_check_pressed(vk_left)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,LEFT);
}
if(keyboard_check_pressed(vk_right)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,RIGHT);
}
if(keyboard_check_pressed(vk_up)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,UP);
}
if(keyboard_check_pressed(vk_down)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,DOWN);
}

//RELEASE

if(keyboard_check_released(vk_left)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,NOLEFT);
}
if(keyboard_check_released(vk_right)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,NORIGHT);
}
if(keyboard_check_released(vk_up)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,NOUP);
}
if(keyboard_check_released(vk_down)){
    command++;
    ds_list_add(ctrl.current,ctrl.worldtick,NODOWN);
}
