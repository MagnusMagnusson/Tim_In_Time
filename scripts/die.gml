///Dying

if(dying && visible){
    image_alpha -= 1/(3*room_speed);
    effect_create_above(ef_spark,x + irandom(84) - 10,y + irandom(148) - 10,irandom(1),c_white);
    
    if(image_alpha < 0){
        instance_destroy();
    }
}
