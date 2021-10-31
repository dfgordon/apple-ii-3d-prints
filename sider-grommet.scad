$fn = 24;
h1 = 5;
h2 = 1;
h3 = 2;
module fused()
{
    difference()
    {
        cylinder(h1+h2+h3,7,7) {}
        translate([-3,-4,0]) { cube([6,8,h1+h2+h3]) {} }
        translate([2.5,-7.5,h1]) { cube([5,15,h2+h3]) {} }
        translate([-7.5,-7.5,h1]) { cube([5,15,h2+h3]) {} }
        translate([-2.5,5.5,h1]) { cube([5,5,h2]) {} }
        translate([-2.5,-10.5,h1]) { cube([5,5,h2]) {} }
    }
}

module half()
{
    difference()
    {
        fused();
        translate([-8,0,0]) { cube([16,8,h1+h2+h3]) {} }
    }
}

half();