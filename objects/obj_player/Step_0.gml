/// @description Player logic

// input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

// calculate movement
var _move = key_right - key_left;
hsp = _move * walksp;
vsp = vsp + grv;

// horizontal collision
if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp), y, obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// vertical collision
if (place_meeting(x, y + vsp, obj_wall))
{
	while (!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y = y + sign(hsp);
	}
	vsp = 0;
}
y = y + vsp;