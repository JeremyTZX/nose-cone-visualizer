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
|r_S|N/A|Slenderness Ratio of Nose Cone.Used to calculate the height of the nose cone.<br>Large values correspond to extremely slender nose cones|
|nc_shape|N/A|Shape of nose cone. Enter the number that corresponds to the desired nose cone shape.<br>1 - Conical<br>2 - Parabolic<br>3 - Ogive|
|file name|N/A|Name of the downloaded `.stl` file. Remember to include ".stl" at the end of the file name|

## Supported Geometries
- Conical
- Parabolic
- Ogive

## Example Output
#### Output in the command window: <br>
<img width="450" height="150" alt="image" src="https://github.com/user-attachments/assets/e1cc7289-ac98-4813-8251-042b42e64c78" /><br>
#### Output in the figures window: <br>
_~Tip: MATLAB will generate all geometries within a single window using a tabbed interface. Click through the tabs at the top of the figure window to view each configuration's plot._<br>
<img width="450" height="370" alt="image" src="https://github.com/user-attachments/assets/137941b6-75f1-4879-af56-d185dadaacb7" /> <br>
#### Output in the working directory: <br>
<img width="300" height="311" alt="image" src="https://github.com/user-attachments/assets/a728848b-17ce-44b7-ac8d-fabe4ad4dc0f" /><br>

## Notes
Slenderness ratio is restricted to 1-20. This is to ensure that meaningful and realistic nose cone geometries are achieved.
