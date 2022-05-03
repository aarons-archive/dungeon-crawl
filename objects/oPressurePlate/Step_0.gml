
////////////////////////////////////////////////
// Check if pressure plate is being activated //
////////////////////////////////////////////////

var _entity_collision = collision_rectangle(
	bbox_left, bbox_top,
	bbox_right, bbox_bottom,  
	oEntityParent, true, false
)
var _box_collision = collision_rectangle(
	bbox_left, bbox_top,
	bbox_right, bbox_bottom,  
	oMovableBox, true, false
)
	
_pressed = (_entity_collision != noone) or (_box_collision != noone)


///////////////////////////////////////////////
// If pressed, look for wires and power them //
///////////////////////////////////////////////

if (_pressed == true) { 
	
	image_index = 1
	
	var _wire_collision = collision_rectangle(
		bbox_left - 1, bbox_top - 1,
		bbox_right + 1, bbox_bottom + 1,  
		oWire, true, false
	)
	if (_wire_collision != noone) {
		_wire_collision._powered = true
		_wire_collision._powered_by = self
	}

}
else if (_pressed == false) { 
	image_index = 0 
}
