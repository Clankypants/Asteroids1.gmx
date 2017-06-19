///Load Sector
// generate asteroids
if (!instance_exists(obj_asteroid) && global.life > 0) {
    for (i = 0; i < 3 * global.sector; i++) {
        instance_create(random(room_width + (global.worldpadding * 2)) - global.worldpadding, 
        random(room_height + (global.worldpadding * 2)) - global.worldpadding, 
        obj_asteroid);
    }
    with(obj_backgrounddebris) {
        instance_destroy();
    }
    global.globalspeed = 0;
}

// generate background debris
if (!instance_exists(obj_backgrounddebris)) {
    for (i = 0; i < 400; i++) {
        instance_create(room_width / 2, room_height / 2, obj_backgrounddebris);
    }
}
