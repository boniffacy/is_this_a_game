/// @description 

//Overwrite old save
if (file_exists(SAVEFILE)) { file_delete(SAVEFILE); }

//Create new save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, real(room));
file_text_close(file);


