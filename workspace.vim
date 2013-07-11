"work space for iodserver
"path
"set path+=common
"set path+=gsvrd/source
"set path+=gactsvrd/source
"set path+=logsvrd/source
"set path+=centersvrd/source
"set path+=dbsvrd/source
"set path+=socialsvrd/source
"set path+=dirsvrd/source
let s:this_script_dir=expand("<sfile>:p:h")
let &path.=",".s:this_script_dir."/**"
