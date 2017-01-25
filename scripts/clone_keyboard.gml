//clone_keyboard()
//updates the state of the calling clone

var clock = ctrl.worldtick;
var index = command * 2;

if(birth == clock){
    x = originx;
    y = originy;
    command = 0;
    visible = true;
    
    vup = false;
    vdown = false;
    vleft = false;
    vright = false;
    
    vsped = 0;
    hsped = 0;
    }

if(ds_list_find_value(controller,index) == clock){
    index++;
    switch(ds_list_find_value(controller,index)){
        case UP:{
            vup = true;
            break;
        }
        case NOUP:{
            vup = false;
            break;
        }
        
        case DOWN:{
            vdown = true;
            break;
        }
        case NODOWN:{
            vdown = false;
            break;
        }
        case LEFT:{
            vleft = true;
            break;
        }
        case NOLEFT:{
            vleft = false;
            break;
        }
        case RIGHT:{
            vright = true;
            break;
        }
        case NORIGHT:{
            vright = false;
            break;
        }
    }
    command++;
    if(index+1 >= ds_list_size(controller)){
        x = -999;
        y = -999;
        visible = false;
    }
    clone_keyboard();
}
