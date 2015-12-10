#include "FinalRoomTextures"  

//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items


camera {
        location <10,5,-25>
        look_at <0,0,0>  
} 

/* 
location <30,60,-125>
        look_at <30,40,0> 
*/

light_source{
    <-10,35,-10>
    rgb <1,1,1> 
} 
light_source{
    <10,60,-10>
    rgb <1,1,1> 
}
light_source{
    <10,35,-10>
    rgb <1,1,1> 
}
light_source{
    <30,90,200>
    rgb <1,1,1> 
}


background{
     rgb <0.3,0,1>
}
 
// YellowSaltBowl

             
#declare YellowSaltBowl = lathe{
        cubic_spline
        9
        <5,-1>,<6,0.5>,<7,1>,
        <13,2>,<11,5>,<13,3>,
        <10,7>,<12,4>,<0,4>
        texture{BowlTexture}
}     
    
object{
  YellowSaltBowl      
}