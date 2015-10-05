#include "FinalRoomTextures"



//1 unit = 1 cm
#declare Foot = 30.5; //I am aware that setting to cm & using this but cm is better at small items 

#declare RoomWidth = Foot * 10;
#declare RoomLength = Foot * 12;
#declare RoomHeight = Foot * 10;

#declare HalfRoomWidth = RoomWidth/2;
#declare HalfRoomLength = RoomLength/2;
#declare SeatedEyeHeight = 112;

#declare Room = box {
    <0,0,0>
    <RoomWidth, RoomHeight, RoomLength>
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
#declare RighttWindowVector = <RoomWidth, WindowDistFromFloor, RightWindowDistFromWall>;

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