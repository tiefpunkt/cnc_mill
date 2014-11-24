$fs=0.01;

module fuehrung_holes() {
		translate([(70.05-57.5)/2, 6.5]) union() {
			circle(r=4);
			translate([57.5,0]) circle(r=4);
			translate([0,45]) circle(r=4);
			translate([57.5,45]) circle(r=4);
		}
}

module mutter_holes() {
		translate([5,10]) union() {
			circle(r=2.5);
			translate([30,0]) circle(r=2.5);
			translate([0,20]) circle(r=2.5);
			translate([30,20]) circle(r=2.5);
		}
}

module bigplate() {
	difference() {
		square([117.725,220]);

		translate([5,44])fuehrung_holes();
		translate([72.725,0]) mutter_holes();

		translate([20+5,210]) square([10,5]);
		translate([20+65,210]) square([10,5]);
		translate([20+25,210]) square([30,5]);
		translate([20+20,210+2.5]) circle(r=2);
		translate([20+60,210+2.5]) circle(r=2);

		translate([25,210-15-5]) square([5,15]);
		translate([25,210-15-5-25]) square([5,15]);
		translate([25+2.5,210-15-5-5]) circle(r=2);

		translate([90,210-15-5]) square([5,15]);
		translate([90,210-15-5-25]) square([5,15]);
		translate([90+2.5,210-15-5-5]) circle(r=2);

		translate([20+5,135]) square([10,5]);
		translate([20+65,135]) square([10,5]);
		translate([20+25,135]) square([30,5]);
		translate([20+20,135+2.5]) circle(r=2);
		translate([20+60,135+2.5]) circle(r=2);
	}
}

module holder_bottom() {
	difference() {
		union() {
			square([80, 65]);
			translate([5,-10]) square([10,11]);
			translate([65,-10]) square([10,11]);
			translate([25,-10]) square([30,11]);
		}

		translate([20-2,-1]) square([4,12]);
		translate([20-2-1.5,0+2]) square([7,3.2]);
		translate([60-2,-1]) square([4,12]);
		translate([60-2-1.5,0+2]) square([7,3.2]);

		translate([40, 24.5+10]) circle(r=9);
		
		translate([5,5]) square([5,10]);
		translate([5,25]) square([5,20]);
		translate([5,55]) square([5,5]);
		translate([5+2.5,20]) circle(r=2);
		translate([5+2.5,50]) circle(r=2);

		translate([70,5]) square([5,10]);
		translate([70,25]) square([5,20]);
		translate([70,55]) square([5,5]);
		translate([70+2.5,20]) circle(r=2);
		translate([70+2.5,50]) circle(r=2);
	}
}

module holder_bottom_support() {
	difference() {
		union() {
			square([65,50]);

			translate([5,-5]) square([10,6]);
			translate([25,-5]) square([20,6]);
			translate([55,-5]) square([5,6]);

			translate([-10,5]) square([11,15]);
			translate([-10,30]) square([11,15]);
		}

		translate([20-2,-1]) square([4,12]);
		translate([20-2-1.5,0+2]) square([7,3.2]);
		translate([50-2,-1]) square([4,12]);
		translate([50-2-1.5,0+2]) square([7,3.2]);

		translate([-1,25-2]) square([12,4]);
		translate([2,25-3.5]) square([3.2,7]);
		
		translate([66,12]) rotate(45) square([30,60]);
	}
}

module holder_top() {
	difference() {
		union() {
			square([80, 65]);
			translate([5,-10]) square([10,11]);
			translate([65,-10]) square([10,11]);
			translate([25,-10]) square([30,11]);
		}

		translate([20-2,-1]) square([4,12]);
		translate([20-2-1.5,0+2]) square([7,3.2]);
		translate([60-2,-1]) square([4,12]);
		translate([60-2-1.5,0+2]) square([7,3.2]);

		translate([40, 24.5+10]) circle(r=24.5);
		
		translate([8,28]) circle(r=3);
		translate([80-8,28]) circle(r=3);

		translate([-1,34.5]) square([82,40]);
	}
}

bigplate();
translate([130,10]) holder_bottom();
translate([235,10]) holder_bottom_support();
translate([310,10]) holder_top();