//==================================================
//Material definitions
#declare Cherries1_MappedPigment = pigment { color rgb <1,0,0> };

#declare Cherries1_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Cherries1_Material_ = material {
	texture {
		pigment { uv_mapping Cherries1_MappedPigment }
		finish { Cherries1_Finish }
	}
}
//==================================================
#declare Cherries2_MappedPigment = pigment { color rgb <0.59,0.44,0.58> };

#declare Cherries2_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Cherries2_Material_ = material {
	texture {
		pigment { uv_mapping Cherries2_MappedPigment }
		finish { Cherries2_Finish }
	}
}
//==================================================
#declare Plate_MappedPigment = pigment { color rgb <0.21,0.31,0.58> }

#declare Plate_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Plate_Material_ = material {
	texture {
		pigment { uv_mapping Plate_MappedPigment }
		finish { Plate_Finish }
	}
}
//==================================================
#declare GrapeStem_MappedPigment = pigment { color rgb <0.72,0.86,0.67> }

#declare GrapeStem_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare GrapeStem_Material_ = material {
	texture {
		pigment { uv_mapping GrapeStem_MappedPigment }
		finish { GrapeStem_Finish }
	}
}
//==================================================
#declare Sheet_MappedPigment = pigment { color rgb <0.60,0.20,0.34> }

#declare Sheet_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Sheet_Material_ = material {
	texture {
		pigment { uv_mapping Sheet_MappedPigment }
		finish { Sheet_Finish }
	}
}

//==================================================
#declare Plum1_MappedPigment = pigment { color rgb <0.12,0.00,0.69> }

#declare Plum1_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Plum1_Material_ = material {
	texture {
		pigment { uv_mapping Plum1_MappedPigment }
		finish { Plum1_Finish }
	}
}
//==================================================
#declare Plum2_MappedPigment = pigment { color rgb <0.62,0.17,0.42> }

#declare Plum2_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Plum2_Material_ = material {
	texture {
		pigment { uv_mapping Plum2_MappedPigment }
		finish { Plum2_Finish }
	}
}
//==================================================
#declare Plum3_MappedPigment = pigment { color rgb <0.24,0.96,0.86> }

#declare Plum3_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Plum3_Material_ = material {
	texture {
		pigment { uv_mapping Plum3_MappedPigment }
		finish { Plum3_Finish }
	}
}
//==================================================
#declare Plum4_MappedPigment = pigment { color rgb <0.20,0.64,0.04> }

#declare Plum4_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Plum4_Material_ = material {
	texture {
		pigment { uv_mapping Plum4_MappedPigment }
		finish { Plum4_Finish }
	}
}
//==================================================
#declare Plum5_MappedPigment = pigment { color rgb <0.06,0.88,0.77> }

#declare Plum5_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Plum5_Material_ = material {
	texture {
		pigment { uv_mapping Plum5_MappedPigment }
		finish { Plum5_Finish }
	}
}
//==================================================
#declare Plum6_MappedPigment = pigment { color rgb <0.24,0.10,0.93> }

#declare Plum6_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Plum6_Material_ = material {
	texture {
		pigment { uv_mapping Plum6_MappedPigment }
		finish { Plum6_Finish }
	}
}
//==================================================
#declare Orange_MappedPigment = pigment { color rgb <.75,1,0.5> }

#declare Orange_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Orange_Material_ = material {
	texture {
		pigment { uv_mapping Orange_MappedPigment }
		finish { Orange_Finish }
	}
}
//==================================================
#declare OrangeStem_MappedPigment = pigment { color rgb <0.85,0.75,0> }

#declare OrangeStem_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare OrangeStem_Material_ = material {
	texture {
		pigment { uv_mapping OrangeStem_MappedPigment }
		finish { OrangeStem_Finish }
	}
}
//==================================================
#declare PearStemPigment = pigment{
        color rgb <0.584,0.345,0>
}

#declare PearBodyPigment = pigment {
    gradient <0,1,0>
    color_map{
        [0.0 color rgb <0.584,0.93,0.06>]//start/end color
        [0.4 color rgb <.4,.9,0>]
        [0.6 color rgb <.4,0.7,0>]
        [0.8 color rgb <0.25,0.8,0>]
        [1.0 color rgb <0.3,0.9,0>]//start/end color
    }
    /*hexagon
     color rgb <0.3,0.9,0>
     color rgb <0.25,0.8,0>
     color rgb <.4,0.7,0>*/
    scale 0.7
    //turbulence 1
    
 }
