w = 17.0;
t = 3.0;

module plate1()
{
    difference()
    {
        cube([t,15.0,w]);
        translate([t,10.0,w/2])
        {
            rotate([0.0,-90.0,0.0])
            {
                cylinder(h=t,r1=1.0,r2=1.0);
            }
        }
    }
}

module plate2()
{
    difference()
    {
        cube([15.0,t,w]);
        translate([12.0,0.0,w/2])
        {
            rotate([-90.0,0.0,0.0])
            {
                cylinder(h=t,r1=1.0,r2=1.0);
            }
        }
    }
}

union()
{
    plate1();
    translate([70-t,0.0,0.0]) { plate1(); }
    plate2();
    translate([70.0,0.0,w]) {
        rotate([0.0,180.0,0.0]) {
            plate2();
        }
    }
    cube([70.0,t,2.0]);
    translate([0.0,0.0,w-2]) {
        cube([70.0,t,2.0]);
    }
}