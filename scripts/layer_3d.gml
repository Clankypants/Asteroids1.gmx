///layer_3d(start_layer)
start_layer = argument0;
offset_v = 1 - ((y - view_yview) / view_hview);
offset_h = (((x - view_xview) / view_wview) - 0.5) * 2;
for (var i = 0; i < image_number; i++) {
    draw_sprite_ext(sprite_index, i, x + (i * offset_h), y + start_layer - (i * offset_v), image_xscale, image_yscale, image_angle, c_white, image_alpha);
}

