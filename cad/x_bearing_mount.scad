module part() {
	difference() {
		union() {
			translate([0,0,-12]) cylinder(r=12.8, h=24);
			translate([-24,-24,0]) cube([48,48,12]);
		}
		cylinder(r=11, h=13);
		translate([0,0,-13]) cylinder(r=10, h=14);
		translate([15,15,-13]) cylinder(r=3, h=26);
		translate([15,-15,-13]) cylinder(r=3, h=26);
		translate([-15,15,-13]) cylinder(r=3, h=26);
		translate([-15,-15,-13]) cylinder(r=3, h=26);
	}
}

rotate(180,[1,0,0]) part();