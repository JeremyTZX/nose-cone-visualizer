# MATLAB-based Visualizer for Rocket Nose Cone Geometry

A MATLAB-based tool for visualizing and exploring parametric rocket nose cone geometries.
This project includes multiple scripts in separate folders to support different modes of usage

## Overview
This project provides a simple framework for defining geometric parameters and visualizing the resulting aerodynamic shapes in 3D. It is intended for exploratory, educational, and early-stage design use. Each version provides a different approach to defining or analyzing nose cone geometries.

## Scripts / Versions
- **Baseline:**
Baseline version with geometric parameters defined directly in the code for reproducible runs.

- **Interactive:**
An interactive version that prompts the user for input parameters at runtime.

- **Batch-run:**
A batch processing version that reads from an external spreadsheet to generate multiple nose cone geometries simultaneously for side-by-side comparison.

- **STL Export:**
An extension of the batch framework that processes multiple geometries from a spreadsheet and automatically exports them into ready-to-use `.stl` files for 3D modeling and printing.

## Features
- Parametric definition of nose cone geometries
- 3D visualization of nose cones
- Easily adjustable parameters for rapid exploration (either via code or interactive input)
- Run trade studies and side-by-side shape comparisons by loading multiple design profiles simultaneously from an external spreadsheet (Batch-run and STL Export versions only)
- Automatically generate and save production-ready `.stl` files for immediate use in 3D printing slicing software or CAD modeling environments (STL Export version only)

## Supported Nose Cone Geometries
- Conical
- Parabolic
- Ogive

## Motivation
This project was developed primarily to support my rocket club and also as a personal exercise in applying MATLAB to a real-world-inspired problem. While simple, it provided an opportunity to refresh and practice 3D plotting, meshgrid usage, and parametric visualization. The project allows users to explore how nose cone geometries are defined and visualized in MATLAB, linking theoretical geometric concepts with visual intuition. Although mainly intended for my own use, it can be a helpful tool for anyone interested in experimenting with rocket nose cone shapes.

## How to Run
Each version of the visualizer is located in its own folder.
Open the folder corresponding to the version you want to run and follow the instructions in that folder’s README.

## License
This project is licensed under the MIT License.

