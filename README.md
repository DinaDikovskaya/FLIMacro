# FLIMacro
ImageJ/FIJI macro for processing fluorescence lifetime measurements

## Description
This macro generates an ImageJ/FIJI text image file containing mean fluorescence lifetimes determined by a 2-component exponential decay fitting, from SPCImage export files. 

The **tm_2cFLIM.ijm** macro creates a new text image file containing mean fluorescence lifetimes (*tm*) in pixel positions, calculated as follows: 

***tm = (a1t1 + a2t2)/(a1 + a2)***, 

where *t1*, *t2*, *a1* and *a2* are the values of the first (*t1*) and the second (*t2*) fluorescence lifetime components and their corresponding amplitudes (*a1* and *a2*) at the same pixel position. These values are obtained from four ASC files that need to be exported from one image in the SPCImage software (Becker&Hickl GmbH) after the fluorescence lifetime in this image has been calculated using a 2-component exponential decay model.

## Requirements:
A folder with SPCImage export files. For each measurement, the four files containing values of *t1*, *a1*, *t2* and *a2*, exported from the same image in the SPCImage software (Becker&Hickl GmbH) after calculating the fluorescence lifetime using a 2-component model, are required. Export files from multiple measurements can be processed at once, if they are placed in the same folder. The export files from the same measurement should have a common name followed by "\_t1.asc", "\_a1.asc", "\_t2.asc" and "\_a2.asc", respectively. 

ImageJ or FIJI. This macro was developed for versions 1.52q and 1.52p. Other versions not tested.

## Installation:
Download FLIMacro content from this page (click on "Clone or download" button, choose "Download Zip"), and unzip the downloaded file.  Save **tm_2cFLIM.ijm** file into the ImageJ or FIJI "plugins" folder, or into a desired subfolder within it (such as “Scripts”). To see the “plugins” folder for FIJI on Mac, double-click on the FIJI app icon and select "Show Package Contents". 
Restart ImageJ/FIJI. The **tm 2cFLIM** item will appear on the list in the Plugins menu, or within its selected submenu.

## Usage: 
Run the macro by clicking on the **tm 2cFLIM** item in the Plugins menu. It will open the file browser window, prompting to select the folder with the SPCImage export files. Navigate to that folder and click "Select". The resulting file(s) with mean fluorescence lifetime values created by the macro for each measurement, with the name(s) ending with "\_tm.txt", will be added to the same folder.
