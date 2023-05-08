// A simple enclosure for the Waveshare rp2040-zero board and a single MX compatible keyswitch
// 2023 davidm@davidmonro.net

module prism(l, w, h){
    polyhedron(
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}

translate([0,0,0]) {
    difference() {
        union() {
            cube([29,29,22]);
            
        }
        translate([5,5,-0.1]) cube([19,19,7]);
        translate([7.5,7.5,0]) cube([14,14,9]);
        translate([1,1,8.2]) cube([27,27,17]);
        translate([-0.1,9,15]) cube([20,11,5]); // USB
    }
    translate([0,0,16]) cube([3,9,2]);
    translate([0,20,16]) cube([3,9,2]);
    translate([24,0,16]) cube([5,29,2]);
    translate([25,0,16]) cube([4,29,5]);
    translate([25,10,20]) rotate([90,0,0]) cylinder(r=1, $fn=10);
    translate([25,20,20]) rotate([90,0,0]) cylinder(r=1, $fn=10);
    
    translate([8,5,20]) rotate([0,90,0]) cylinder(r=1, h=2, $fn=10);
    translate([8,5,17]) cube([2,1.5,1]);
    translate([8,0,16]) cube([2,5,5]);
    translate([8,6.5,17]) rotate([180,0,0]) color("blue") prism(l=2,w=6,h=6.5);
    
    translate([8,24,20]) rotate([0,90,0]) cylinder(r=1, h=2, $fn=10);
    translate([8,22.5,17]) cube([2,1.5,1]);
    translate([8,24,16]) cube([2,5,5]);
    translate([10,22.5,17]) rotate([180,0,180]) color("blue") prism(l=2,w=6,h=6.5);
    
    
    translate([24,0,16.1]) rotate([180,0,90]) color("orange") prism(l=29,w=4,h=5);
    
    
    
    translate([3,9,16]) rotate([180,0,-90]) prism(l=9,w=3,h=3.5);
    translate([3,29,16]) rotate([180,0,-90]) prism(l=9,w=3,h=3.5);
    
    translate([17,0,18]) color("purple") cube ([2,2,2]);
    translate([17,27,18]) color("purple") cube ([2,2,2]);
    translate([0,1,18]) cube([3,4,3]);
    translate([0,24,18]) cube([3,4,3]);
    
    //translate([1,5.5,18]) color("red") cube([24,18,1]);
}
