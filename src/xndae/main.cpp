//=========================================================================
//	  Copyright (c) 2015 SonicGLvl
//
//    This file is part of SonicGLvl, a community-created free level editor 
//    for the PC version of Sonic Generations.
//
//    SonicGLvl is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    SonicGLvl is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
//    
//
//    Read AUTHORS.txt, LICENSE.txt and COPYRIGHT.txt for more details.
//=========================================================================

#include "LibGens.h"
#include "S06XnFile.h"

int main(int argc, char** argv) {
    if (argc < 2) {
        printf("Usage: xndae mesh.xno [output.dae] [animation.xnm]...\n");
#if defined(WIN32) || defined(_WIN32)
		getchar();
#endif
        return 1;
    }
	LibGens::initialize();
	LibGens::Error::setLogging(true);
	
	string source_model="";
    vector<string> animations;
    string output_file="";
	size_t pos=0;

	for (int i=1; i<argc; i++) {
		string parameter = argv[i];
		std::transform(parameter.begin(), parameter.end(), parameter.begin(), ::tolower);

        if ((parameter.find(".xno") != string::npos) && (!source_model.size())) {
			source_model = ToString(argv[i]);
		}

		if ((parameter.find(".dae") != string::npos) && (!output_file.size())) {
			output_file = ToString(argv[i]);
		}

        if ((parameter.find(".xnm") != string::npos)) {
            animations.push_back(ToString(argv[i]));
        }
	}

	if (source_model.size() && !output_file.size()) {
		output_file = source_model + ".dae";
	}
	
    LibGens::SonicXNFile *model = new LibGens::SonicXNFile(source_model, LibGens::MODE_AUTODETECT);
	model->saveDAE(output_file);

    LibGens::SonicXNFile *animation = NULL;

    for(std::vector<string>::iterator it = animations.begin(); it != animations.end(); ++it) {
        /* std::cout << *it; ... */
        animation = new LibGens::SonicXNFile(*it, LibGens::MODE_AUTODETECT);
        LibGens::SonicXNMotion* motion = animation->getMotion();

        if (motion) {
            model->setMotion(motion);
            model->saveDAE(*it + ".dae", true);
        }

        delete animation;
    }

    delete model;
    return 0;
}
