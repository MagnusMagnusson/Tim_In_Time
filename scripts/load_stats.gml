var file,b0,b1,byte;
if(!file_exists(working_directory + "/save/progress.tim")){
    return false;
}
file = file_bin_open(working_directory + "/save/progress.tim",0);

with(level_ctrl){
    b0 = file_bin_read_byte(file);
    b1 = file_bin_read_byte(file);
    byte = b0 + (b1<<8)
    if(LEVELS != byte){
        file_bin_close(file);
        return false;
    }
    
    b0 = file_bin_read_byte(file);
    b1 = file_bin_read_byte(file);
    byte = b0 + (b1<<8);
    won = byte;
    
    for(var i = 0; i < LEVELS; i++){
        for(var j = 0; i < 5; i++){
            stats[i,j] = file_bin_read_byte(file);
        }
    }
}

file_bin_close(file);
