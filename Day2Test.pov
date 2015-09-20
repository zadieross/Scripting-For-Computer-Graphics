background{
     rgb <0,0,1>
} 

#declare FrontCameraPos = <0,0,-10>;
#declare TopCameraPos = <0,10,0>;  
 
#declare SpherePos = <0,1,0>;
sphere{
    SpherePos //center (ususally <x,y,z>. variable could tie look at/etc to SpherePos)
    1       //radius
    texture{ 
        pigment{
            rgb <0,1,1> 
        } 
    }
}

cylinder {
    <0, 1, 0>,     // Center of one end
    <1, 2, 3>,     // Center of other end
    0.5            // Radius
    open           // Remove end caps
    texture { 
        pigment{
            rgb <0,1,1> 
            }
        }
}

box{
    <-1,0,-1> //smallest?
    <1,0.5,3> //biggest
    texture{
        pigment{ 
            rgb <1,1,1>
        }
    }
} 
      
cone{  
     <2,3,0> //point 1
     0      //radius of point 1  (0 works for a traditional cone)
     <1,2,2> //point 2
     1       //radius of point 2  
     texture{
        pigment{ 
            rgb <1,1,1>
        }
    }
} 

torus{ 
    1       //outer radius
    .2       //inner radius  
    translate <-2,1,1>  
    texture{
        pigment{ 
            rgb <1,1,1>
        }
    }
}  
   
camera{
    location<0,2,-5> //positive z is into the screen (search left-handed system) 
    look_at <0,1,1>
}  
            
light_source{
    <-2,6,-10>
    rgb<1,1,1>
}    
light_source{
    <2,6,-10>
    rgb<1,1,1>        //heyo doing McCandless
}
   
plane{
    <0,1,0> //normal vector
    0    //distance from origin
    texture{
        pigment{
            rgb<0,1,0>
        }
    }
}       
#declare Box = box{
    <-1,-1,-1>
    <1,1,1>
    pigment{
            rgb<0,1,0>
        }
    }                
    
/*object{
    Box
    scale<1,.5,.5>
} */