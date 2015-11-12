camera {
        location <0,5,-10>
        look_at <0,0,0>  
} 

light_source{
    <-10,35,-10>
    rgb <1,1,1> 
} 

#declare Leaf = mesh{
        triangle{
                <0,0,0>
                <2,4,0>
                <2,3,-1>
                
        }
        triangle{
                <0,0,0>
                <2,4,0>
                <2,3,1>
        }
        triangle{
                <6,3,0>
                <2,4,0>
                <2,3,-1>
        }
        triangle{
                <6,3,0>
                <2,4,0>
                <2,3,1>
        } 
        texture{
                pigment{ 
                        rgb <0,1,0> 
                }
        }
     
}  


#declare Leaf1Plant = union{
        #declare Index = 0;
        #while (Index <360)
                object{
                        Leaf
                        rotate <0, Index,0>
                }
                #declare Index = Index +30;
        #end
}

#declare Leaf2 = mesh2{
        vertex_vectors{
                5
                <0,0,0>    //0
                <2,4,0>    //1
                <2,3,-1>   //2
                <2,3,1>    //3
                <6,3,0>    //4
        }
        face_indices{
                4
                <0,1,2>
                <0,1,3>
                <4,1,2>
                <4,1,3>
        }
} 

object{Leaf}     


//final project mesh needs at least 5 triangles