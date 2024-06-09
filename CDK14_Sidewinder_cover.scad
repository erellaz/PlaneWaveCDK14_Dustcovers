// Dustcover for fociser
// 04/09/2022

scale=25.4;    // Inch to mm
tol=0.5;

//Main disk
od_inner_cell=187.325+1*tol; //central hole
walls=6; //walls in both directions
od_cell=od_inner_cell+2*walls; //External diamater of lens cell in mm

nbrholes=3;

// The screws
rs=40;//circle with the screws
ds=3;
od_insert=5.3; //hole size for 8-32 thermo inserts

//Resolution for STL export only. That is for display in Openscad and 3D printing only. 
//Please do comment this before going to Freecad, or you will end up with inefficient facets.
// and will not play well with export to .step files
$fn=350;
//___________________________________________________________________________________________
module holes(){// holes for inserts
    for(j = [0 : 1 : nbrholes-1]){
    rotate([0,0,j*(360/nbrholes)]) translate([0,rs,3.5]) rotate([90,0,0]) cylinder(h=50, d=od_insert, center=true); //holes for lens cell    
       }
    
}

//___________________________________________________________________________________________
module main_body(){
//difference(){//for cut outs
//main body
difference(){
    translate([0,0,0])cylinder(h=18, d=od_cell, center=true);//the body
    translate([0,0,6])cylinder(h=18, d=od_inner_cell, center=true);//lens cell hole
    holes();
    }
//translate([0,-100,-100])cube([200,200,200]);} //for cut outs
}


//___________________________________________________________________________________________
//___________________________________________________________________________________________
// main body
if(1){
main_body();     
}