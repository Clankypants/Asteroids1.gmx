///Load Sector
// destroy asteroids
with(obj_asteroid) {
    instance_destroy();
}
// generate asteroids
for (i = 0; i < 3 * global.sector; i++) {
    instance_create(random(room_width), random(room_height), obj_asteroid);
}
// remove background debris
with(obj_backgrounddebris) {
    instance_destroy();
}
// generate background debris
for (i = 0; i < 400; i++) {
    instance_create(room_width / 2, room_height / 2, obj_backgrounddebris);
}
// reset global variables
global.globalspeed = 0;
global.warp = true;