#declare Pear_MappedPigment =  pigment{
        gradient <0,1,0> 
        pigment_map{
                [ 0.0 PearBodyPigment]
                [ 0.9 PearBodyPigment]
                [ 0.91 PearStemPigment]
                [ 1.0 PearStemPigment]
        }     
}
 
 // extra green tone <0.25,0.8,0.1> 

#declare Pear_Finish = finish {
	specular 0.1 //Max highlight intensity: 0 -> 1
    roughness 0.5 //surface roughness: 0.0005 -> 1             
};

#declare Pear_Material_ = material {
	texture {
		pigment { uv_mapping Pear_MappedPigment }
		//finish { Pear_Finish } 
		normal{
            bumps .7
            //wrinkles 1
        } 
		
	}
}
//==================================================
#declare LeftGrapeStems_MappedPigment = pigment { color rgb <.8,1,0.5> }

#declare LeftGrapeStems_Finish = finish {
	specular 0.1 //Max highlight intensity: 0 -> 1
      roughness 0.8 //surface roughness: 0.0005 -> 1             
};

#declare LeftGrapeStems_Material_ = material {
	texture {
		pigment { uv_mapping LeftGrapeStems_MappedPigment }
		finish { LeftGrapeStems_Finish }
	}
}
//==================================================
#declare LeftGrapes_MappedPigment = pigment { color rgb <.8,1,0.2> }   

#declare LeftGrapes_Finish = finish {
	specular 0.25 //Max highlight intensity: 0 -> 1
      roughness 0.3 //surface roughness: 0.0005 -> 1             
};

#declare LeftGrapes_Material_ = material {
	texture {
		pigment { uv_mapping LeftGrapes_MappedPigment }
		finish { LeftGrapes_Finish }
	}
}
//==================================================
#declare Apple_MappedPigment = pigment { color rgb <0.94,0.05,0.20> }

#declare Apple_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Apple_Material_ = material {
	texture {
		pigment { uv_mapping Apple_MappedPigment }
		finish { Apple_Finish }
	}
}
//==================================================
#declare RightGrapes_MappedPigment = pigment { color rgb <0.45,0.15,0.5> }

#declare RightGrapes_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare RightGrapes_Material_ = material {
	texture {
		pigment { uv_mapping RightGrapes_MappedPigment }
		finish { RightGrapes_Finish }
	}
}
//==================================================
#declare RightGrapeStems_MappedPigment = pigment { color rgb <0.46,0.81,0.63> }

#declare RightGrapeStems_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare RightGrapeStems_Material_ = material {
	texture {
		pigment { uv_mapping RightGrapeStems_MappedPigment }
		finish { RightGrapeStems_Finish }
	}
}
//==================================================
#declare AppleLeaf_MappedPigment = pigment { color rgb <0.5,0.85,0.15> }

#declare AppleLeaf_Finish = finish {
	specular 0.2 //Max highlight intensity: 0 -> 1
      roughness 0.4 //surface roughness: 0.0005 -> 1             
};

#declare AppleLeaf_Material_ = material {
	texture {
		pigment { uv_mapping AppleLeaf_MappedPigment }
		finish { AppleLeaf_Finish }
	}
}
//==================================================
#declare AppleStem_MappedPigment = pigment { color rgb <0.40,0.75,0.21> }

#declare AppleStem_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare AppleStem_Material_ = material {
	texture {
		pigment { uv_mapping AppleStem_MappedPigment }
		finish { AppleStem_Finish }
	}
}
//==================================================
#declare Banana1_MappedPigment = pigment { color rgb <0.7,0.65,0.00> }

#declare Banana1_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Banana1_Material_ = material {
	texture {
		pigment { uv_mapping Banana1_MappedPigment }
		finish { Banana1_Finish }
	}
}
//==================================================
#declare Banana2_MappedPigment = pigment { color rgb <0.5,0.75,0.02> }

#declare Banana2_Finish = finish {
	specular 0.5 //Max highlight intensity: 0 -> 1
      roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Banana2_Material_ = material {
	texture {
		pigment { uv_mapping Banana2_MappedPigment }
		finish { Banana2_Finish }
	}
}//==================================================
