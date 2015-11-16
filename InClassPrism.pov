camera {
        location <0,45,0>
        look_at <0,0,0>  
}  

media{
        scattering{ 1, rgb 0.01}
        intervals 1
        samples 5
        method 3
}

light_source{
    <0,15,0>
    rgb <1,1,1> 
} 
light_source{
    <1,115,90>
    rgb <1,1,.25>
    spotlight
    point_at <0,0,-5>
    radius 2
    falloff 5
    media_attenuation on 
}
light_source{
    <10,35,-10>
    rgb <1,1,1> 
}


background{
     rgb <0.3,0,1>
}                

#declare Step = prism{
        linear_sweep
        linear_spline
        0, 1
        7 // add one bc you have to start & end at the same point
        #declare Index = 0;
        #while (Index <= 360)
                <cos(radians(Index)),
                sin (radians(Index))>
                #declare Index = Index + 360/6;
        #end
        rotate y*360/16
} 

#declare Room = prism{
        linear_sweep
        linear_spline
        0, 1
        9 // add one bc you have to start & end at the same point
        #declare Index = 0;
        #while (Index <= 360)
                <cos(radians(Index)),
                sin (radians(Index))>
                #declare Index = Index + 360/6;
        #end
        rotate y*360/16
}          

#declare Window = prism{
        linear_sweep
        linear_spline
        -20, 20
        6 // add one bc you have to start & end at the same point
        <0,15> 
        <2.5, 10>
        <2.5,0>
        <-2.5,0>
        <-2.5,10>
        <0, 15>
        
}


object{    
        Step
        scale <20,1,20>
        pigment{ rgb .42}
}    

object{    
        Step
        scale <16,1,16>
        translate <0,1,0>
        pigment{ rgb .42}
}   

object{    
        Step
        scale <7,1,7>
        translate <0,2,0>
        pigment{ rgb .7}
}    
object{
        Window
        rotate x * 3        
}       

difference{
        object{
                Room
        }
}