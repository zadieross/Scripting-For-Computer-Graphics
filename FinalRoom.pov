#include "FinalRoomTextures"  

//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items 

#declare RoomWidth = Foot * 20;
#declare RoomLength = 420;
#declare RoomHeight = Foot * 10;

#declare HalfRoomWidth = RoomWidth/2;
#declare HalfRoomLength = RoomLength/2;
#declare HalfRoomHeight = RoomHeight/2;
#declare BedHeight = Foot * 3;
#declare SeatedOnBedHeight = BedHeight + (Foot * 1.5);
#declare StandingEyeHeight = Foot * 5;

#declare RoomBox = box {
    <0,0,0>
    <RoomWidth, RoomHeight, RoomLength>
    texture{
            WallTexture
        }
}; 

#declare RoomTiltDistFromRight = Foot *1.5;

#declare RoomTiltBox = box{
    <0,0,-1>
    <HalfRoomWidth,RoomHeight, RoomLength+10>
    rotate <0,0,40>                                                      
    translate <RoomWidth,HalfRoomHeight,0>
    texture{
        WallTexture
    }
};

#declare Floor = box{
    <0,-5,0>
    <RoomWidth, .001, RoomLength>
    texture{
        FloorTexture
    }
};




//Camera & some other useful locations

#declare RoomCenter = <HalfRoomWidth, StandingEyeHeight, HalfRoomLength>;
#declare ZadieBedPos = <RoomWidth-Foot, SeatedOnBedHeight, Foot>;
#declare FionaBedPos = <Foot, SeatedOnBedHeight, RoomLength-Foot>;
#declare Origin = <0,0,0>; 

#declare FarBottomLook = <HalfRoomWidth,RoomHeight*2,-RoomLength*1.5>;
#declare FarTopLook = <HalfRoomWidth,RoomHeight*2,RoomLength*2>; 

#declare RightWallLook = <RoomWidth, StandingEyeHeight, HalfRoomLength>;
#declare LeftWallLook = <0, StandingEyeHeight, HalfRoomLength>;
#declare TopWallLook = <HalfRoomWidth, StandingEyeHeight, RoomLength>;
#declare BottomWallLook = <HalfRoomWidth, StandingEyeHeight, 0>;

camera{
    location FionaBedPos
    look_at ZadieBedPos
}

//Lights 

#include "rad_def.inc"

/*#version 3.6;
global_settings{
        radiosity{
                Rad_Settings (Radiosity_Default, off, off) //Type, normal?
                pretrace_start 0.08
                pretrace_end 0.01
                count 500
                nearest_count 20
                error_bound .3  
        }
} */

#declare Sun = light_source{
    <RoomWidth*2, RoomHeight*2,RoomLength>
	rgb <.8,.8,.75> 
	parallel 
	point_at RoomCenter
};

light_source{Sun}
light_source{
    RoomCenter
    rgb<1,1,1>
}
light_source{
    FarBottomLook
    rgb<1,1,1>
}

background{
     rgb <0.3,0,1>
} 


//Windows

#declare WindowHeight = Foot * 4;
#declare WindowDepth = 200;
#declare WindowWidth = Foot * 2;

#declare WindowBox = box{
    <-WindowWidth/2, 0, -WindowDepth/2> 
    <WindowWidth/2, WindowHeight, WindowDepth/2>
}; 

#declare LeftWindowDistFromWall = Foot * 2;
#declare RightWindowDistFromWall = Foot * 2;
#declare WindowDistFromFloor = (Foot * 2) + 10;  

#declare WindowRotation = <0,90,0>; 
#declare LeftWindowVector = <RoomWidth, WindowDistFromFloor, RoomLength-LeftWindowDistFromWall>;
#declare RightWindowVector = <RoomWidth, WindowDistFromFloor, RightWindowDistFromWall>;

#declare LeftWindow = object{
    WindowBox
    rotate WindowRotation
    translate  LeftWindowVector
};  
#declare RightWindow = object{
    WindowBox
    rotate WindowRotation
    translate RightWindowVector
};
    //Windowsills
