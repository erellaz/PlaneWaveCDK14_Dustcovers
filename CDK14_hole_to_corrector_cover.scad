// Paul Richard
// 6/6/21
// Dust Cover for 2 inches focuser

$fn=360;
scale=25.4;    // Inch to mm

//interior cylindre
hi=25;
ri=(113.0/2); 

//outside cylinder
rt=(130/2);
ht=6;

// the tabs
stepback=0.5;


union(){
difference(){
union(){
cylinder(h = hi, r = ri-.9*stepback, center = true);
translate([0,0,hi/2+ht/2]) cylinder(h = ht, r = rt, center = true);
}
translate([0,0,-0])cylinder(h = hi+ ht, r = 0.9*ri, center = true);
}

// Chevrons
n=12;
for (a =[0:n]){
    rotate([0,0,a*(360/n)])translate([ri-(stepback/2),0,0])cube([stepback,1,hi],true);
    } 
}


//________________________________________________________________________________________
if(0){
color("red"){
  translate([0,0,20])  cylinder(h = hi, r = (2.75/2)*scale, center = true);
}}