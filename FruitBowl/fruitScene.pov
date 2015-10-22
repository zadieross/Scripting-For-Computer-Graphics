#include "fruitModels.inc" //Geometry

background { color rgb<0,0,0> }

camera {
        location <0,8,-13>
        look_at <0,0,0>  
} 

// Add Lights Here!
light_source{
    <-10,35,-10>
    rgb <.8,.8,1> *.7 
}
light_source{
    <10,35,-10>
    rgb <1,.8,.8> * .75 
}
light_source{
    <0,35,5>
    rgb <1,1,1> *.3
}

object{
      fruit_
      rotate <0,-90,0>
      translate <-2,-1,10> //Moved to center the fruit at <0,0,0>
}
