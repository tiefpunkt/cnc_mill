$fa=0.01;
$fn=100;



module switch() {
    cube([11.5,20,6]);
    translate([2.85,5,-20]) cylinder(r=1,h=30);
    translate([2.85,20-5.45,-20]) cylinder(r=1.1,h=30);
    //cube([10.6,11,6]);
}


module plate() {
    difference() {
        translate([-7,-8.5,0]) cube([20,32,4]);
        translate([0,0,-1]) cylinder(r=2.5,h=6.2);
        translate([-1,9,3.5 ]) rotate([0,0,-25]) switch();
    }
}

plate();
translate([30,0,0]) mirror([1,0,0]) plate();