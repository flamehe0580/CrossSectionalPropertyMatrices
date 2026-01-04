# Cross-Sectional Property Matrices

This project provides a Mathematica package for generating the cross-sectional property matrices **m₀** (mass matrix) and **k₀** (stiffness matrix) for beams with complex cross-sections.

**`CrossSectionalPropertyMatrices.m`**  
A Mathematica package containing fundamental function libraries for generating the cross-sectional property matrices **m₀** and **k₀**.

**`main.nb`**  
A test notebook that uses the `CrossSectionalPropertyMatrices.m` package. It demonstrates two methods for importing triangular mesh data files, supporting both **\*.xlsx** and **\*.inp** formats.

**Key Features**  
- The function `showMesh` (defined in `CrossSectionalPropertyMatrices.m`) provides mesh visualization for imported data.  
- The function `mk0[E0, v, ρ, gauss, gcoord, gnum]` returns:
  - The cross-sectional stiffness matrix **k₀**,
  - The cross-sectional mass matrix **m₀**,
  - The cross-sectional properties related to unit inertial forces.

## Example Files

- **`T9.geo`** – An example Gmsh script file for generating a mesh in `*.inp` format.  
- **`C-shaped-mesh.xlsx`** – An example mesh file containing two sheets:
    - **Sheet 1**: Node coordinates
    - **Sheet 2**: Element connectivity
