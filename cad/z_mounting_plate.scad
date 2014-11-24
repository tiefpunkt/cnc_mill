width = 100;

$fa=0.1;

module langloch(radius, length) {
	union() {
		translate([0,-length/2]) circle(r=radius);
		translate([0,length/2]) circle(r=radius);
		translate([-radius,-length/2]) square([radius*2,length]);
	}
}

module bigplate_base() {
	difference() {
		square([width+8,240+50]);

		translate([9,9]) circle(r=4.1);
		translate([9+27.5,9]) circle(r=4.1);
		translate([width - 9,9]) circle(r=4.1);
		translate([width - 9 - 27.5,9]) circle(r=4.1);

		translate([0,116]) union() {
			//translate([9,9]) circle(r=4.1);
			//translate([9+28,9]) circle(r=4.1);
			translate([width - 9,9]) circle(r=4.1);
			translate([width - 9 - 28,9]) circle(r=4.1);
		}

		translate([width-14,9+50.5]) langloch(4.1,4);
		translate([width-14-18,9+50.5]) langloch(4.1,4);

		translate([22.5, 116+9-35-8+50]) union() {
			circle(r=3.1);
			translate([0,60]) circle(r=3.1);
			translate([0,2* 60]) circle(r=3.1);
		}
		
		translate([98,59.5-10-2.5]) square([5,10]);
		translate([98,59.5+7.5]) square([5,10]);

		translate([47.4,47]) square([5,10]);
		translate([47.4,67]) square([5,10]);

		translate([108-10-15,59.5-22.5]) square([15,5]);
		translate([108-5-42-3.6-5,59.5-22.5]) square([15,5]);

		translate([75.2,39.5])  circle(r=2);
		translate([49.9,62])  circle(r=2);
		translate([100.5,62])  circle(r=2);

		translate([5,290-5]) circle(r=2);
		translate([108-5,290-5]) circle(r=2);
		translate([5,170-5]) circle(r=2);
		translate([108-5,170-5]) circle(r=2);

	}

}

module hexagon(width) {
	r = width / sqrt(3) ;
	translate([-width/2,-r/2]) square([width,r]);
	rotate(60) translate([-width/2,-r/2]) square([width,r]);
	rotate(-60) translate([-width/2,-r/2]) square([width,r]);
}

module bigplate1() {
	difference() {
		union() {
			bigplate_base();
			translate([108-65.6,-19.2]) square([65.6, 19.2+0.1]);
			translate([108-65.6+14+4,-19.2-5]) square([10,6]);
			translate([108-14-10-4,-19.2-5]) square([10,6]);
		}
		translate([108-2.2-2.5,-19.2+15]) circle(r=2) ;
		translate([108-65.6+2.2+2.5,-19.2+15]) circle(r=2) ;

		translate([108-2.2-5+0.05,-19.2+4]) square([4.9,6]);
		translate([108-2.2-5+0.05,-19.2+20]) square([4.9,15]);

		translate([108-65.6+2.2+0.05,-19.2+4]) square([4.9,6]);
		translate([108-65.6+2.2+0.05,-19.2+20]) square([4.9,15]);

		translate([108-65.6+14-2-2,-19.2]) square([4,11]);
		translate([108-65.6+14-2-2-1.5,-19.2+2]) square([7,3.2]);
		translate([108-14-10+8+2,-19.2]) square([4,11]);
		translate([108-14-10+8+2-1.5,-19.2+2]) square([7,3.2]);

		//translate([108-65.6+7.5,-19.2]) square([6,3.2]);
		//translate([108-14+0.5,-19.2]) square([6,3.2]);
	}
}

module bigplate2() {
	difference() {
		bigplate_base();
		translate([22.5, 116+9-35-8+50]) union() {
			hexagon(10);
			translate([0,60]) hexagon(10);
			translate([0,2* 60]) hexagon(10);
		}
	}
}

