#declare RoomWidth = 632;
#declare RoomLength = 1016;
#declare RoomHeight = 335;

#declare HalfRoomWidth = RoomWidth/2;
#declare HalfRoomLength = RoomLength/2;
#declare SeatedEyeHeight = 112;


#declare CenterSeated = <HalfRoomWidth,SeatedEyeHeight, HalfRoomLength>;
#declare CenterCeiling = <HalfRoomWidth,RoomHeight, HalfRoomLength>;
#declare Margret = <HalfRoomWidth,SeatedEyeHeight, 40>;
#declare Justin = <HalfRoomWidth, SeatedEyeHeight, RoomLength>; 

#declare DoorWidth = 91;
#declare DoorHeight = 236;
#declare DoorDepth = 16;
#declare DoorDistanceFromRightWall = 188;
#declare DoorwayCutout = box{
    <0,0,-DoorDepth/2>
    <DoorWidth,DoorHeight,DoorDepth/2>
    translate <RoomWidth-DoorDistanceFromRightWall,0,RoomLength>
}


#declare CATLab = box{
    <0,0,0>
    <RoomWidth, RoomHeight, RoomLength>  
    texture{
        pigment{ 
            rgb <0,0,1>
        }
    }
}

#declare WindowHeight = 150.5;
#declare WindowDistanceFromGround = 89;
#declare Windows = box{
    <0,0,-DoorDepth>
    <RoomWidth, WindowHeight, DoorDepth>
    translate <0,WindowDistanceFromGround,0>
}

#declare ArmRestLength = 89;
#declare ArmRestHeight = 49;
#declare ArmRestWidth = 23.5;
#declare BottomCushionWidth = 35;
#declare BottomCushionLength = 27;
#declare BottomCushionHeight = 15;
#declare SeatBackHeight = 65;
#declare BackCushionHeight = 38;
#declare FrameBottomHeight = 23;

#declare BottomCushion = box{
    <0,0,0>
    <BottomCushionWidth,BottomCushionHeight,BottomCushionLength>
}


camera{
    location Justin
    look_at Margret
}

light_source{
    CenterCeiling
    rgb<1,1,1>        
} 

/*difference{ 
    object{
        CATLab
        scale 1.001
    }
    object{CATLab}
    object{DoorwayCutout}
    object{Windows}
} */


