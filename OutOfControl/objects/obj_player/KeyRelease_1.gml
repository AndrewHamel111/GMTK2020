///@description moveKey = false
if (keyboard_check_released(ord("D")) || keyboard_check_released(vk_right)) moveKeys[0] = false;
if (keyboard_check_released(ord("S")) || keyboard_check_released(vk_down)) moveKeys[1] = false;
if (keyboard_check_released(ord("A")) || keyboard_check_released(vk_left)) moveKeys[2] = false;
if (keyboard_check_released(ord("W")) || keyboard_check_released(vk_up)) moveKeys[3] = false;