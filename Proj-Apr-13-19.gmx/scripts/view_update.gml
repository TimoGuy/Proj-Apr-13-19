/// Updates view

// Check if needed
if (window_get_width() != global.prevWidth
    || window_get_height() != global.prevHeight)
{
    // Resize window surface
    view_xport[argument0] = 0;
    view_yport[argument0] = 0;
    view_wport[argument0] = window_get_width();
    view_hport[argument0] = window_get_height();
    
    view_xview[argument0] = 0;
    view_yview[argument0] = 0;
    view_wview[argument0] = window_get_width();
    view_hview[argument0] = window_get_height();
    
    surface_resize(application_surface, round(view_wview[0]), round(view_hview[0]));
    
    // Update flags
    global.prevWidth = window_get_width();
    global.prevHeight = window_get_height();
}
