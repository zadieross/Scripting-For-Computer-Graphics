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

#declare PostWidth = .5;
#declare PostHeight = 4.5;
#declare Post = box{
    <-PostWidth,0,-PostWidth>
    <PostWidth,PostHeight,PostWidth>  
    texture {SolidPink}
}  

object {
    Post
}

#declare BackBoardWidth = 2;
#declare BackBoard = box{
    <(-BackBoardWidth/2),(PostHeight-1),-PostWidth>
    <(BackBoardWidth/2),PostHeight,-(PostWidth+.5)> 
     texture{SolidRed}
}     

object{ 
    BackBoard
}