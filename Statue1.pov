#declare FrontCameraPos = <0,5,-10>;
#declare TopCameraPos = <0,10,0>;   

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


camera{
    location FrontCameraPos  
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

#declare MugPos = <0,1,0>;
#declare MugBase = sphere{
    MugPos
    1
    texture{SolidRed}
}
#declare MugCutout = box{
    MugPos + <2,-.4,2>  
    MugPos + <-2,-4,-2> 
    texture{SolidGreen}
    }
difference{    
    object {
        MugBase
    }
    object{
        MugCutout
    }
}