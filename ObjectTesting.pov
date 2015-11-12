#include "FinalRoomTextures"  

//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items


camera {
        location <30,60,-125>
        look_at <30,40,0>  
} 

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


background{
     rgb <0.3,0,1>
}

// Bed
#declare BedCylinderDiameter = 2;
#declare BedCylinderHeight = 5;
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

#declare BedCylinder = cylinder{
        <0,0,0>
        <0, BedCylinderHeight + 2, 0>
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
};  

#declare BedSpringSideHorizontal = box{
        <0,0,0>
        <BedSpringSideLength, BedSpringSideThickness, BedHeadboardToHeadboardDist>
} 
#declare BedSpringSideVertical = box{
        <0,0,0>
        <BedSpringSideThickness, BedSpringSideHeight, BedHeadboardToHeadboardDist>
} 
#declare BedSpringRightSide = merge{
        object{ 
                BedSpringSideHorizontal
        }
        object{
                BedSpringSideVertical
                translate <BedSpringSideLength-BedSpringSideThickness,-BedSpringSideThickness,0>
        }
}

object{BedHeadBoard}