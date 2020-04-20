Bouncing Ball Contact Parameter Estimation

This submission contains a set of models created with Simulink, Simscape Multibody, Image Processing Toolbox, and Computer Vision Toolbox.

---------------------------------------------------------------------------------------------------------------------------------------------------

ABOUT THE MODELS:
These models show a workflow to find the optimal contact parameters that can simulate the real behavior of bouncing and colliding ball. Steps below describe the workflow:
1. Recording the trajectory of the ball
2. Post-processing the ball trajectory
3. Build a physical model using Simscape Multibody
4. Estimate the optimal contact parameters to match the real trajectory


# Models

## ballTracking
Contains ball trajectory tracking model

## interPolation
Contains MATLAB trajectory data interpolation code 

##ballDropParaEstimation
Contains a real physical model to estimate the contact parameters

##ballWallCollision
Contains ball collision model

PRODUCT REQUIREMENTS:

The models use the following MathWorks products, all from R2019b release:
1)MATLAB
2)Simulink
3)Simscape Multibody
4)Image Processing Toolbox
5)Computer Vision Toolbox

---------------------------------------------------------------------------------------------------------------------------------------------------

Copyright 2020 The MathWorks, Inc.