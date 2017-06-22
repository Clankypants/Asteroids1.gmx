///set_relative_vector(obj_x, obj_y, obj_direction, obj_speed, parallax, alt_direction, alt_speed);

// assign the arguments
obj_x = argument0;
obj_y = argument1;
obj_direction = argument2;
obj_speed = argument3;
parallax = argument4;
alt_direction = argument5;
alt_speed = argument6;

// get the x and y speeds of the object
x_speed = lengthdir_x(obj_speed, obj_direction);
y_speed = lengthdir_y(obj_speed, obj_direction);

// get the relative speeds
alt_x_speed = lengthdir_x(alt_speed, alt_direction);
alt_y_speed = lengthdir_y(alt_speed, alt_direction);

// calculate the modifier x and y speeds to apply to the object
x_speed += alt_x_speed * parallax;
y_speed += alt_y_speed * parallax;

// apply the new direction and speed for the object
new_direction_speed[0] = point_direction(x, y, x + x_speed, y + y_speed);
new_direction_speed[1] = point_distance(x, y, x + x_speed, y + y_speed);

return new_direction_speed;
