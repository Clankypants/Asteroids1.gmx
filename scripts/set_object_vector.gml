///set_object_vector(obj)

var obj = argument0;

if (global.speeddirectionupdate) {
    // assign the arguments
    var obj_x = obj.x;
    var obj_y = obj.y;
    if (ds_map_exists(obj.map, "basedirection")) {
        var obj_direction = obj.map[? "basedirection"];
    } else {
        var obj_direction = 0;
    }
    if (ds_map_exists(obj.map, "basespeed")) {
        var obj_speed = obj.map[? "basespeed"];
    } else {
        var obj_speed = 0;
    }
    if (ds_map_exists(obj.map, "parallax")) {
        var parallax = obj.map[? "parallax"];
    } else {
        var parallax = 1;
    }
    var alt_direction = global.globaldirection + 180;
    var alt_speed = global.globalspeed;
    
    // calculate new direction and speed
    new_direction_speed[] = set_relative_vector(obj_x, obj_y, obj_direction, obj_speed, parallax, alt_direction, alt_speed);
    obj.direction = new_direction_speed[0];
    obj.speed = new_direction_speed[1];
}

