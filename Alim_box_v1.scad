length=114;
width=51;
height=50;
thickness=4;
radius=3;
$fn=360;

difference(){
difference(){
    cube([length+2*thickness,width+2*thickness,height+2*thickness],true);  
    translate([0,0,10]) cube([length,width,height+20],true);
}
//translate([0,100,0])cube([200,200,200],true);
union(){
translate([-45,width/2,-(5+thickness)]) rotate([90,0,0])cylinder(h=width, r=radius, center=true);
translate([-10,width/2,-(5+thickness)]) rotate([90,0,0])cylinder(h=width, r=radius, center=true);
translate([10,width/2,-(5+thickness)]) rotate([90,0,0])cylinder(h=width, r=radius, center=true);
translate([30,width/2,-(5+thickness)]) rotate([90,0,0])cylinder(h=width, r=radius, center=true);  
translate([50,width/2,-(5+thickness)]) rotate([90,0,0])cylinder(h=width, r=radius, center=true);  
}
}