
/////////////////////////////////////////////////////////////////
// Check for collisions with other solid blocks before moving. //
/////////////////////////////////////////////////////////////////

if (place_meeting(x + _x_move, y, oSolid)) {
	while (not place_meeting(x + sign(_x_move), y, oSolid)) {
		x += sign(_x_move)
	}
	_x_move = 0
}
if (place_meeting(x, y + _y_move, oSolid)) {
	while (not place_meeting(x, y + sign(_y_move), oSolid)) {
		y += sign(_y_move)
	}
	_y_move = 0
}
	
//////////
// Move //
//////////
x += _x_move
y += _y_move

////////////////////////////
// Reset movement buffers //
////////////////////////////
_x_move = 0
_y_move = 0


polygon = polygon_from_instance(id)

