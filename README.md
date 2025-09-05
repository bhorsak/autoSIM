## autoSIM: a Matlab-based fully automated workflow for semi-personalized physics-based OpenSim simulations.

This is a bundle of Matlab scripts and files that allow to run different *.osim models on a set of *.c3d files. It will help to handle all of the necessary files (*.xml, *.trc, *.mot, etc.) to run the simulations. Once set up, it is possible to iterate several trials in Matlab automatically. AutoSim was originally developed for the Joint Articulation Mechanics (JAM) workflow of C. Smith, but then was extended to also run other models. 

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You will need to have OpenSim 4.0 installed and the Matlab scripting environment using the API set up, see https://simtk-confluence.stanford.edu:8443/display/OpenSim/Scripting+with+Matlab 
- Code was tested with Matlab R2024a and WIN11 on Intel machines.
- For newer processors such as Intel Core Ultra the function <CpuLoadBasedPausing> seems not to work properly. However, this function is deprecated and not used in default mode.

## In Matlab you will need the following toolboxes :
- Image Processing Toolbox — Version 11.6+ (R2022b)  
- Parallel Computing Toolbox — Version 7.7+ (R2022b)  
- Phased Array System Toolbox — Version 4.8+ (R2022b)  
- Signal Processing Toolbox — Version 9.1+ (R2022b)  
- Statistics and Machine Learning Toolbox — Version 12.4+ (R2022b)  

## Using autoSIM

- To use this repo place it somewhere on your harddrive. To test the workflow you can use the example data provided in `.\_commonFiles\dataExamples`.
- Each model workflow has its own `start.m` file. In each file, there are some hardcoded settings which you will have to set the first time before running autoSIM, e.g. marker set definition. 
- The entire repo expects a Vicon Nexus database folder. To run autoSIM your folder at least needs to contain *.c3d files for the condition to analyze and a static file. All *.c3d files need to include the condition information within each filename, such as `walking` (e.g., 001_walking_file.c3d). You will also need the `enf.files` which hold the information of valid/invalid force plate hits and which foot hit which force plate. If you don't have such a file you may want to create it yourself. The `start.m` files assumes that all necessary *.c3d files are located in one single folder (e.g. of one subject). It finds all relevant *.c3d files, creates the input data (e.g. start and stop time, body side, etc.), creates the necessary *.trc and *.mot files, and the external loads file and runs the workflow for each file. Note that, when a *.c3d file holds two valid force plate contacts (e.g. left and right). Simulations are performed separately for each contact.
- In case you want to make use of the built-in personalization methods, such as the Torsion-Tool a `data.xml` for each session folder is needed. It contains in a standardized format information such as the tibio-femoral alignment angle in the frontal plane or tibial torsion. For detaisl please review the example file in `.\_commonFiles\dataExamples`.
- The repository also includes additional scripts such as `postprocessResults.m` which runs a set of post processing steps. For details see the header of each file. 

## Contributors

Thanks to the following people who supported this repository:

- [@BryceKillian](https://bitbucket.org/BKillen/)
- [@IlseJonkers](https://www.kuleuven.be/wieiswie/en/person/00015567)
- [@SamVanRossom](https://www.kuleuven.be/wieiswie/en/person/00093377)
- [@MarkSimonlehner](https://www.fhstp.ac.at/de/uber-uns/mitarbeiter-innen-a-z/simonlehner-mark)
- [@BernhardDumphart](https://www.fhstp.ac.at/de/uber-uns/mitarbeiter-innen-a-z/dumphart-bernhard)
- [@BernhardGuggenberger](bernhard.guggenberger2@fh-joanneum.at)
- [@HansKainz](hans.kainz@univie.ac.at)
- [@WilliKoller](willi.koller@univie.ac.az)

## Citation
Please cite the following reference(s) if you use autoSIM:

Horsak, B., Krondorfer, P., Unglaube, F., Slijepčević, D., Kranzl, A., 2025. Feasibility of fully automated and semi-personalized musculoskeletal simulations to process large-scale gait datasets, in: Gait & Posture, GAMMA Congress 2025 (26 – 29 March 2025, St Gallen Switzerland). pp. S18–S19. https://doi.org/10.1016/j.gaitpost.2025.01.059

@article{HORSAK2025S18,
title = {Feasibility of fully automated and semi-personalized musculoskeletal simulations to process large-scale gait datasets},
journal = {Gait & Posture},
volume = {117},
pages = {S18-S19},
year = {2025},
note = {GAMMA Congress 2025 (26 – 29 March 2025, St Gallen Switzerland)},
issn = {0966-6362},
doi = {https://doi.org/10.1016/j.gaitpost.2025.01.059},
url = {https://www.sciencedirect.com/science/article/pii/S0966636225000591},
author = {Brian Horsak and Philipp Krondorfer and Fabian Unglaube and Djordje Slijepčević and Andreas Kranzl}
}

## Contact
If you want to contact me you can reach me at <brian.horsak@fhstp.ac.at>.

## License
This project is released under the [MIT License]. Copyright (c) 2024 Brian Horsak Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 

## Third-Party Code and Licenses,
see (`.\_commonFiles\sharedFunctions\ThirdPartyFiles`) and included OpenSim models. 

This project also includes or depends on third-party components with their own licenses (e.g., BSD, MPL, CC-BY-NC). These components are clearly marked in the repository. Users of this project are responsible for ensuring compliance with the corresponding licenses when using or redistributing those parts. 
