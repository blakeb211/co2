# Problem: Calculate and make physical 
# sense of the available experimental CO2 data

# Co2 XPS Experimental Data 
# CITATION: from Surface Science Spectra 26, 014022 (2019); doi: 10.1116/1.5053761

# all units in eV
O_1s <- 537.25
C_1s <- 293.65
One_PI_g <- 9.6
One_PI_u <- 13.9
Three_SIGMA_u <- 14.1
Four_SIGMA_g <- 15.2
O_KLL_Auger <- 494.1
C_KLL_Auger <- 247.2

# calculate using Koopman's Theorem aka deltaSCF method
# @NOTE: electron binding energy is higher in gas phase than solid phase

#step 1 optimize co2 geometry
#step 2 identify the orbitals (NBO method)

#BE = -OrbitalEngergy + RelaxationEnergy + DeltaC
# RelaxationEnergy = 
# 
# Koopmans theorem: BE = -E 
# ie. BE equals the negative of the orbital energy
# DeltaSCF = -E + R
#          = TotEnergyIonWithCoreHole - TotEnergyNeutral
# For DeltaSCF both calcs are done at neutral species' optimized geometery
# To calculate DeltaSCF, must form core hole at specific place
#
# Calcualtion #1 Optimize CO2 Geometry @ 6‐311G(d,p)
# gives TotalEnergy, OptimizedGeometry, OrbitalsOfInterest

# Calculation #2 swap HOMO and orbital of interest, calculate energy with a charge state of +1