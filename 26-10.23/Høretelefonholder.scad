module headphone_holder() {
    // Bundplade
    translate([0, 0, 0])
        cube([100, 100, 5]);

    // Lodret rektangel
    translate([45, 90, 5])
        cube([10, 10, 100]);

    // Vandret cylinder
    translate([50, 90, 100])
        rotate([90, 0, 0])
        cylinder(h = 50, d = 10, $fn=100);
    
     // Cylinder, der starter i midten af rektanglen og har en vinkel
    translate([50, 95, 55])
        rotate([45, 0, 0])
        cylinder(h = 65, d = 5, $fn=100);
  
     // Cylinder som støtte til højre
    translate([30, 95, 3])
        rotate([0, 35, 0])
        cylinder(h = 35, d = 10, $fn=100);
        
          // Cylinder som støtte til venstre
    translate([70, 95, 3])
        rotate([0, -35, 0])
        cylinder(h = 35, d = 10, $fn=100);
        
          translate([50, 75, 3])
        rotate([-35, 0, 0])
        cylinder(h = 35, d = 10, $fn=100);
}


headphone_holder();
