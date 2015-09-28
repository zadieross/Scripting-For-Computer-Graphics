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
#declare CouchLook = <0,0,0>;
#declare CameraPosCouchLook = CouchLook + <-150,75,75>;
#declare CloseUpOnOrigin = <10,10,-50>;
#declare FarLookOrigin = <10,10,-75>;
#declare TopLookOrigin = <10, 75,0>; 

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
#declare CouchFrameBackWidth = 5;
#declare CouchTexture = texture{
        pigment{ 
            rgb <1,1,1>
        }
    }
#declare PipingTexture = texture{
        pigment{ 
            rgb <1,0,0>
        }
    }

#declare BottomCushion = merge{ 
    //Body
    box{
        <0,0,0>
        <BottomCushionWidth,BottomCushionHeight,BottomCushionLength> 
        texture{CouchTexture}
    }
    //Piping
    box {
        <0,BottomCushionHeight,0>
        <.3,BottomCushionHeight+.3,BottomCushionLength>
        texture{PipingTexture}
    }
    box {
        <0,BottomCushionHeight,0>
        <BottomCushionWidth,BottomCushionHeight+.3,.3>
        texture{PipingTexture}
    }
    box {
        <BottomCushionWidth,BottomCushionHeight,0>
        <BottomCushionWidth,BottomCushionHeight+.3,BottomCushionLength>
        texture{PipingTexture}
    }
    box {
        <0,BottomCushionHeight,BottomCushionLength>
        <BottomCushionWidth,BottomCushionHeight+.3,BottomCushionLength>
        texture{PipingTexture}
    }
}
#declare BothBottomCushions = merge{
    object{BottomCushion}
    object{
        BottomCushion
        translate<BottomCushionWidth,0,0>
    }
}
#declare ArmRest = merge{
    //Body
    box {
        <0,0,0>
        <ArmRestWidth,ArmRestHeight,ArmRestLength>
        texture{CouchTexture}
    }
    //Piping
    box {
        <0,ArmRestHeight,0>
        <.3,ArmRestHeight+.3,ArmRestLength>
        texture{PipingTexture}
    }
    box {
        <0,ArmRestHeight,0>
        <ArmRestWidth,ArmRestHeight+.3,.3>
        texture{PipingTexture}
    }
    box {
        <ArmRestWidth,ArmRestHeight,0>
        <ArmRestWidth,ArmRestHeight+.3,ArmRestLength>
        texture{PipingTexture}
    }
    box {
        <0,ArmRestHeight,ArmRestLength>
        <ArmRestWidth,ArmRestHeight+.3,ArmRestLength>
        texture{PipingTexture}
    }
}
#declare CouchFrameBottom = box{
    <0,0,0>
    <2*BottomCushionWidth,FrameBottomHeight,BottomCushionLength>
    texture{CouchTexture}
}
#declare CouchFrameBack = box{
    <0,0,0>
    <2*BottomCushionWidth,SeatBackHeight,CouchFrameBackWidth>
    texture{CouchTexture}
}    

#declare Couch = merge{
    object{BothBottomCushions
        translate <0,FrameBottomHeight,CouchFrameBackWidth>
    }
    object{CouchFrameBottom}
    object{CouchFrameBack}
    object{ArmRest
        translate<-ArmRestWidth,0,0>
    }
    object{ArmRest
        translate<2*BottomCushionWidth,0,0>
    } 
} 


camera{
    location CameraPosCouchLook
    look_at CouchLook
}

light_source{
    CenterCeiling
    rgb<1,1,1>        
}
light_source{
    <0,200,0>
    rgb<1,1,1>
}


object{
    Couch
    rotate <0,-90,0>
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


