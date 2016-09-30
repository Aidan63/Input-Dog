///inputdog_find_inputmanager_child_by_gamepad(gamepadslot)
var SLOT = argument0;

with(InputManager)
    if(gamepadSlot == SLOT)
        return id;

show_debug_message("Input Manager child not found for gamepad slot "+string(SLOT));
return -1;
