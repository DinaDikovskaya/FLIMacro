# FLIMacro
ImageJ/FIJI macro for processing fluorescence lifetime measurements

## Description
This macro generates an ImageJ/FIJI text image file with mean fluorescence lifetimes determined by a 2-component exponential decay fitting, form SPCImage export files. 

The **tm_calc_2compFLIM.ijm** macro creates a new text image file containing mean fluorescence lifetimes (*tm*) in pixel positions, calculated as follows: 

***tm = (a1t1 + a2t2)/(a1 + a2)***, 

where *t1*, *t2*, *a1* and *a2* are the values of first (*t1*) and second (*t2*) fluorescence lifetime components and their corresponding amplitudes (*a1* and *a2*) at the same pixel position. These values are obtained from four files containing *t1*, *a1*, *t2* and *a2* matrices exported from one image in SPCImage software (Becker&Hickl GmbH) after fluorescence lifetime in this image has been calculated using 2-component exponential decay model.

## Requirements:
A folder with SPCImage export files. For each measurement, four files containing values of *t1*, *a1*, *t2* and *a2*, exported from the same image in SPCImage software (Becker&Hickl GmbH) after calculating fluorescence lifetime using 2-component model, are required. Export files from multiple measurements can be processed at once, if they are placed in the same folder. Export files from the same measurement should have a common name followed by "\_t1.asc", "\_a1.asc", "\_t2.asc" and "\_a2.asc", respectively. 

ImageJ or FIJI. Macro was developed for versions 1.52q and 1.52p. Other versions not tested.

## Installation:
Download from this page (click on "Clone or download" button, choose "Downoad Zip"), and unzip the downloaded file.  Save **tm_calc_2compFLIM.ijm** file into the ImageJ or FIJI "plugins" folder, or into a desired subfolder within it (such as “Scripts”). To see “plugins” folder for FIJI on Mac, double-click on the FIJI app icon and select "Show Package Contents". 
Restart ImageJ/FIJI. The **tm calc 2compFLIM** item will appear on the list in the Plugings menu, or within its selected submenu.

## Usage: 
Run the macro by clicking on **tm calc 2compFLIM** item in the Plugins menu. It will open the file browser window, prompting to select the folder with the SPCImage export files. Navigate to that folder and click "Select". The resulting file(s) with mean fluorescence lifetime values created by the macro for each measurement, with the name(s) ending with "\_tm.txt", will be added to the same folder.
