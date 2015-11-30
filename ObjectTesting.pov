#include "FinalRoomTextures"  

//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items


camera {
        location <30,90,225>
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
 
#declare DeskHeight = 75.5;
#declare DeskLength = 106.5;
#declare DeskWidth = 61;
#declare DeskSideBoardWidth = 2;
#declare DeskDrawersLength = 40.5;
#declare DeskSkinnyDrawerLength = DeskLength - (DeskDrawersLength + (DeskSideBoardWidth*3));
#declare DeskSkinnyDrawerHeight = 7.5; 
#declare DeskDistBetweenDrawers = 2.5;
#declare DeskBottomDrawerHeight = Foot * 1.5;
#declare DeskMiddleDrawerHeight = 25;
#declare DeskTopDrawerHeight = 25;

#declare DeskSide = box{
        <0,0,0>
        <DeskSideBoardWidth, DeskHeight, DeskWidth>
};
#declare DeskSkinnyDrawer = box{
        <0,0,0>
        <DeskSkinnyDrawerLength, DeskSkinnyDrawerHeight, DeskWidth>
};
#declare DeskBottomDrawer = box{
        <0,0,0>
        <DeskDrawersLength, DeskBottomDrawerHeight, DeskWidth>
};
#declare DeskMiddleDrawer = box{
        <0,0,0>
        <DeskDrawersLength, DeskMiddleDrawerHeight, DeskWidth>
};
#declare DeskTopDrawer = box{
        <0,0,0>
        <DeskDrawersLength, DeskTopDrawerHeight, DeskWidth>
};
#declare DeskTop = box{
        <0,0,0>
        <DeskLength, DeskSideBoardWidth, DeskWidth>
}
#declare Desk = union{
        object{
                DeskSide 
                translate < DeskLength, 0, 0>
        }
        object{
                DeskSide
        }
        object{
                DeskSkinnyDrawer
                translate <DeskDrawersLength, DeskHeight - DeskSkinnyDrawerHeight, 0>
        } 
        object{
                DeskBottomDrawer
        }
        object{
                DeskMiddleDrawer
                translate <0, DeskBottomDrawerHeight + DeskDistBetweenDrawers, 0>
        }
        object{
                DeskTopDrawer
        }
        object{                                         
                DeskTop
                translate <0, DeskHeight, 0>
        }
        texture{
                DeskTexture
        }
}             

object{
        Desk
}