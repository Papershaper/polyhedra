// polyhedra
$fn=60;
rod_d = 4.6;


module round_base(radius){
    difference(){
        sphere(r=radius);
        translate([0,0,-radius-2])cube([2*radius, 2*radius, 2*radius], center=true);
    }
}

module regular_dodecahedron_vertex(size){
    d_ang = 90-31.72;
    difference(){
        round_base(size);
        union(){
            for(ang=[0:72:360]){
                rotate([d_ang,0,ang])cylinder(h=size+1, d=rod_d);
            }
            cylinder(h=size+1, d=rod_d);  //unit
        }
    }
    
}


// ** construct *** //

//round_base(5);
regular_dodecahedron_vertex(10);