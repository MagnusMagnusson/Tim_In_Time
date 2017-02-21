var file,b0,b1;
if(file_exists(working_directory + "/save/progress.tim")){
    file_copy(working_directory + "/save/progress.tim","backup.tim")
}
file = file_bin_open(working_directory + "/save/progress.tim",2);
file_bin_rewrite(file);

var s; 
s = 5 + 5*LEVELS;
file_bin_write_byte(file,s);

with(level_ctrl){
    b0 = LEVELS & $ff;
    b1 = (LEVELS >> 8) & $ff;
    file_bin_write_byte(file,b0);
    file_bin_write_byte(file,b1);
    
    b0 = won & $ff;
    b1 = (won >> 8) & $ff;
    file_bin_write_byte(file,b0);
    file_bin_write_byte(file,b1);
    
    for(var i = 0; i < LEVELS; i++){
        for(var j = 0; j < 5; j++){
            b0 = stats[i,j] & $ff;
            b1 = (stats[i,j] >> 8) & $ff;
            file_bin_write_byte(file,b0);
            file_bin_write_byte(file,b1);
        }
    }
}
file_bin_close(file);
