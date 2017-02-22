var t;
t[2] = 0;
t[1] = 0;
t[0] = 0;
switch(argument0){
    case lvl_9:{        
        t[0] = 3*room_speed*60;
        t[1] = room_speed * 20;
        t[2] = 8;
        break;
    }
    case lvl_10:{        
        t[0] = 10*room_speed*60;
        t[1] = room_speed * 1;
        t[2] = 1;
        break;
    }
    
    default:{
        t[0] = 2*room_speed*60;
        t[1] = room_speed * 10;
        t[2] = 6;
        break;
    }
}

return t;
