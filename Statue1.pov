#declare FrontCameraPos = <0,5,-10>;
#declare TopCameraPos = <0,10,0>;
#declare BottomCameraPos = <0,-10,0>;
#declare FarFrontCameraPos = <0,0,-20>;   

#declare SolidPink =  texture{
        pigment{ 
            rgb <1,0,1>
        }
    } 
#declare SolidRed =  texture{
        pigment{ 
            rgb <1,0,0>
        }
    }
#declare SolidGreen =  texture{
        pigment{ 
            rgb <0,1,0>
        }
    }
#declare Purple  =  texture{
        pigment{ 
            rgb <0.3,0,1>
        }
    } 
#declare SeeThroughGreen =  texture{
        pigment{ 
            rgbf <0,1,1,.8>
            }
        }


camera{
    location FarFrontCameraPos  
    look_at <0,0,0>
} 

background{
     rgb <0.3,0,1>
}             

light_source{
    <-2,6,-10>
    rgb<1,1,1>
}    
light_source{
    <2,6,-10>
    rgb<1,1,1>        
} 
   
light_source{
    <0,-10,0>
    rgb<1,1,1>        
}    

#declare MugPos = <0,1,0>;
#declare MugBaseSphere = sphere{
    MugPos
    1
    texture{SolidRed}
}
#declare MugBaseCutout = box{
    MugPos + <2,-.4,2>  
    MugPos + <-2,-4,-2>  
    texture{SolidRed}
    }
#declare MugFlatBase = difference{    
    object {
        MugBaseSphere
    }
    object{
        MugBaseCutout
    }
}
#declare MugTopBox = box{
    MugPos + <1,.58,1>
    MugPos + <-1,2,-1>
    texture{SeeThroughGreen}
}   
#declare MugNegXTopCutout  =   sphere{
    MugPos + <-1.6,1.2,0>
    1
    texture{SolidRed}
}

                  
difference{    
    object {
        MugTopBox
    }
    object{
        MugNegXTopCutout
    }
}


 
object{MugFlatBase}