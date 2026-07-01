# Batch Nose Cone Visualizer

## Purpose
This version allows the user to compare multiple nose cone geometries simultaneously by reading design parameters from a provided editable Excel spreadsheet (`nosecone_inputs_batch.xlsx`). It is ideal for batch processing, trade studies, and side-by-side shape comparisons.

## How to Run
1. Download both `NoseConeVisualizer_batch.m` and `nosecone_inputs_batch.xlsx`, and ensure that they are both saved in the same folder. DO NOT change the Excel file's file name.
2. Open `nosecone_inputs_batch.xlsx` in Microsoft Excel. Feel free to delete the 4 existing example entries in the file.
3. Fill in the input table with the required design parameters. There is no limit to the number of entries that can be added.
4. Save and close `nosecone_inputs-batch.xlsx`.
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
