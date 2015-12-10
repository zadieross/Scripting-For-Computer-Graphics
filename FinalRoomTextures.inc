
//Room & Other general things
#declare WallTexture = texture{
    pigment{
        rgb <1,1,1>
    }
}
#declare FloorTexture = texture{
    pigment{
        /*image_map{ 
                png "floorImageMap.png"
                map_type 0
                once        
        } */ //this seems to void the entire floor box somehow & I don't get it just yet
        brick
        color rgb <0.447,0.278,0.086>
        color rgb <.65, .49, .25>
        brick_size <.5, .525, .15 >
        mortar .01 
        
    }
} 
#declare WindowFrameTexture = texture{
    pigment{
        rgb <1,1,1>
    }
}

//Objects
//      Bed
#declare BedFrameTexture = texture{
    pigment{
        rgb <0.447,0.278,0.086>
    }
} 
#declare BedSpringTexture = texture{
    pigment{
        rgb .4
    }
}
//      Bookshelf
#declare BookshelfTexture = texture{
    pigment{
        rgb <.65, .49, .25>
    }
}

//      Dresser
#declare DresserTexture = texture{
    pigment{
        rgb <0.2,0.8,0.2>
    }
}  

//      Desk
#declare DeskTexture = texture{
    pigment{
        rgb <0.7,0.6,0.1>
    }
}

// Bowl 
#declare BowlTexture = texture{
    pigment{
        rgb <0.7,0.9,0.2>
    }
}
     

//0.24,0.07,0.80>