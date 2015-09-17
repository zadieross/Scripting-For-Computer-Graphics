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


camera{
    location FrontCameraPos  
    look_at <0,0,0>
} 

background{
     rgb <0,0,1>
}             

light_source{
    <-2,6,-10>
    rgb<1,1,1>
}    
light_source{
    <2,6,-10>
    rgb<1,1,1>        
}      

#declare HalfPostWidth = .3;
#declare PostHeight = 4.5;
#declare Post = box{
    <-HalfPostWidth,0,-HalfPostWidth>
    <HalfPostWidth,PostHeight,HalfPostWidth>  
    texture {SolidPink}
}  

object {
    Post
}

#declare BackBoardX = 2;
#declare BackBoardY = 1;
#declare BackBoardZ = .5;
#declare BackBoard = box{
    <(-BackBoardX/2),(PostHeight-BackBoardY),-HalfPostWidth>
    <(BackBoardX/2),PostHeight,-(HalfPostWidth+BackBoardZ)> 
     texture{SolidRed}
}     

object{ 
    BackBoard
}    

#declare OuterHoop = .5;
#declare InnerHoop = .1;
#declare Hoop = torus{ 
    OuterHoop
    InnerHoop 
    translate <0,PostHeight-(BackBoardY/2),-(HalfPostWidth+BackBoardZ+OuterHoop)>  
    texture{SolidGreen}
} 

object{  
    Hoop  
    
} 
   