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

#declare PlumPurple = <0.45,0.027,0.35>;
#declare PlumRed = <0.78,0,0.21>;
#declare PlumTurbulence = .8;   // Note the range of figures added in plums 1-6 so it's never >1
#declare PlumPatternScale = .5; 

#declare Plum1Purple = PlumPurple + <0.03,0,-0.03>;
#declare Plum1Red = PlumRed + <0.05,0,0>;

#declare PlumSpecular = 0.3;
#declare PlumRoughness = 0.1;

#declare Plum1_MappedPigment = pigment {
        gradient x 
        color_map{
                [0.0 color rgb Plum1Purple]
                [0.1 color rgb Plum1Purple]
                [0.5 color rgb Plum1Red]
                [0.9 color rgb Plum1Purple]
                [1.0 color rgb Plum1Purple]
        }
        scale PlumPatternScale
        turbulence PlumTurbulence
}

#declare Plum1_Finish = finish {
	specular PlumSpecular
      roughness PlumRoughness            
};

#declare Plum1_Material_ = material {
	texture {
		pigment { uv_mapping Plum1_MappedPigment }
		finish { Plum1_Finish }
	}
}
//================================================== 
#declare Plum2Purple = PlumPurple + <-0.05,0,0.02>;
#declare Plum2Red = PlumRed + <-0.05,0,0>;

#declare Plum2_MappedPigment = pigment {
        gradient x 
        color_map{
                [0.0 color rgb Plum2Purple]
                [0.1 color rgb Plum2Purple]
                [0.5 color rgb Plum2Red]
                [0.9 color rgb Plum2Purple]
                [1.0 color rgb Plum2Purple]
        }
        scale PlumPatternScale
        turbulence PlumTurbulence
}

#declare Plum2_Finish = finish {
	specular PlumSpecular
      roughness PlumRoughness           
};

#declare Plum2_Material_ = material {
	texture {
		pigment { uv_mapping Plum2_MappedPigment }
		finish { Plum2_Finish }
	}
}
//================================================== 
#declare Plum3Purple = PlumPurple + <0.07,0,0.01>;
#declare Plum3Red = PlumRed + <0.09,0,0>;

#declare Plum3_MappedPigment = pigment {
        gradient x 
        color_map{
                [0.0 color rgb Plum3Purple]
                [0.1 color rgb Plum3Purple]
                [0.5 color rgb Plum3Red]
                [0.9 color rgb Plum3Purple]
                [1.0 color rgb Plum3Purple]
        }
        scale PlumPatternScale
        turbulence PlumTurbulence
}

#declare Plum3_Finish = finish {
	specular PlumSpecular
      roughness PlumRoughness            
};

#declare Plum3_Material_ = material {
	texture {
		pigment { uv_mapping Plum3_MappedPigment }
		finish { Plum3_Finish }
	}
}
//================================================== 
#declare Plum4Purple = PlumPurple + <0.03,0,-0.03>;
#declare Plum4Red = PlumRed + <0.05,0,0>;

#declare Plum4_MappedPigment = pigment {
        gradient x 
        color_map{
                [0.0 color rgb Plum4Purple]
                [0.1 color rgb Plum4Purple]
                [0.5 color rgb Plum4Red]
                [0.9 color rgb Plum4Purple]
                [1.0 color rgb Plum4Purple]
        }
        scale PlumPatternScale
        turbulence PlumTurbulence
}

#declare Plum4_Finish = finish {
	specular PlumSpecular
      roughness PlumRoughness             
};

#declare Plum4_Material_ = material {
	texture {
		pigment { uv_mapping Plum4_MappedPigment }
		finish { Plum4_Finish }
	}
}
//================================================== 
#declare Plum5Purple = PlumPurple + <0.03,0,-0.03>;
#declare Plum5Red = PlumRed + <0.05,0,0>;

#declare Plum5_MappedPigment = pigment {
        gradient x 
        color_map{
                [0.0 color rgb Plum5Purple]
                [0.1 color rgb Plum5Purple]
                [0.5 color rgb Plum5Red]
                [0.9 color rgb Plum5Purple]
                [1.0 color rgb Plum5Purple]
        }
        scale PlumPatternScale
        turbulence PlumTurbulence
}

#declare Plum5_Finish = finish {
	specular PlumSpecular
      roughness PlumRoughness             
};

#declare Plum5_Material_ = material {
	texture {
		pigment { uv_mapping Plum5_MappedPigment }
		finish { Plum5_Finish }
	}
}
//================================================== 
#declare Plum6Purple = PlumPurple + <0.03,0,-0.03>;
#declare Plum6Red = PlumRed + <0.05,0,0>;

#declare Plum6_MappedPigment = pigment {
        gradient x 
        color_map{
                [0.0 color rgb Plum6Purple]
                [0.1 color rgb Plum6Purple]
                [0.5 color rgb Plum6Red]
                [0.9 color rgb Plum6Purple]
                [1.0 color rgb Plum6Purple]
        }
        scale PlumPatternScale
        turbulence PlumTurbulence
}

#declare Plum6_Finish = finish {
	specular PlumSpecular
      roughness PlumRoughness            
};

#declare Plum6_Material_ = material {
	texture {
		pigment { uv_mapping Plum6_MappedPigment }
		finish { Plum6_Finish }
	}
}
//==================================================
#declare Orange_MappedPigment = pigment { color rgb <1,0.54,0>}

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
#declare OrangeStem_MappedPigment = pigment { color rgb <1,0.7,0> }

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

#declare PearYellow = <.886,.988,0.384>;
#declare PearWhite = <0.87,0.98,0.61>;
#declare PearGreen = <0.584,0.93,0.06>;

#declare PearBodyPigment = pigment {
    leopard
    color_map{
        [0.0 color rgb PearYellow]     //start/end color
        [0.4 color rgb PearGreen]                
        [1.0 color rgb PearYellow]     //start/end color
    }
    scale .07
    translate <0,1,0>
    turbulence 1                                                                   
    
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
 

#declare Pear_Finish = finish {
	specular 0.2 //Max highlight intensity: 0 -> 1
    roughness 0.1 //surface roughness: 0.0005 -> 1             
};

#declare Pear_Material_ = material {
	texture {
		pigment { uv_mapping Pear_MappedPigment }
		finish { Pear_Finish }
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
//I'm doing a Gala apple, or at least trying to
#declare AppleLightColor = <0.98, 0.807, 0.235>;
#declare AppleDarkColor = <0.98, 0.235, 0.235>;

#declare Apple_MappedPigment = pigment {
        gradient x
        pigment_map{
                [0.0 color rgb AppleLightColor]
                [0.3 color rgb AppleLightColor]
                [0.6 color rgb AppleDarkColor]
                [1.0 color rgb AppleLightColor]
        } 
}

#declare Apple_Finish = finish {
	specular 0.3 //Max highlight intensity: 0 -> 1
      roughness 0.01 //surface roughness: 0.0005 -> 1             
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
