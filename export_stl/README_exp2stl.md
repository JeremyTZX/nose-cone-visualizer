# STL Export Nose Cone Visualizer

## Purpose
This version allows the user to generate nose cone geometries and export them directly into `.stl` files. Doing so enables immediate integration of the generated nose cones into 3D modeling workflows without the need to model the geometries manually.

## How to Run
1. Download both `NoseConeVisualizer_exp2stl.m` and `nosecone_inputs_exp2stl.xlsx`, and ensure that they are both saved in the same folder. DO NOT change the Excel file's name.
2. Open `nosecone_inputs_exp2stl.xlsx` in Microsoft Excel. Feel free to delete the 2 existing example entries in the file.
3. Fill in the input table with the required design parameters. There is no limit to the number of entries that can be added.
4. Save and close `nosecone_inputs_exp2stl.xlsx`.
5. Open `NoseConeVisualizer_exp2stl.m` in MATLAB and run the script.
6. The `.stl` files will be saved to the MATLAB working directory as defined in the input table.

## Input Table Variable References
|Variable Name|Units|Description|
|:---:|:---:|:---|
|config|N/A|Configuration name|
|D_Base|m|Base diameter of nose cone|
|r_S|N/A|Slenderness Ratio of Nose Cone.Used to calculate the height of the nose cone.<br>Large values correspond to extremely slender nose cones.|
|nc_shape|N/A|Shape of nose cone. Enter the number that corresponds to the desired nose cone shape.<br>1 - Conical<br>2 - Parabolic<br>3 - Ogive|
|file name|N/A|Name of the downloaded `.stl` file. Remember to include ".stl" at the end of the file name|

## Supported Geometries
- Conical
- Parabolic
- Ogive
