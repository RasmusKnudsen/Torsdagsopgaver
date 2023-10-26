// Parametre for underlag og rektangler
base_width = 30;       // Bredde af underlag
base_depth = 30;       // Dybde af underlag
wall_height = 30;      // Højde af væggene
wall_thickness = 2;   // Tykkelse af væggene
post_width = 1;        // Bredde af stolperne
post_thickness = 1;    // Tykkelse af stolperne

// Parametre for de nye plader
new_plate_width = 28;  // Bredde af de nye plader
new_plate_height = 28; // Højde af de nye plader
new_plate_thickness = 1; // Tykkelse af de nye plader

// Afstand mellem rektanglerne og stolperne
spacing = 2;

// Parametre for huller i rektangler
hole_diameter = 2;     // Diameter af hullerne
hole_spacing = 5;      // Afstand mellem hullerne

// Funktion til at generere et underlag
module base() {
    cube([base_width, base_depth, 0.01]);
}

// Funktion til at generere rektanglerne som vægge
module walls() {
    difference() {
        cube([base_width, base_depth, wall_height]);
        translate([wall_thickness, wall_thickness, 0]) {
            cube([base_width - 2 * wall_thickness, base_depth - 2 * wall_thickness, wall_height]);
        }
    }
}

// Funktion til at generere stolperne ved siden af rektanglerne
module posts() {
    for (x = [spacing, base_width - post_width - spacing]) {
        for (y = [spacing + 7, base_depth - post_width - spacing - 7]) {
            translate([x, y, 0])
            cube([post_width, post_width, wall_height]);
        }
    }
}

// Funktion til at generere de nye plader
module new_plates() {
    // Plade 1 til højre for kassen
    translate([base_width + 2, 0, 0])
    cube([new_plate_width, new_plate_height, new_plate_thickness]);

    // Plade 2 med afstand til den første plade
    translate([base_width + 2 + new_plate_width + 2, 0, 0])
    cube([new_plate_width, new_plate_height, new_plate_thickness]);
}

// Funktion til at generere den nye rektangel med vandrette huller
module new_rect_with_holes() {
    difference() {
        cube([base_width, 2, 20]);  // Ny rektangel: 30cm bred, 20cm høj, 2cm tyk
        for (x = [2:hole_spacing:base_width - hole_diameter]) {
            for (z = [2:hole_spacing:20 - hole_diameter]) {
                translate([x, 0, z])
                cube([hole_diameter, 2, hole_diameter]);
            }
        }
    }
}

// Generer underlag, vægge, stolper, de nye plader og den nye rektangel med huller
union() {
    base();
    walls();
    posts();
    new_plates();
    translate([0, 0, wall_height])
    new_rect_with_holes();
}
