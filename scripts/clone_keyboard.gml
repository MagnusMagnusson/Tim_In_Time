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
        audio_play_sound(snd_warp,2,false);
    repeat(100){
        effect_create_above(ef_spark,x + irandom(64), y + irandom(128),irandom(3),choose(c_white,c_aqua))
        }
    }

if(death == clock){
    if(false/*point_distance(deathx,deathy,x,y) > 400 && !dying*/){
        kill(id);        
        audio_play_sound(snd_warp,2,false);
        repeat(33){
            audio_play_sound(snd_boom,2,false);
        }
        repeat(100){
                effect_create_above(ef_explosion,x + irandom(64),  y + irandom(128),irandom(3),choose(1,1,0)*c_white)
        }
        return 0;
    }
    else{
        audio_play_sound(snd_warp,2,false);
        repeat(100){
                effect_create_above(ef_spark,x + irandom(64),  y + irandom(128),irandom(3),c_white)
            }
    }
    visible = false;
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
    clone_keyboard();
}
