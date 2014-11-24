module stuetze() {
	translate([9,0,0]) rotate(90, [0,-1,0]) linear_extrude(height=18) polygon([[11.5,24],[11,20],[11,20],[46,20],[46,28],[45.5,28]]);
}

module part1() {
	difference() {
		union() {
			translate([0,0,-12]) cylinder(r=13.1, h=19.5);
			
			translate([-24,-24,0]) cube([48,48,7.5]);
			
		}
		cylinder(r=11.2, h=13);
		translate([0,0,-13]) cylinder(r=10, h=14);
		translate([15,15,-13]) cylinder(r=3.2, h=26);
		translate([15,-15,-13]) cylinder(r=3.2, h=26);
		translate([-15,15,-13]) cylinder(r=3.2, h=26);
		translate([-15,-15,-13]) cylinder(r=3.2, h=26);


	}
}

module part2() {
	difference() {
		union() {
			translate([0,0,7.5]) cylinder(r=16, h=48);
			translate([-9,-24,7.5]) cube([18,48,48]);
			rotate(90,[0,0,1]) translate([-9,-24,7.5]) cube([18,48,48]);
			translate([-24,-24,7.5]) cube([48,48,4]);
			translate([-28,-28,45.5]) cube([56,56,10]);
			
			#stuetze();
			rotate(90,[0,0,1]) stuetze();
			rotate(180,[0,0,1]) stuetze();
			rotate(270,[0,0,1]) stuetze();

			//translate([-10,-24,11.5]) 	//rotate(7.6,[1,0,0]) cube([20,10,30.3]);
			//rotate(90,[0,0,1]) translate([-10,-24,7.5]) rotate(7.6,[1,0,0]) cube([20,10,30.3]);
			//rotate(180,[0,0,1]) translate([-10,-24,7.5]) rotate(7.6,[1,0,0]) cube([20,10,30.3]);
			///rotate(270,[0,0,1]) translate([-10,-24,7.5]) rotate(7.6,[1,0,0]) cube([20,10,30.3]);
		}
		translate([0,0,7]) cylinder(r=14.5, h=49);

		translate([15,15,7]) cylinder(r=3.2, h=5);
		translate([15,-15,7]) cylinder(r=3.2, h=5);
		translate([-15,15,7]) cylinder(r=3.2, h=5);
		translate([-15,-15,7]) cylinder(r=3.2, h=5);

		translate([23.57,23.57,45]) cylinder(r=2.5, h=11);
		translate([23.57,-23.57,45]) cylinder(r=2.5, h=11);
		translate([-23.57,23.57,45]) cylinder(r=2.5, h=11);
		translate([-23.57,-23.57,45]) cylinder(r=2.5, h=11);

		translate([0,0,53.5]) cylinder(r=20, h=9);
		
	}
}

//translate([0,0,7.5]) rotate(180,[1,0,0]) 	part1();
translate([0,0,48])  rotate(180,[1,0,0]) translate([65,0,-7.5])
	part2();