module plate3() {
	difference() {
		union() {
			square([65.6,45]);
			translate([10,-10]) square([15,11]);
			translate([65.6-15-10,-10]) square([15,11]);
		}

		translate([32.8,22.8]) circle(r=15);
		translate([32.8-12.75,22.8-12.75]) circle(r=2.5);
		translate([32.8-12.75,22.8+12.75]) circle(r=2.5);
		translate([32.8+12.75,22.8-12.75]) circle(r=2.5);
		translate([32.8+12.75,22.8+12.75]) circle(r=2.5);
		
		translate([5,8]) square([5,10]);
		translate([5,27]) square([5,10]);
		
		translate([65.6-10,8]) square([5,10]);
		translate([65.6-10,27]) square([5,10]);
		
		translate([32.8-2,-1]) square([4,7]);
		translate([32.8-3.5,1.5]) square([7,3.2]);

		translate([5+2.5, 22.5]) circle(r=2);
		translate([55.6+2.5, 22.5]) circle(r=2);
	}
}

module plate4() {
	difference() {
		union() {
			square([40, 45]);

			translate([-5,8]) square([6,10]);
			translate([-5,27]) square([6,10]);

			translate([5,-10]) square([10,11]);
			translate([25,-10]) square([10,11]);
		}

		translate([20-2,-1]) square([4,13]);
		translate([20-3.5,4]) square([7,3.2]);

		translate([-1,22.5-2]) square([17,4]);
		translate([4,22.5-3.5]) square([3.2,7]);

		translate([10,46]) rotate(-45) square([55,30]);
	}
}

module motormount() {
	$fa=0.1;
	$fs=0.1;
	difference() {
		union() {
			square([65.6,56.4]);
			translate([4.7+28.2,28.2+0.1+1]) rotate(45) square(56.4, center=true);
		}

		translate([28.2+4.7,28.2+0.1+1]) circle(r=19.06, $fa=0.02);
		
		translate([4.7+28.2,28.2+0.1+1]) rotate(45) translate([-28.2, -28.2]) union() {
			translate([4.63,4.63]) circle(r=1.5);
			translate([4.63,56.4-4.63]) circle(r=1.5);
			translate([56.4-4.63,4.63]) circle(r=1.5);
			translate([56.4-4.63,56.4-4.63]) circle(r=1.5);
		}
		
		// Löcher für bigplate
		translate([14+4,1]) square([10,5]);
		translate([65.6-14-14,1]) square([10,5]);
		
		translate([14-2,1+2.5])  circle(r=2);
		translate([65.6-14+2,1+2.5]) circle(r=2);

		translate([2.2+2.5,6+42.6]) circle(r=2);
		translate([65.6-2.2-2.5,6+42.6]) circle(r=2);

		translate([2.2,6+22.6+5]) square([5,10]);
		translate([2.2,6+22.6-15]) square([5,10]);

		translate([65.6-2.2-5,6+22.6+5]) square([5,10]);
		translate([65.6-2.2-5,6+22.6-15]) square([5,10]);
	}
}

module motormount_support() {
	difference() {
		union() {
			square([40, 50]);

			translate([-5,7.6]) square([6,10]);
			translate([-5,27.6]) square([6,10]);

			translate([4,-5]) square([6,6]);
			translate([20,-5]) square([15,6]);
		}

		translate([15-2,-1]) square([4,13]);
		translate([15-3.5,4]) square([7,3.2]);

		translate([-1,42.6-2]) square([17,4]);
		translate([4,42.6-3.5]) square([3.2,7]);

		translate([7,55]) rotate(-45) square([70,30]);

#		translate([-1, 22.5-4]) square([5,8]);
	}
}

bigplate1();
translate([width+20,0]) bigplate2();
translate([240,10]) plate3();
translate([325.6,10]) plate4();
translate([375.6,0]) motormount();
translate([455,6]) motormount_support();