camera {
        location <0,5,-13>
        look_at <0,5,0>  
} 

light_source{
    <-10,35,-10>
    rgb <1,1,1> 
}  

#declare Cup = lathe{
        cubic_spline
        9
        <0,0>,<3,0>,<3,1>,
        <1,1>,<1,3>,<3,3>,
        <4,7>,<2,4>,<0,4>
        pigment{color rgb <1,1,1>}
}      
object{Cup}    

//linear_spline = boxy format (ie could be done with combined basic shapes)  
// cubic_spline = 1st & last points aren't plotted (super smooth) negative number ok for adding one of the extra points
//quadratic_spline = curves based on the point before towards the point after. first point isn't plotted. tiny joint at each point  
//bezier_spline = line from first to last point, other points pull/push it in a certain direction. Number of points must be a multiple of 4.