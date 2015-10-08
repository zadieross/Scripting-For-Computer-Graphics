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

#declare Room = box {
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



//Camera & some other useful locations

#declare RoomCenter = <HalfRoomWidth, StandingEyeHeight, HalfRoomLength>;
#declare ZadieBed = <RoomWidth-Foot, SeatedOnBedHeight, Foot>;
#declare FionaBed = <Foot, SeatedOnBedHeight, RoomLength-Foot>;
#declare Origin = <0,0,0>; 

#declare FarBottomLook = <HalfRoomWidth,RoomHeight*2,-RoomLength*1.5>;
#declare FarTopLook = <HalfRoomWidth,RoomHeight*2,RoomLength*2>; 

#declare RightWallLook = <RoomWidth, StandingEyeHeight, HalfRoomLength>;
#declare LeftWallLook = <0, StandingEyeHeight, HalfRoomLength>;
#declare TopWallLook = <HalfRoomWidth, StandingEyeHeight, RoomLength>;
#declare BottomWallLook = <HalfRoomWidth, StandingEyeHeight, 0>;

camera{
    location FionaBed
    look_at ZadieBed
}

//Lights

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
}
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
  
  
merge{
    difference{
        object{
            Room
            scale 1.01
        }
        object{
            Room
        }
        object{
            BothWindows
        }
    }       
    difference{
        object{
            RoomTiltBox    
        }
        object{
            BothWindows
        }
    }
}
object{BothWindowsills}