///keyframe_load(frame,destroy)
var frame,destroy;
frame = argument[0];

if(is_undefined(frame)){
    return false;
}

ctrl.worldtick = ds_stack_pop(frame);

while(ds_stack_size(frame) > 1){
    var nr = ds_stack_pop(frame);
    if(instance_exists(nr)){
        if(nr.object_index == o_updown){
            nr.y =  ds_stack_pop(frame);
            nr.x =  ds_stack_pop(frame);
            nr.open =  ds_stack_pop(frame);
            continue;
        }
        if(nr.object_index == o_door){
            nr.image_index =  ds_stack_pop(frame);
            nr.open =  ds_stack_pop(frame);
            continue;
        }
    }
    var thing = ctrl.clones[? string(nr)];
    if(is_undefined(thing) || !instance_exists(thing)){
        for(var j = 0; j < 10; j++){
            ds_stack_pop(frame);
        }
        continue;
    }
   // show_message(string(nr) + " O_O " + string(thing) + ":" + string(thing.object_index) + " = " + string(o_clone.object_index));
    if(thing.object_index == o_clone){
        thing.x = ds_stack_pop(frame);
        thing.y = ds_stack_pop(frame);
        thing.vsped = ds_stack_pop(frame);
        thing.hsped = ds_stack_pop(frame);
        thing.vup = ds_stack_pop(frame);
        thing.vdown = ds_stack_pop(frame);
        thing.vleft = ds_stack_pop(frame);
        thing.vright = ds_stack_pop(frame);
        thing.command = ds_stack_pop(frame);
        thing.drop = ds_stack_pop(frame);
    }
}

ds_stack_destroy(frame);