#declare WindowsillOverhang = 10;
#declare WindowsillHeight = 3;
#declare WindowsillDepth = WindowDepth + (2*WindowsillOverhang);
#declare WindowsillWidth = WindowWidth + 8; 

#declare Windowsill = box{
    <-WindowsillWidth/2, 0, -WindowsillDepth/2>
    <-WindowsillWidth/2, WindowsillHeight, -WindowsillDepth/2>
}; 

#declare LeftWindowsill = object{
    Windowsill
    rotate WindowRotation
    translate LeftWindowVector
};
#declare RightWindowsill = object{
    Windowsill
    rotate WindowRotation
    translate RightWindowVector
};

// BothWindows to be subtracted from Room. Windowsills are objects to be called into the room   

#declare BothWindows = union{
    object{LeftWindow}
    object{RightWindow}
};
#declare BothWindowsills = union{
    object{LeftWindowsill}
    object{RightWindowsill}
};  
  
//Window cut out boxes

#declare WindowCutoutDistFromCeiling = 10;
#declare LeftWindowCutoutWidth = Foot * 3.5;
#declare RightWindowCutoutWidth = Foot * 3.5;
#declare WindowCutoutDepth = Foot * 3.5;

#declare LeftWindowCutout = box{
        <0,0,0>
        <WindowCutoutDepth, RoomHeight - WindowCutoutDistFromCeiling, LeftWindowCutoutWidth>
        texture{WallTexture}
};
  
// Bed
#declare BedCylinderDiameter = 2;
#declare BedCylinderHeight = 7;
#declare BedPostHeight = 60;
#declare BedPostWidth = 5;
#declare BedPostCutoutWidth = 2;
#declare BedPostCutoutDepth = 2.5;
#declare BedPostCutoutDistFromEdge = (BedPostWidth-BedPostCutoutWidth)/2;
#declare BedCrossbarHeight = 10;
#declare BedCrossbarWidth = 2;
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
#declare BedDisBetweenSpringCrossbars =35;
#declare BedLength = BedHeadboardToHeadboardDist + (2*BedPostWidth);

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

#declare BedHeadboard = merge{
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
}; 
#declare BedSpringSideVertical = box{
        <0,0,0>
        <BedSpringSideThickness, BedSpringSideHeight, BedHeadboardToHeadboardDist>
}; 
#declare BedSpringRightSide = union{
        object{ 
                BedSpringSideHorizontal
        }
        object{
                BedSpringSideVertical
                translate <BedSpringSideLength-BedSpringSideThickness,-BedSpringSideHeight,0>
        }
        translate <(BedPostCutoutDistFromEdge+BedDistBetweenSpringSides),BedSpringDistFromFloor,0>
};  
#declare BedSpringLeftSide = merge{
        object{ 
                BedSpringSideHorizontal
        }
        object{
                BedSpringSideVertical
                translate <0,-BedSpringSideHeight, 0>
        }
        translate <BedPostCutoutDistFromEdge,BedSpringDistFromFloor,0>
};
#declare BedSpringCrossbar = cylinder{
        <0,0,0>
        <BedDistBetweenSpringSides, 0, 0>
        BedSpringSideCrossbarDiameter
        open
};
#declare BedSpringCrossbars = union{
        #declare Index = 1;
        #while (Index <=4)
                object{
                        BedSpringCrossbar
                        translate < (BedSpringSideThickness+BedPostCutoutDistFromEdge),BedSpringDistFromFloor - (BedSpringSideCrossbarDiameter/2),BedDisBetweenSpringCrossbars*Index>       
                }
                #declare Index = Index+1;
        #end 
};

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
};  

#declare Bed = merge{
        object {
                BedMattressSupport
        }
        object{
                BedHeadboard
        }
        object{
                BedHeadboard 
                translate <0,0, BedHeadboardToHeadboardDist>
        } 
}; 
                            

// Bookshelf
                               
#declare BookshelfHeight = 75.5;
#declare BookshelfWidth = 25.25;
#declare BookshelfLength = 76;
#declare BookshelfDepth = 23.5;
#declare BookshelfBackThickness = BookshelfWidth - BookshelfDepth;
#declare BookshelfMiddleShelfHeight = Foot *1.25;
#declare BookshelfThickness = 2;

