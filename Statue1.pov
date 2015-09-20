//Cammera Position List

#declare FrontCameraPos = <2,3,-10>;
#declare TopCameraPos = <0,10,0>;
#declare BottomCameraPos = <0,-10,0>;
#declare FarFrontCameraPos = <0,0,-20>;
#declare FrontPosXTiltCameraPos = <4,0,-10>;   

//Texture List

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
//Basic scene stuff

camera{
    location FrontCameraPos  
    look_at <0,0,0>
} 

background{
     rgb <0.3,0,1>
}             

//McCandless Lighting (with a bottom light in because that's proved helpful)

light_source{
    <-2,6,-10>
    rgb<1,1,1>
}    
light_source{
    <2,6,-10>
    rgb<1,1,1>        
} 
   
/*light_source{
    <0,-10,0>
    rgb<1,1,1>        
}  */  
  
//All object positions are relative to the position of the mug base sphere
  
#declare MugPos = <0,1,0>; 

//Base of mug as a sphere with the bottom cut off to make it flat

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

//Mug Top Rough Cuts

#declare MugTopBox = box{
    MugPos + <1,.58,1>
    MugPos + <-1,2,-1>
    texture{SeeThroughGreen}
}   
#declare MugNegXTopCutout  =   sphere{
    MugPos + <-2.5,1.2,0>
    2
    texture{SolidRed}
}                 
#declare MugTopWithNegXCut = difference{    
    object {
        MugTopBox
    }
    object{
        MugNegXTopCutout
    }
} 
#declare MugPosXTopCutout  =   sphere{
    MugPos + <2.5,1.2,0>
    2
    texture{SolidRed}
}  
#declare MugTopWithXCut = difference{
    object{MugTopWithNegXCut}
    object{MugPosXTopCutout}
}
#declare MugPosZTopCutout = sphere{
    MugPos + <0,1.2,2.4>
    2
    texture{SolidRed}
} 
#declare MugTopWithXPosZCut = difference{
    object{MugTopWithXCut}
    object{MugPosZTopCutout}
}
#declare MugNegZTopCutout = sphere{
    MugPos + <0,1.2,-2.4>
    2
    texture{SolidRed}
}
#declare MugTopWithRCuts = difference{
    object{MugTopWithXPosZCut}
    object{MugNegZTopCutout}
}
  
//Mug Top Fine Cuts and Merge

#declare MugTopQuadIIIFineCut = sphere{
    MugPos + <-1.9,1.2,-1.9>
    2
    texture{SolidRed}
}  
#declare MugTopWithQuadIIICut = difference{ 
    object{MugTopWithRCuts} 
    object{MugTopQuadIIIFineCut}
}
#declare MugTopQuadIFineCut = sphere{
    MugPos + <1.9,1.2,1.9>
    2
    texture{SolidRed}
}  
#declare MugTopWithQuadIandIIICut = difference{ 
    object{MugTopWithQuadIIICut} 
    object{MugTopQuadIFineCut}
}
#declare MugTopQuadIIFineCut = sphere{
    MugPos + <-1.9,1.2,1.9>
    2
    texture{SolidRed}
}  
#declare MugTopWithQuadIthruIIICut = difference{ 
    object{MugTopWithQuadIandIIICut} 
    object{MugTopQuadIIFineCut}
}
#declare MugTopQuadIVFineCut = sphere{
    MugPos + <1.9,1.2,-1.9>
    2
    texture{SolidRed}
}  
#declare MugTopWithFineCuts = difference{ 
    object{MugTopWithQuadIthruIIICut} 
    object{MugTopQuadIVFineCut}
}
#declare MugBody = merge{
    object{MugTopWithFineCuts}
    object{MugFlatBase} 
}   

//Handle

#declare HandleTorus = torus{ 
    .5
    .15        
    texture{SolidRed}
} 
#declare HandleTorusFirstCutout = box{
    <0,-1,2>
    <-2,1,-2>
} 
#declare HalfHandleTorus = difference{ 
    object{HandleTorus}
    object{HandleTorusFirstCutout}
}  
#declare HandleTorusSecondCutout = box{
    <0,-1,0>
    <2,1,-2>
    texture{SolidPink}
    rotate<0,45,0>
} 
#declare HandleCurve = difference{
    object{HalfHandleTorus}
    object{HandleTorusSecondCutout}
}

object{
    HandleCurve
    rotate <-90,0,0> 
    translate (MugPos + <1.2,1.3,0>)
}


object{MugBody}