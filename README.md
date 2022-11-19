
# LabSolution

![Laboratory Solution Calculator package](https://user-images.githubusercontent.com/68757694/202851633-98d25011-2dae-4ff0-8bf2-676bbc2138af.png)
## Description
This package helps laboratory personnel and researchers calculate molarity, normality, and the quantity of solute required to produce laboratory solutions.


## Author
Pejman Morovat

## Installation
- First Install devtools from CRAN

  install.packages("devtools")

- Then Install LabSolution by devtools package

  devtools::install_github("pejmanmorovat/Labsolution-cal-R-pkg")

- Now use it
  
  library(LabSolution)

- Alternatively, you can install LabSoultion using remotes package (CRAN)

  install.packages("remotes")

  remotes::install_github("pejmanmorovat/Labsolution-cal-R-pkg")

- Now use it

  library(LabSolution)
## Functions:
## 1- molarity {LabSolution}	

- Description: 

An amount of solute in one unit of a solution is known as the molar concentration. The unit of measurement is mol/L, mol/dm3, or mol/m3. In molar concentration, also known as molarity, the unit M refers to the molar.

- Usage: 

molarity (p,  d,  fw)

- Arguments:

p --> 	
Purity of solution. Percentage purity of a substance can be calculated by dividing the mass of the pure chemical by the total mass of the sample, and then multiplying this number by 100

d -->	
Density of solution. To determine the solution's density, weigh a precisely measured volume of your solution, and divide the mass of solution by the volume of solution. You must measure the volume of solution to obtain the density

fw -->
Formula weight (Molecular weight or molar mass) of the solute. If the mass of the unknown solute is known, then its molar mass can be calculated using the formula: Molar mass of solute = mass of solute/number of moles of solute

- Value:

10 * p (the percentage purity) * d (density of solution(g/cm3)) / fw (Molar mass(g/mol))

- Example:

What is the molarity of concentrated sulfuric acid if its purity is 96 percent and its density is 1.84 grams per liter? 
(The molecular weight of HSO4 is 97.064 g/mol.)

molarity(96,1.84,97.064)

 18.1983 mol/L
 
 

## 2- mgrams {LabSolution}

- Description:

Determination of the amount of solute in grams for preparing the solution when the unit of solution concentration is the molarity

- Usage:

mgrams (V, molarity, fw)

- Arguments:

V -->
Volume of solution (ml)

molarity -->	
moles of solute / liters of solution (mol/L).

fw -->
Formula weight or molar mass of the solute

- Value:

v * molarity * fw / 1000

- Example:

To make 250 ml of an aqueous solution with [NaCl] = 0.8 M. What mass of the solute would we need to make this solution? (Molecular weight of sodium chloride= 58.44 g/mol)

mgrams(250,0.8,58.44)

11.688 g

## 3- normality {LabSolution}

- Description:

Normality is the number of equivalents per liter of solution.

- Usage:

normality (p, d, eqval)

- Arguments:

p -->
Purity of solution. Percentage purity of a substance can be calculated by dividing the mass of the pure chemical by the total mass of the sample, and then multiplying this number by 100

d -->
Density of solution. To determine the solution's density, weigh a precisely measured volume of your solution, and divide the mass of solution by the volume of solution. You must measure the volume of solution to obtain the density

eqval -->	
Equivalent: In a chemical reaction, an equivalent is the amount of a substance that reacts with (or is equivalent to) an arbitrary amount (typically one mole) of another substance

- Value:

10 * p * d / eqval

- Example:

What is the normality of a 96 per cent solution of H2SO4 of specific gravity 1.84 g/mL?

normality(96,1.84,49.039)

36.02031 eq/L

## 4- eqval {LabSolution}

- Description:

Equivalent: In a chemical reaction, an equivalent is the amount of a substance that reacts with (or is equivalent to) an arbitrary amount (typically one mole) of another substance

- Usage:

eqval (fw, n)

- Arguments:

fw -->	
Formula weight (Molecular weight or molar mass) of the solute

n -->	
The number of equivalents that changes by ionization

- Value:

fw / n

- Example:

What is the gram equivalent weight of phosphoric acid, H3PO4?(fw= molecular weight in g/mol, n= number of equivalents)

eqval(127,3)

42.33333 g/eq

## 5- normality2 {LabSolution}

- Description:

It's another function for the determination of the normality of the solution.

- Usage:

normality2 (molarity, n)

- Arguments:

molarity -->	
Molarity of solution (mol/L). moles of solute/liters of solution

n -->
The number of equivalents that changes by ionization

- Value:

molarity * n

- Example:

What is the normality of Sulfuric Acid?(molarity of H2SO4 96 percent= 18.01)

normality2(18.01,2)

36.02 eq/L

## 6- ngrams {LabSolution}

- Description:

Determination of the amount of solute in grams for preparing the solution when the unit of solution concentration is normality.

- Usage:

ngrams (v, normality, eqval)

- Arguments:

v -->	
Volume of solution (ml)

normality -->	
Normality of solution. Number of gram equivalents/volume of solution in liters (eq/L)

eqval -->
Equivalent: In a chemical reaction, an equivalent is the amount of a substance that reacts with (or is equivalent to) an arbitrary amount (typically one mole) of another substance

n -->
The number of equivalents that changes by ionization

- Value:

v * normality * eqval / 1000

- Example:

To make 150 ml of an aqueous solution with [NaCl] = 10 N. What mass of the solute would we need to make this solution?

ngrams(150,10,1)

1.5 g 

## 7- vol {LabSolution}


- Description:

Using the following equation, you can figure out the concentration or volume of the concentrated or diluted solution

- Usage:

vol (V, molarity, m)

- Arguments:

V -->	
is the volume of the dilute solution

molarity -->
is the concentration in molarity of the dilute solution (after more solvent has been added)

m -->
is the concentration in molarity (mol/L) of the concentrated solution

- Value:

V * molarity / m

- Example:

Prepare 100 mL of 1.0 M hydrochloric acid from concentrated (12.1 M) hydrochloric acid.

vol(100,1,12)

8.333333
## License

  [GNU GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
## 🚀 About Me
I am Pejman Morovat, a biotechnologist who devotes most of his time to research in bioinformatics. Having the opportunity to work in a lab and analyze data and meta-data is very rewarding for me. In my field, I am constantly putting new ideas to use, and I enjoy being creative during my research.

I developed this R package to make it easier to calculate laboratory solutions production for my thesis in the laboratory at Babol university of medical science. 
(Cellular and Molecular Biology Research Center, Health Research Institute, Babol University of Medical Science, Babol, Iran)

## Features


- [Google Scholar](https://scholar.google.com/citations?user=ewB4cZIAAAAJ&hl=en)

- [Researchgate](https://www.researchgate.net/profile/Pejman-Morovat)

- [LinkedIn](https://www.linkedin.com/in/pejman-morovat)

- [Twitter](https://twitter.com/pejman_morovat)

