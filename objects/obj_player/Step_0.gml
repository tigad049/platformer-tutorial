/// @description Player logic

// input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

// calculate movement
var _move = key_right - key_left;
hsp = _move * walksp;
x = x + hsp;