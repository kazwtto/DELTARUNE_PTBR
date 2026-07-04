function scr_84_get_lang_string(arg0)
{
    if (!variable_global_exists("lang_map"))
        scr_84_init_localization();
    
    var lang_string_id = arg0;
    var str = ds_map_find_value(global.lang_map, lang_string_id);
    
    if (!is_undefined(str))
        return str;
    
    return "--missing-string--";
}
