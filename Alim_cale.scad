length=114;
width=51;
height=20;
thickness=4;
radius=3;
$fn=360;


difference(){
    cube([length+2*thickness,width+2*thickness,height+2*thickness],true);  
    translate([0,0,10]) cube([length,width,height+20],true);
}

