///@description moveKey = true
if (keyboard_check(ord("D")) || keyboard_check(vk_right)) moveKeys[0] = true;
if (keyboard_check(ord("S")) || keyboard_check(vk_down)) moveKeys[1] = true;
if (keyboard_check(ord("A")) || keyboard_check(vk_left)) moveKeys[2] = true;
if (keyboard_check(ord("W")) || keyboard_check(vk_up)) moveKeys[3] = true;