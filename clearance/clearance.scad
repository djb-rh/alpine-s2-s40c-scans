// Simplified solid clearance models of the Alpine S2-S40C drivers, from the scans.
// mm; z = 0 is the mounting surface (back of the flange), +z toward the front.
// part = "woofer" or "tweeter"
part = "woofer";
$fn = 128;
module woofer() {
    rotate_extrude() polygon([[0, 3.1], [50.5, 3.1], [50.5, 0],    // frame ring, 101 mm, 3.1 mm proud
                              [47.5, 0], [47.5, -12], [44, -12],   // basket
                              [44, -46], [0, -46]]);               // motor, 87-88 mm, 46 mm behind
    for (a = [0:72:359]) rotate(a) translate([50, -6, 0]) cube([6.5, 12, 1.5]);   // five ears to 113 mm
}
module tweeter() {
    rotate_extrude() polygon([[0, 7], [24, 7], [29, 3], [29, 0],   // grilled front, 58 mm flange
                              [26, 0], [26, -19], [0, -19]]);      // 52 mm body, 19 mm behind
}
if (part == "woofer") woofer(); else tweeter();
