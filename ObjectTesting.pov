#include "FinalRoomTextures"  

//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items


camera {
        location <30,90,225>
        look_at <30,40,0>  
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

// Bed
#declare BedCylinderDiameter = 2;
#declare BedCylinderHeight = 7;
#declare BedPostHeight = 60;
#declare BedPostWidth = 5;
#declare BedPostCutoutWidth = 2;
#declare BedPostCutoutDepth = 2.5;
#declare BedPostCutoutDistFromEdge = (BedPostWidth-BedPostCutoutWidth)/2;
#declare BedCrossbarHeight = 10;
#declare BedCrossbarWidth = 3;
#declare BedDistBetweenPosts = 60;
#declare BedCrossbarDistFromGround1 = 20;
#declare BedCrossbarDistFromGround2 = 40;
#declare BedHeadboardToHeadboardDist = Foot*5;
#declare BedSpringSideHeight = 3;
#declare BedSpringSideLength = 3;
#declare BedSpringSideThickness = 1; 
#declare BedDistBetweenSpringSides = (BedDistBetweenPosts+(2*BedPostWidth))-((2*BedSpringSideThickness)+(2*BedPostCutoutDistFromEdge));
#declare BedSpringSideCrossbarDiameter = 2;
#declare BedSpringDistFromFloor = 35;

#declare BedCylinder = cylinder{
        <0,0,0>
        <0, BedCylinderHeight, 0>
        BedCylinderDiameter
        open
};
#declare BedPostCutout = box{
        <0,0,0>
        <BedPostCutoutWidth, BedPostHeight, BedPostCutoutDepth>
};

#declare BedPost = difference{ 
        merge{
                box{  
                        <0,0,0>
                        <BedPostWidth, BedPostHeight, BedPostWidth>
                }
                object{
                        BedCylinder
                        translate <BedPostWidth/2, BedPostHeight-2, BedPostWidth/2>
                }
        }
        object{
                BedPostCutout
                translate <BedPostCutoutDistFromEdge,0,0>
        }
};

#declare BedCrossbar = box{
        <0,0,0>
        <BedDistBetweenPosts,BedCrossbarHeight, BedCrossbarWidth>
};

#declare BedHeadBoard = merge{
        object{
                BedPost
        }
        object{
                BedPost
                translate <BedDistBetweenPosts+BedPostWidth,0,0>
        }
        object{
                BedCrossbar
                translate <BedPostWidth,BedCrossbarDistFromGround1,(BedPostWidth-BedCrossbarWidth)/2>
        }
        object{
                BedCrossbar
                translate <BedPostWidth,BedCrossbarDistFromGround2,(BedPostWidth-BedCrossbarWidth)/2>
        }
        texture{BedFrameTexture}
};  

#declare Mattress = box{ 
        <0,0,0> 
        <BedDistBetweenPosts, 10, BedHeadboardToHeadboardDist>
        translate <BedPostWidth,BedSpringDistFromFloor,0>
};  

#declare BedSpringSideHorizontal = box{
        <0,0,0>
        <BedSpringSideLength, BedSpringSideThickness, BedHeadboardToHeadboardDist>
} 
#declare BedSpringSideVertical = box{
        <0,0,0>
        <BedSpringSideThickness, BedSpringSideHeight, BedHeadboardToHeadboardDist>
} 
#declare BedSpringRightSide = union{
        object{ 
                BedSpringSideHorizontal
        }
        object{
                BedSpringSideVertical
                translate <BedSpringSideLength-BedSpringSideThickness,-BedSpringSideHeight,0>
        }
        translate <(BedPostCutoutDistFromEdge+BedDistBetweenSpringSides),BedSpringDistFromFloor,0>
}  
#declare BedSpringLeftSide = merge{
        object{ 
                BedSpringSideHorizontal
        }
        object{
                BedSpringSideVertical
                translate <0,-BedSpringSideHeight, 0>
        }
        translate <BedPostCutoutDistFromEdge,BedSpringDistFromFloor,0>
}
#declare BedSpringCrossbar = cylinder{
        <0,0,0>
        <0, BedDistBetweenSpringSides, 0>
        BedSpringSideCrossbarDiameter
        open
}
#declare BedSpringCrossbars = union{
        #declare Index = 1;
        #while (Index <4)
                object{
                        BedSpringCrossbar
                        translate < (BedSpringSideThickness+BedPostCutoutDistFromEdge),10*Index,0>       
                }
                #declare Index = Index+1;
        #end
}

#declare BedMattressSupport = union{
        object{
                BedSpringRightSide
        }
        object{
                BedSpringLeftSide                
        }                        
        object{
                BedSpringCrossbars
        }
        texture{BedSpringTexture}
}  

object{
        BedSpringRightSide
        texture{BedSpringTexture}
} 
object{
        BedSpringLeftSide
        texture{BedSpringTexture}
}
object{
        BedSpringCrossbar
        texture{BedSpringTexture}
}

object{BedHeadBoard}