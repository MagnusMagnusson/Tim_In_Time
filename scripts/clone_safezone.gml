while(place_meeting(x,y,o_wall)){
    var i = instance_position(x,y,o_wall);
    x += sign(x - i.x);
    y += sign(y - i.y);
}
