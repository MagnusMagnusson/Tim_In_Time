var file,b0,b1;
if(file_exists(working_directory + "/save/progress.tim")){
    file_copy(working_directory + "/save/progress.tim","backup.tim")
    file_delete(working_directory + "/save/progress.tim")
}
file = file_bin_open(working_directory + "/save/progress.tim",1);

with(level_ctrl){
    b0 = LEVELS & $ff;
    b1 = (LEVELS >> 8) & $ff;
    file_bin_write_byte(file,lev1);
    file_bin_write_byte(file,lev0);
    
    b0 = won & $ff;
    b1 = (won >> 8) & $ff;
    file_bin_write_byte(file,lev1);
    file_bin_write_byte(file,lev0);
    
    for(var i = 0; i < LEVELS; i++){
        for(var j = 0; i < 5; i++){
            file_bin_write_byte(file,stats[i,j]);
        }
    }
}

file_bin_close(file);
