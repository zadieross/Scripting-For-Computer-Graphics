#include "fruitMaterials.inc"

camera{
    location <0,2,-5>
    look_at <0,0,0>
}
                 
light_source{
    <0,35,-10>
    rgb <1,1,1>
}                 
                 
light_source{
    <0,-35,10>
    rgb <1,1,1>
}          

light_source{
    <0,2,-5>
    rgb <1,1,1>
}    

sphere{
    <0,0,0>
    2
    material{Pear_Material_}
}