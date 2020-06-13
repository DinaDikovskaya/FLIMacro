# FLIMacro
ImageJ/FIJI macro for processing fluorescence lifetime measurements

This macro generates an ImageJ/FIJI text image file with mean fluorescence lifetimes determined by 2-component exponential decay fitting, form SPCImage export files. 

SPCImage software (Becker&Hickl) calculates fluorescence lifetimes in each pixel of a fluorescence lifetime data file, and stores it in a proprietary file format. In order to extract data for further analysis, the matrices of fluorescence lifetimes and/or photon numbers in pixel positions is such files can be exported in ASC format (file with .asc extension). However, for the fluorescence lifetimes calculated using multi-component decay model within SPCImage, mean fluorescence lifetimes are not available for export. Instead, the matrices with values of the individual fluorescence lifetime components and of their respective amplitudes can be exported, and mean fluorescence lifetime in each pixel has to be calculated from these elements. 

The tm_calc_2compFLIM.ijm macro accesses the SPCImage export files with elements of 2-component analysis, and creates new images containing calculated mean fluorescence lifetimes in pixel positions. It requires all four export files  (with common name followed by "_t1.asc", "_t2.asc", "_a1.asc" and "_a2.asc") to be in the same folder. The resulting file, which will have the same name ending with "_tm.txt", will be added to the same folder. 

If the export files from multiple measurements are in the same folder, they will be processed all at once, and resulting files will be added to the same folder. 

To use, download the macro and save it into the ImageJ or FIJI "plugins" folder. For ImageJ, place it into "Scripts" subfolder inside the "plugings" folder. For FIJI on Mac, double-click on the FIJI app icon and select "Show Package Contents" to see the "plugins" folder. The macro could be placed directly inside this folder.  Restart ImageJ/FIJI. The "tm calc 2compFLIM" item will appear on the list in the Plugings menu, or within its Script submenu. Run the macro by clicking on it. It will open the file browser window. Navigate to the folder with SPCImage export file and click "Open". 
