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

tot_electrons <- 8*2+6
# OPTIMIZED RESULTS 6311++(d,p) 
OC_bond_length <- 1.1358
calculated_dipole <- 0.0

# From the population analysis,
# MO #1 appears to be the O1s orbital
# MO #3 appears to be the C1s

# FIRST APPROXIMATION TO THE BINDING ENERGY IS
# KOOPMANS THEOREM 
mol <- 6.02214076 * 10^23
eV_per_kcal <- 2.612569782383e+22
# O1s
print("O1S Calculated vs Experiment")
calculated_O1s_be_kcal <- 20.6482 * 627.51 / mol
calculated_O1s_be_eV <- calculated_O1s_be_kcal * eV_per_kcal
print(calculated_O1s_be_eV)
calculated_minus_expt <- calculated_O1s_be_eV - O_1s
print(calculated_minus_expt / O_1s * 100) 
# Result: calculated is 4.6% higher than experiment

# C1s
print("O1S Calculated vs Experiment")
calculated_C1s_be_kcal <- 11.4532 * 627.51 / mol
calculated_C1s_be_eV <- calculated_C1s_be_kcal * eV_per_kcal
print(calculated_C1s_be_eV)
calculated_minus_expt <- calculated_C1s_be_eV - C_1s
print(calculated_minus_expt / C_1s * 100) 
# Result: calculated is 6.1% higher than experiment

# KOOPMANS THEOREM APPEARS TO HOLD PRETTY WELL.
# I THINK THAT THE FIRST ORDER CORRECTION TO IT, 
# THE RELAXATION ENERGY, WOULD BE NEGATIVE AND COULD
# POSSIBLY BRING THE RESULT EVEN CLOSER TO THE EXPERIMENT.

