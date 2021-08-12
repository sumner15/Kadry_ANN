# README #

author: Ashraf Kadry
purpose: A computational neural network model of Cortical and Subcortical
motor areas controlling index and middle fingers before and after stroke.
We explore the recovery dynamics between the CST and RST residual neurons
after stroke in perspective of individuation and applied force resulted
from the two pools of neurons.

# Structure

    │
    ├── README.md
    │
    ├── ANN_Dexterity.m     <-  Main program, combine the flow of initializing the model, train it for normal state, 
    │                           apply stroke, simulate stroke state, apply recovery and plot results.
    │
    ├── ANN_Dexterity.PDF   <-  Main program output (PDF readable)
    │
    ├── Pinit.mat           <-  The generated random data that we used in our research
    │
    ├── setStroke.m         <-  Applies stroke on the model by eleminiating neurons

# How to Run:
Open ANN_Dexterity.m in matlab from the working directory and RUN.

Matlab will prompt:
```CLI
>> Insert force level [0..1, 1=100% (0 for new random weights, 100% force)]:
```
Select any number greater than 0 and smaller or equal to 1 to run the model with previously saved data (e.g. 1 => 100% force, 0.5 => 50% force).
Select 0 to generate new data and run a new experiment with 100% force.

# Contact
1. Ashraf Kadry ([ashraf.kadry@yahoo.com](mailto:ashraf.kadry@yahoo.com))
2. Sumner Norman ([sumnern@caltech.edu](mailto:sumnern@caltech.edu))

