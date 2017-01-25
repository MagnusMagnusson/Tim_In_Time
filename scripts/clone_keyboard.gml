//clone_keyboard()
//updates the state of the calling clone

var clock = ctrl.worldtick;
var index = command * 2;

if(controller[|index] == clock){
    index++;
    switch(controller[|index]){
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
    clone_keyboard();
}
