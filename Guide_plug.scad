$fn=360;
//color("red") cylinder(h=100,d=28, center=true);
//translate([0,0,10]) cylinder(h=10,r=10, center=true);

difference(){
union(){
translate([0,0,6])cylinder(h=6,d=40, center=true);
cylinder(h=8,d=32, center=true);
}
translate([0,0,-1])cylinder(h=10,d=25, center=true);
}