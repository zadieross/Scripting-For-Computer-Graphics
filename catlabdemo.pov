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

#declare ArmRestZ = 89/1.5;
#declare ArmRestY = 49;
#declare ArmRestX = 23.5;
#declare BottomCushionX = 35;
#declare BottomCushionZ = 27;
#declare BottomCushionY = 15;
#declare FrameBackY = 65;
#declare BackCushionY = 38;
#declare BackCushionX = BottomCushionX;
#declare BackCushionZ = BottomCushionY;
#declare FrameBottomY = 23;
#declare CouchFrameBackZ = 5;
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
        <BottomCushionX,BottomCushionY,BottomCushionZ> 
        texture{CouchTexture}
    }
    //Piping
    box {
        <0,BottomCushionY,0>
        <.3,BottomCushionY+.3,BottomCushionZ>
        texture{PipingTexture}
    }
    box {
        <0,BottomCushionY,0>
        <BottomCushionX,BottomCushionY+.3,.3>
        texture{PipingTexture}
    }
    box {
        <BottomCushionX,BottomCushionY,0>
        <BottomCushionX,BottomCushionY+.3,BottomCushionZ>
        texture{PipingTexture}
    }
    box {
        <0,BottomCushionY,BottomCushionZ>
        <BottomCushionX,BottomCushionY+.3,BottomCushionZ>
        texture{PipingTexture}
    }
}
#declare BothBottomCushions = merge{
    object{BottomCushion}
    object{
        BottomCushion
        translate<BottomCushionX,0,0>
    }
}
#declare ArmRest = merge{
    //Body
    box {
        <0,0,0>
        <ArmRestX,ArmRestY,ArmRestZ>
        texture{CouchTexture}
    }
    //Piping
    box {
        <0,ArmRestY,0>
        <.3,ArmRestY+.3,ArmRestZ>
        texture{PipingTexture}
    }
    box {
        <0,ArmRestY,0>
        <ArmRestX,ArmRestY+.3,.3>
        texture{PipingTexture}
    }
    box {
        <ArmRestX,ArmRestY,0>
        <ArmRestX,ArmRestY+.3,ArmRestZ>
        texture{PipingTexture}
    }
    box {
        <0,ArmRestY,ArmRestZ>
        <ArmRestX,ArmRestY+.3,ArmRestZ>
        texture{PipingTexture}
    }
}
#declare CouchFrameBottom = box{
    <0,0,0>
    <2*BottomCushionX,FrameBottomY,BottomCushionZ>
    texture{CouchTexture}
}
#declare CouchFrameBack = box{
    <0,0,0>
    <2*BottomCushionX,FrameBackY,CouchFrameBackZ>
    texture{CouchTexture}
}
#declare BackCushion = box{
    <0,0,0>
    <BackCushionX,BackCushionY,BackCushionZ> 
    texture{CouchTexture}
}
#declare BothBackCushions = merge{
    object{BackCushion}
    object{
        BackCushion
        translate <BackCushionX,0,0>
    }
}
    

#declare Couch = merge{
    object{BothBottomCushions
        translate <0,FrameBottomY,CouchFrameBackZ+BackCushionZ>
    }
    object{BothBackCushions
        translate<0,FrameBottomY,0>
    }
    object{CouchFrameBottom}
    object{CouchFrameBack}
    object{ArmRest
        translate<-ArmRestX,0,0>
    }
    object{ArmRest
        translate<2*BottomCushionX,0,0>
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


