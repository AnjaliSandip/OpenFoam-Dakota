Vortex Shedding (2D, Transient)

This is a common benchmark problem in fluid-structure interaction problems [1]. 

 - OpenFOAM solver: icoFOAM
 - OpenFOAM files courtesy WolffDynamics 
   http://www.wolfdynamics.com/tutorials.html?id=126
 - Boundary conditions: Fixed mean velocity at the cylinder inlet, 1 m/s; for more details on boundary conditions, refer to slide 13 of 'OpenFOAM Vortex Shedding Case Description' file
 - Data analysis: Centered parameter study
   https://dakota.sandia.gov/sites/default/files/docs/6.10/html-ref/method-centered_parameter_study.html
 - Input parameter: Reynold's number (by varying the kinematic viscosity) -- between 0 and 200. 
 - Output parameter: Drag coefficient -- final timestep
 - To run the OpenFoam case, in the terminal
 - The results from this study were in good agreement (max. discrepancy - 5%) with literature data [2 - 13].

References:
[1] Turek, S., & Schäfer, M. (1996). Recent benchmark computations of laminar flow around a cylinder.
[2] D. Tritton.  Experiments on the flow past a circular cylinder at low Reynolds numbers.  Journal of Fluid Mechanics, 6:547-567, 1959.
[3] M. Cuntanceauand R. Bouard.  Experimental determination of the main features of the viscous flow in the wake of a circular cylinder in uniform translation.  Part 1.  Steady flow.  Journal of Fluid Mechanics, 79:257-272, 1973.
[4] D. Ruselland Z. Wang.  A cartesiangrid method for modeling multiple moving objects in 2D incompressible viscous flow.  Journal of Computational Physics, 191:177-205, 2003.
[5] D. Calhoun and Z. Wang. A cartesiangrid method for solving the two-dimensional streamfunction-vorticityequations in irregular regions.  Journal of Computational Physics. 176:231-275, 2002.
[6] T. Ye, R. Mittal, H. Udaykumar, and W. Shyy.  An accurate cartesiangrid method for viscous incompressible flows with complex immersed boundaries.  Journal of Computational Physics, 156:209-240, 1999.
[7] B. Fornberg.  A numerical study of steady viscous flow past a circular cylinder.  Journal of Fluid Mechanics, 98:819-855, 1980.[7]  J. Guerrero.  Numerical simulation of the unsteady aerodynamics of flapping flight.  PhD Thesis, University of Genoa, 2009
[8] D. Ruselland Z. Wang.  A cartesiangrid method for modeling multiple moving objects in 2D incompressible viscous flow.  Journal of Computational Physics, 191:177-205, 2003.
[9] D. Calhoun and Z. Wang. A cartesiangrid method for solving the two-dimensional streamfunction-vorticityequations in irregular regions.  Journal of Computational Physics. 176:231-275, 2002.
[10] M. Braza, P. Chassaing, and H. Hinh. Numerical study and physical analysis of the pressure and velocity fields in the near wake of a circular cylinder.  JournalofFluid Mechanics, 165:79-130, 1986.
[11] J. Choi, R. Oberoi, J. Edwards, an J. Rosati.  An immersed boundary method for complex incompressible flows.  Journal of Computational Physics, 224:757-784, 2007.
[12] C. Liu, X. Zheng, and C. Sung. Preconditioned multigridmethods for unsteady incompressible flows.  Journal of Computational Physics, 139:33-57, 1998.
[13] J. Guerrero.  Numerical Simulation of the unsteady aerodynamics of flapping flight.  PhD Thesis, University of Genoa, 2009.