#declare BookshelfSide = box{
        <0,0,0>
        <BookshelfThickness, BookshelfHeight, BookshelfWidth>
};
#declare BookshelfBottom = box{
        <0,0,0>
        <BookshelfLength, BookshelfThickness, BookshelfWidth> 
};
#declare BookshelfTop = object{
        BookshelfBottom
        translate <0, BookshelfHeight - BookshelfThickness, 0>
};
#declare BookshelfMiddleShelf = object{
        BookshelfBottom
        translate <0, BookshelfMiddleShelfHeight, 0>
};
#declare BookshelfBack = box{
        <0,0,0>
        <BookshelfLength, BookshelfHeight, BookshelfBackThickness> 
};  
#declare Bookshelf = union{
        object{ 
                BookshelfSide
        }
        object{ 
                BookshelfSide
                translate <BookshelfLength - BookshelfThickness, 0, 0>
        }
        object{
                BookshelfBack
                translate <0,0,BookshelfDepth>
        }      
        object{ 
                BookshelfTop 
        }
        object{
                BookshelfMiddleShelf
        }
        object{
                BookshelfBottom
        }
        texture{
                BookshelfTexture
        }
}; 

// Dresser

#declare DresserHeight = 75.5;
#declare DresserLength = 91;
#declare DresserDepth = 61;
#declare DresserBigDrawerHeight = 31;
#declare DresserDistBetweenDrawers = 2.5;
#declare DresserSmallDrawerHeight = 18;
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
        translate <DresserDrawerDistFromSides, 0, -DresserDrawerPullThickness>
};
#declare DresserMiddleDrawer = box{
        <0,0,0>
        <DresserDrawerLength, DresserSmallDrawerHeight, DresserDrawerPullThickness> 
        translate <DresserDrawerDistFromSides, DresserBigDrawerHeight + DresserDistBetweenDrawers, -DresserDrawerPullThickness>
};
#declare DresserTopDrawer = box{
        <0,0,0>
        <DresserDrawerLength, DresserSmallDrawerHeight, DresserDrawerPullThickness>
        translate <DresserDrawerDistFromSides, DresserBigDrawerHeight + (DresserDistBetweenDrawers*2) + DresserSmallDrawerHeight, -DresserDrawerPullThickness>
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

// Desk

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
 
// Zadie Furniture
#declare ZadieBed = object{
        Bed
        translate ZadieBedPos
        translate < -100, -SeatedOnBedHeight, 0>
}
#declare ZadieDesk = object{
        Desk
        translate ZadieBedPos
        translate < -300, -SeatedOnBedHeight, -15>
} 
#declare ZadieDresser = object{
        Dresser 
        translate ZadieBedPos
        translate < -400, -SeatedOnBedHeight, -15>
}                       
#declare ZadieBookshelf = object{
        Bookshelf
        translate ZadieBedPos
        translate <-100, -SeatedOnBedHeight, BedLength>
}
#declare ZadieFurniture = union{
        object{ 
                ZadieBed
        }
        object{ 
                ZadieDesk
        }
        object{
                ZadieDresser
        }
        object{
                ZadieBookshelf
        }
}
object{
        ZadieFurniture
}                
  
  
  
  //objects/room actually called
  
merge{
    difference{
        object{
            RoomBox
            scale 1.01
        }
        object{
            RoomBox
        }
        object{
            BothWindows
        }
        object{
                LeftWindowCutout
                translate  <RoomWidth, 0,  RoomLength-LeftWindowDistFromWall>  
        }   
    }       
    difference{
        object{
            RoomTiltBox    
        }
        object{
            BothWindows
        } 
        object{
            LeftWindowCutout
            translate  <RoomWidth-WindowCutoutDepth, 0,  RoomLength-LeftWindowDistFromWall>  
        }
    }
   object{
        LeftWindowCutout
        translate  <RoomWidth-10, 0,  RoomLength-LeftWindowDistFromWall>  
    }
}
object{BothWindowsills}
object{Floor}

                         
object{
        Bed
        translate FionaBedPos
        translate < 0, -SeatedOnBedHeight, 0>
}

