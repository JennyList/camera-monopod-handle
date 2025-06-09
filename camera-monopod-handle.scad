/*

A monopod handle for your camera
Jenny List 2025
CC-BY-SA 4.0

*/

$fn=90;

//
// This makes use of Stephen Kent's knurled.scad library.
// It can be found at https://github.com/smkent/knurled-openscad.
// It's licensed under the Creative Commons CC0 1.0 Universal (Public Domain) License.
//
use <./knurled.scad>

module handle(){
    translate ([0,0,150]) cylinder(20,20,0); //Single point rest
    translate([0,0,135]) cylinder(15,20,20); //cylinder
    translate([0,0,125]) cylinder(10,17,20); //top of hand grip
    translate ([0,0,15]) knurled_cylinder(110,34,8,8,1,0,0); //knurled part of hand grip
    translate ([0,0,10]) cylinder(10,20,17); //bottom of hand grip
    cylinder(10,20,20); //platform for camera
}

difference(){
    handle();
    cylinder(15,3.1,3.1); //space for tripod screw
    translate([0,0,15]) cylinder(5,3.1,0); //cone on top of tripod screw for printing without supports
    translate([0,0,155]) cylinder(30,3.1,3.1); //space for end point
}