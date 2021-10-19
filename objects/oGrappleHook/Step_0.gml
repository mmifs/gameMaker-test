//destroy@range
if(x>=oPlayer.x+700||x<=oPlayer.x-700||y>=oPlayer.y+500||y<=oPlayer.y-500){
	instance_destroy();
}

//predict collision
x = x+hspeed;
y = y+vspeed;


//terrain collision
if (place_meeting(x,y+vspeed,oWall)||
place_meeting(x+hspeed,y,oWall)||
place_meeting(x,y+vspeed,oFloor)||
place_meeting(x+hspeed,y,oFloor)||
place_meeting(x,y+vspeed,oQuarterFloor)||
place_meeting(x+hspeed,y,oQuarterFloor)) {
	if (oPlayer.inAir==1){
		//player swings
	}
}

/*
//STEP EVENT//
if grapple hook touches wall object
	if player is in the air
		player swings in character's current dirrection
		(set VSPEED to a positive number. VSPEED increases MOMENTUM until player x position
		is the same as grapple hook, then VSPEED and MOMENTUM reverses.)
		(set hspeed to number in current player direction. hspeed increases MOMENTUM until
		player x position is the same as grapple hook, then MOMENTUM reverses.)
			if player jumps
				destroy grapple hook

//COLLISION WITH TERRAIN EVENT//
if grapple hook exists
	destroy grapple hook
	set VSPEED to 0, or player movement (arrow keys currently pressed)
	set hspeed to 0, or player movement (arrow keys currently pressed)

*/