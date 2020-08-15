 # copyright (c) 2019 ASandip
 #This program is free software: you can redistribute it and/or 
 # modify it under the terms of the GNU General Public License as 
 # published by the Free Software Foundation, either version 3 of the License, or
 # (at your option) any later version.
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 
 # You should have received a copy of the GNU General Public License
 # along with this program.  If not, see <https://www.gnu.org/licenses/>.


#!/bin/bash

# $1 and $2 are special variables in bash that contain the 1st and 2nd 
# command line arguments to the script, which are the names of the
# Dakota parameters and results files, respectively.

params=$1
results=$2

############################################################################### 
##
## Pre-processing Phase: Transfer new set of values for the chosen input 
## parameters from Dakota to OpenFoam (OF)
###############################################################################

#Chosen input parameters -- cylinder geometry (length and radius)
dprepro $params sim.template blockMeshDict

 

############################################################################### 
##
## Execution Phase: Run your simulation
##
###############################################################################

#call the bash script that runs the OpenFOAM simulation
bash od_HP_driver1.sh


############################################################################### 
##
## Post-processing Phase: Extract (or calculate) quantities of interest
##  from your simulation's output and write them to a properly-formatted
##  Dakota results file.
##
###############################################################################

#Extract the maximum velocity at the cylinder outlet from OpenFOAM simulation results and transfer it to Dakota results file, results.out
awk 'NR == 11 { print $2 }'  /postProcessing/sampleDict/20/s2_U.xy > $results




