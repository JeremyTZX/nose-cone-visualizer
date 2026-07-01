# Batch Nose Cone Visualizer

## Purpose
This version allows the user to compare multiple nose cone geometries simultaneously by reading design parameters from a provided editable Excel spreadsheet (`nosecone_inputs_batch.xlsx`). It is ideal for batch processing, trade studies, and side-by-side shape comparisons.

## How to Run
1. Download both `NoseConeVisualizer_batch.m` and `nosecone_inputs_batch.xlsx`, and ensure that they are both saved in the same folder. DO NOT change the Excel file's file name.
2. Open `nosecone_inputs_batch.xlsx` in Microsoft Excel. Feel free to delete the 4 existing example entries in the file.
3. Fill in the input table with the required design parameters. There is no limit to the number of entries that can be added.
4. Save and close `nosecone_inputs_batch.xlsx`.
5. Open `NoseConeVisualizer_batch.m` in MATLAB and run the script.

## Input Table Variable References
|Variable Name|Units|Description|
|:---:|:---:|:---|
|config|N/A|Configuration name|
|D_Base|m|Base diameter of nose cone|
|r_S|N/A|Slenderness Ratio of Nose Cone.Used to Calculate the height of nose cone.<br>Large values correspond to extremely slender nose cones.|
|nc_shape|N/A|Shape of nose cone. Enter the number that corresponds to the desired nose cone shape.<br>1 - Conical<br>2 - Parabolic<br>3 - Ogive|

## Supported Geometries
- Conical
- Parabolic
- Ogive

## Example Output
output in the command window:<br>
<img width="500" height="251" alt="image" src="https://github.com/user-attachments/assets/a31c4b95-d28c-4f6e-9307-324754dd9c6e" /><br>
output in the figure window:<br>
Tip: MATLAB will generate all geometries within a single window using a tabbed interface. Click through the tabs at the top of the figure window to view each configuration's plot.<br>
<img width="450" height="369" alt="image" src="https://github.com/user-attachments/assets/737a6329-6f60-4f35-b1e7-b53ee3ea27d8" />

## Notes
Slenderness ratio is restricted to 1-20. This is to ensure that meaningful and realistic nose cone geometries are achieved.


