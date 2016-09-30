///inputdog_is_slot_in_use(SLOT)
var SLOT = argument0;

with(InputManager)
    if(gamepadSlot == SLOT)
        return true;
        
return false;
