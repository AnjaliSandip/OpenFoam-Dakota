Hagen - Poiseuille equation (2D, Transient)

This equation describes the relationship between pressure, flow rate and fluidic resistance for fluid flowing through circular tubes.  
For more details on this equation, please refer to  -- Gooch J.W. (2011) Hagen-Poiseuille Equation. In: Gooch J.W. (eds) Encyclopedic Dictionary of Polymers. Springer, New York, NY.

 - OpenFOAM solver: icoFOAM
 - OpenFOAM files courtesy WolffDynamics
   http://www.wolfdynamics.com/tutorials.html?id=126
 - Boundary conditions: Pressure drop fixed at the inlet, for more details on boundary conditions, refer to slides 17 - 20 of 'OpenFOAM Hagen-Poiseuille Case Description' file
 - Data analysis: Latin hypercube sampling
   https://dakota.sandia.gov/sites/default/files/docs/6.10/html-ref/method-sampling-sample_type-lhs.html
 - Input parameters: Length (10 +/- 0.04)m and radius (0.5 +/- 0.02)m
 - Output parameters: Max. volumetric flow rate at the cylinder outlet (cubic meters/second) = Max. velocity at the cylinder outlet (m/s) x Cross sectional area (square meters)
 - Numerical velocity profile at cylinder outlet (within the tolerance specified above for length and radius at the final timestep) agreed well with the analytical results for the same.
   Refer to the 'Numerical vs Analytical Velocity Profile at Cylinder Outlet' folder for more details.
 - The probability density function for max. volumetric flow rate at the cylinder outlet (OpenFOAM results) was plotted using Matlab. A normal fit was applied; mean = 1.28045, standard deviation = 0.16935.
