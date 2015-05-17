h = 125;
w = 134;
$fn=1000;
$fa=0.01;
module long_circle(r,tr) {
    hull() {
        circle(r);
        translate(tr) circle(r);
    }
}

difference() {
    square([w,h]);
    
    translate([20,20]) circle(r=4);
    translate([w-20,20]) circle(r=4);
    
    translate([21,h-32]) circle(r=4);
    translate([w-21,h-32]) circle(r=4);
    
    translate([67,70]) {
        long_circle(r=19.05,tr=[0,13]);
        translate([23.57,23.57]) long_circle(r=2.25,tr=[0,13]);
        translate([23.57,-23.57]) long_circle(r=2.25,tr=[0,13]);
        translate([-23.57,23.57]) long_circle(r=2.25,tr=[0,13]);
        translate([-23.57,-23.57]) long_circle(r=2.25,tr=[0,13]);
    }
}

