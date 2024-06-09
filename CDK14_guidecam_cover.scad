// Dustcover for guide camera
// 04/09/2022

scale=25.4;    // Inch to mm
tol=0.25;
height_wall=25;

//Main disk
od_inner_cell=1.25*scale+1*tol; //central hole
walls=4; //walls in both directions
od_cell=od_inner_cell+2*walls; //External diamater of lens cell in mm





//Resolution for STL export only. That is for display in Openscad and 3D printing only. 
//Please do comment this before going to Freecad, or you will end up with inefficient facets.
// and will not play well with export to .step files
$fn=350;


//___________________________________________________________________________________________
module main_body(){
//difference(){//for cut outs
//main body
difference(){
    translate([0,0,0])cylinder(h=height_wall, d=od_cell, center=true);//the body
    translate([0,0,6])cylinder(h=height_wall, d=od_inner_cell, center=true);//lens cell hole
    
    }
//translate([0,-100,-100])cube([200,200,200]);} //for cut outs
}


//___________________________________________________________________________________________
//___________________________________________________________________________________________
// main body
if(1){
main_body();     
}