_target_chapter = -1;
_init = false;
_callback = -4;
_initialize_text = "";
_y_offset = -16;
_font = 5;

show_loading_screen = function(arg0, arg1)
{
    _target_chapter = arg0;
    _callback = arg1;
    _initialize_text = get_text(_target_chapter);
    _font = get_font();
    _init = true;
    alarm[0] = 1;
};

get_text = function(arg0)
{
    var _text = "INICIALIZANDO\nCAPÍTULO " + string(arg0);
    
    if (global.lang == "ja")
        _text = "CAPÍTULO " + string(arg0) + "を\nはじめます";
    
    if (arg0 == 0)
    {
        _text = "CARREGANDO\nSELETOR\nDE\nCAPÍTULOS";
        
        if (global.lang == "ja")
            _text = "チャプター\n選択画面\nよみこみ中";
    }
    
    return _text;
};

get_font = function()
{
    if (room == room_chapter_continue)
        return (global.lang == "en") ? 5 : 11;
    else
        return (global.lang == "en") ? 6 : 14;
};
