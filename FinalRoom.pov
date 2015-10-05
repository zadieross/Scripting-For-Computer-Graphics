#include "FinalRoomTextures"

//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items 

#declare RoomWidth = Foot * 10;
#declare RoomLength = Foot * 12;
#declare RoomHeight = Foot * 10;

#declare HalfRoomWidth = RoomWidth/2;
#declare HalfRoomLength = RoomLength/2;
#declare BedHeight = Foot * 3;
#declare SeatedOnBedHeight = BedHeight + (Foot * 2);
#declare StandingEyeHeight = Foot * 5;

#declare Room = box {
    <0,0,0>
    <RoomWidth, RoomHeight, RoomLength>
}

//Camera

#declare CenterCameraPos = <HalfRoomWidth, StandingEyeHeight, HalfRoomLength>;
#declare ZadieBedCameraPos = <RoomWidth-Foot, SeatedOnBedHeight, Foot>;
#declare FionaBedCameraPos = <Foot, SeatedOnBedHeight, RoomLength-Foot>;

#declare RightWallLook = <RoomWidth, StandingEyeHeight, HalfRoomLength>;
#declare LeftWallLook = <0, StandingEyeHeight, HalfRoomLength>;
#declare TopWallLook = <HalfRoomWidth, StandingEyeHeight, RoomLength>;
#declare TopWallLook = <HalfRoomWidth, StandingEyeHeight, 0>;

camera{
    location FionaBedCameraPos
    look_at RightWallLook
}

//Lights

#declare Sun = light_source{
    <RoomWidth*2, RoomHeight*2,RoomLength>
	rgb <.8,.8,.75> 
	parallel 
	point_at CenterCameraPos
}

light_source{Sun}
light_source{
    CenterCameraPos
    rgb<1,1,1>
}

//Windows

#declare WindowHeight = Foot * 3;
#declare WindowDepth = 20;
#declare WindowWidth = Foot * 2;

#declare WindowBox = box{
    <-WindowWidth/2, 0, -WindowDepth/2> 
    <WindowWidth/2, WindowHeight, WindowDepth/2>
} 

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
}  
#declare RightWindow = object{
    WindowBox
    rotate WindowRotation
    translate RightWindowVector
}
    //Windowsills
#declare WindowsillOverhang = 10;
#declare WindowsillHeight = 3;
#declare WindowsillDepth = WindowDepth + (2*WindowsillOverhang);
#declare WindowsillWidth = WindowWidth + 8; 

#declare Windowsill = box{
    <-WindowsillWidth/2, 0, -WindowsillDepth/2>
    <-WindowsillWidth/2, WindowsillHeight, -WindowsillDepth/2>
}

#declare LeftWindowsill = object{
    Windowsill
    rotate WindowRotation
    translate LeftWindowVector
}
#declare RightWindowsill = object{
    Windowsill
    rotate WindowRotation
    translate RightWindowVector
}

// BothWindows to be subtracted from Room. Windowsills are objects to be called into the room   

#declare BothWindows = union{
    object{LeftWindow}
    object{RightWindow}
}
#declare BothWindowsills = union{
    object{LeftWindowsill}
    object{RightWindowsill}
}  



difference{
    object{
        Room
        scale 1.01
    }
    object{
        Room
        texture{
            WallTexture
        }
    }
    object{
        BothWindows
    }
}
object{BothWindowsills}