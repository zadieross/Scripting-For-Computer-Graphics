#include "FinalRoomTextures"  

//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items


camera {
        location <30,60,-100>
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

// Dresser

#declare DresserHeight = 75.5;
#declare DresserLength = 91;
#declare DresserDepth = 61;
#declare DresserBigDrawerHeight = 31;
#declare DresserDistBetweenDrawers = 2.5;
#declare DresserSmallDrawerHeight = Foot - DresserDistBetweenDrawers;
#declare DresserDrawerPullThickness = 2;
#declare DresserDrawerDistFromSides = 2;
#declare DresserDrawerLength = DresserLength-(2*DresserDrawerDistFromSides);

#declare DresserBody = box{
        <0,0,0>
        <DresserLength,DresserHeight, DresserDepth>
};
#declare DresserBottomDrawer = box{
        <0,0,0>
        <DresserDrawerLength, DresserBigDrawerHeight, DresserDrawerPullThickness>
        translate <DresserDrawerDistFromSides, 0, 0>
};
#declare DresserMiddleDrawer = box{
        <0,0,0>
        <DresserDrawerLength, DresserSmallDrawerHeight, DresserDrawerPullThickness> 
        translate <DresserDrawerDistFromSides, DresserBigDrawerHeight + DresserDistBetweenDrawers, 0>
};
#declare DresserTopDrawer = box{
        <0,0,0>
        <DresserDrawerLength, DresserSmallDrawerHeight, DresserDrawerPullThickness>
        translate <DresserDrawerDistFromSides, DresserBigDrawerHeight + (DresserDistBetweenDrawers*2) + DresserSmallDrawerHeight, 0>
};

#declare Dresser = merge{
        object{
                DresserBody
        }
        object{
                DresserBottomDrawer
        }
        object{
                DresserMiddleDrawer
        }
        object{
                DresserTopDrawer
        }    
        texture{
                DresserTexture
        }
};   

object{Dresser}