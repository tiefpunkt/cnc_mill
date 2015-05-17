use <thread_library.scad>;


module box(w,h,d) {
	scale ([w,h,d]) cube(1, true);
}
module hexagon(height, depth) {
	boxWidth=height/1.75;
		union(){
			box(boxWidth, height, depth);
			rotate([0,0,60]) box(boxWidth, height, depth);
			rotate([0,0,-60]) box(boxWidth, height, depth);
		}
}

module thread() {
length=40;
pitch=4;
pitchRadius=8; 

//translate([-pitchRadius,0,-length/2])
trapezoidThreadNegativeSpace(
	length=length, 			// axial length of the threaded rod 
	pitch=pitch, 			// axial distance from crest to crest
	pitchRadius=pitchRadius, 	// radial distance from center to mid-profile
	threadHeightToPitch=0.5, 	// ratio between the height of the profile and the pitch 
						// std value for Acme or metric lead screw is 0.5
	profileRatio=0.5, 			// ratio between the lengths of the raised part of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
	threadAngle=30,			// angle between the two faces of the thread 
						// std value for Acme is 29 or for metric lead screw is 30
	RH=true, 				// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
	clearance=0.1, 			// radial clearance, normalized to thread height
	backlash=0.1, 			// axial clearance, normalized to pitch
	stepsPerTurn=24, 			// number of slices to create per turn
	countersunk =0
		);
}


difference() {	
	cube([22,38,36]);
	translate([11,11,0]) thread();
	translate([22,28,27]) rotate([0,90,0])  rotate([0,0,90]) hexagon(13.2,12);
	translate([-1,28,27]) rotate([0,90,0]) cylinder(r=4, h=20);
	translate([22,28,9]) rotate([0,90,0])  rotate([0,0,90]) hexagon(13.1,12);
	translate([-1,28,9])	rotate([0,90,0]) cylinder(r=4, h=20);
}