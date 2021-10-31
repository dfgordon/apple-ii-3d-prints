$fn = 36;
h1 = 3; // inner ring height
h2 = 7; // guide height
h3 = 3; // clearance from //e mounting tab to case floor
r1 = 11.5; // inner radius of speaker grabber
r2 = 13.5; // outer radius of speaker grabber
r3 = 39;
r4 = 42;
strut_w = 6;
strut_l = 42;

module strut()
{
    union()
    {
        translate([0,-strut_w/2,0])
        { cube([strut_l,strut_w,h1]) {} }
        translate([r3,-strut_w/2,0])
        { cube([r4-r3,strut_w,h2]) {} }
        multmatrix([[1,0,-0.4,r3],[0,1,0,-strut_w/2],[0,0,1,h2],[0,0,0,1]])
        { cube([r4-r3,strut_w,h3]) {} }
        translate([38,strut_w/2,0])
        { cube([strut_l-38,1,10]) {} }
        translate([38,-strut_w/2-0.5,0])
        { cube([strut_l-38,1,10]) {} }
    }
}

difference()
{
    union()
    {
        cylinder(h1,r2,r2) {}
        strut();
        rotate([0,0,90]) { strut(); }
        rotate([0,0,180]) { strut(); }
        rotate([0,0,270]) { strut(); }
    }
    cylinder(h1,r1,r1) {}
}
