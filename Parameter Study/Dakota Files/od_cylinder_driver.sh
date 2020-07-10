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
## Pre-processing Phase -- Transfer new set of values for the chosen input 
## parameters from Dakota to OpenFoam (OF)
##
##
###############################################################################

dprepro $params sim.template transportProperties



############################################################################### 
##
## Execution Phase -- Run your simulation
##
###############################################################################

#Call the bash script that runs the OpenFOAM simulation
bash od_cylinder_driver_1.sh


############################################################################### 
##
## Post-processing Phase -- Extract (or calculate) quantities of interest
##  from your simulation's output and write them to a properly-formatted
##  Dakota results file.
##
###############################################################################

#Extract the drag coefficient from OpenFOAM output and transfer it to Dakota results file, results.out
tail -n 1 postProcessing/forceCoeffs_object/0/forceCoeffs.dat | awk '{ print $3 }' > $results




