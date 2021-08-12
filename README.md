# README #

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author: Ashraf Kadry
% purpose: A computational neural network model of Cortical and Subcortical
% motor areas controlling index and middle fingers before and after stroke.
% We explore the recovery dynamics between the CST and RST residual neurons
% after stroke in perspective of individuation and applied force resulted
% from the two pools of neurons.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Files:
======
The model should include the following files:
README.md       - This file.
MAIN.m          - Main program, combine the flow of initializing the model,
                  train it for normal state, apply stroke, simulate stroke
                  state, apply recovery and plot results.
                  <you should run this one>.
setParams.m     - Set model parameters and variables.
                  configuration parameters are constants and used for the 
                  model structure and training/simulating run boundaries.
                  variables are used for the model neurons' states and its
                  connecting weights.
SetStruct.m     - Set model structure based on the defined architecture.
trainModel.m    - Train the model, used for pre-stroke normal training and 
                  for post-stroke recovery training.
setStroke.m     - Apply stroke on the model by eleminiating neurons.
simulateModel.m - Simulate status of the model.
plotResults.m   - Plot results.
Pinit.save.mat  - The generated random data that we used in our research.
Pinit.mat       - Either use previously generated random data, or generate
                  new set and save to this file.
                  copy from Pinit.save.mat for example to see our results.

How to Run:
===========
Open MAIN.m in matlab from the working directory and RUN.
It prompts for the type of experemint:
> Insert force level [0..1, 1=100% (0 for new random weights, 100% force)]:

Select any number greater than 0 and smaller or equal to 1 to run the model
with previously saved data (e.g. 1 => 100% force, 0.5 => 50% force).
Select 0 to generate new data and run a new experiment with 100% force.

Contact:
========
Ashraf Kadry (ashraf.kadry@yahoo.com)
