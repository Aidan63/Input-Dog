///inputdog_check_gamepad_input(slot, input)
var SLOT = argument0;
var INPUT = argument1;
var VAL = 0;

switch(INPUT)
{   
    case inputdog_gp_left_stick_left:  VAL = clamp(-gamepad_axis_value(SLOT,gp_axislh),0,1); break;
    case inputdog_gp_left_stick_right: VAL = clamp( gamepad_axis_value(SLOT,gp_axislh),0,1); break;
    case inputdog_gp_left_stick_up:    VAL = clamp(-gamepad_axis_value(SLOT,gp_axislv),0,1); break;
    case inputdog_gp_left_stick_down:  VAL = clamp( gamepad_axis_value(SLOT,gp_axislv),0,1); break;
    
    case inputdog_gp_right_stick_left:  VAL = clamp(-gamepad_axis_value(SLOT,gp_axisrh),0,1); break;
    case inputdog_gp_right_stick_right: VAL = clamp( gamepad_axis_value(SLOT,gp_axisrh),0,1); break;
    case inputdog_gp_right_stick_up:    VAL = clamp(-gamepad_axis_value(SLOT,gp_axisrv),0,1); break;
    case inputdog_gp_right_stick_down:  VAL = clamp( gamepad_axis_value(SLOT,gp_axisrv),0,1); break;
    
    default:                 if(gamepad_button_check(SLOT,INPUT))               VAL = 1; break;
}

var INPUT_MANAGER = inputdog_find_inputmanager_child_by_gamepad(SLOT);
if(VAL < INPUT_MANAGER.analogDeadzone)
    VAL = 0;
    
return VAL;
