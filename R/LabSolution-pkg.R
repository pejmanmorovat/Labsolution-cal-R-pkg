options(digits = 5)
#' Molarity: Number of moles of solute per one liter of solutions (Solvent+Solute)
#' @description Molarity: An amount of solute in one unit of a solution is known as the molar concentration. The unit of measurement is mol/L, mol/dm3, or mol/m3. In molar concentration, also known as molarity, the unit M refers to the molar.
#' @export
#' @param p Purity of solution. Percentage purity of a substance can be calculated by dividing the mass of the pure chemical by the total mass of the sample, and then multiplying this number by 100
#' @param d Density of solution. To determine the solution's density, weigh a precisely measured volume of your solution, and divide the mass of solution by the volume of solution. You must measure the volume of solution to obtain the density
#' @param fw Formula weight (Molecular weight or molar mass) of the solute. If the mass of the unknown solute is known, then its molar mass can be calculated using the formula: Molar mass of solute = mass of solute/number of moles of solute
#' @details What is the molarity of concentrated sulfuric acid if its purity is 96 percent and its density is 1.84 grams per liter? The molecular weight of HSO4 is 97.064 g/mol.
#' @return 10 * p (the percentage purity) * d (density of solution(g/cm3)) / fw (Molar mass(g/mol))
#' @author Pejman Morovat <pejmanmorovat@yahoo.com>
#' @examples p=96
#' @examples d=1.84
#' @examples fw=97.064
#' @examples molarity(96,1.84,97.064)
molarity<-function(p,d,fw) {
  molarity<-10*p*d/fw
  print("molarity of solution (mol/L)")
  print(molarity)
}
#' Determination of the amount of solute in grams for preparing the solution  when the unit of solution concentration is the molarity
#' @description Determination of the amount of solute in grams for preparing the solution  when the unit of solution concentration is the molarity
#' @export
#' @param V Volume of solution (ml)
#' @param molarity moles of solute / liters of solution (mol/L).
#' @param fw Formula weight or molar mass of the solute
#' @details  To make 250 ml of an aqueous solution with [NaCl] = 0.8 M. What mass of the solute would we need to make this solution? the molecular weight of sodium chloride= 58.44 g/mol
#' @return v * molarity * fw / 1000
#' @author Pejman Morovat <pejmanmorovat@yahoo.com>
#' @examples v=250
#' @examples normality=0.8
#' @examples fw=58.44
#' @examples mgrams(250,0.8,58.44)
mgrams<- function(V,molarity,fw) {
  mgrams<-V*molarity*fw / 1000
  print("grams of solute (g)")
  print(mgrams)
}
#' Using the following equation, you can figure out the concentration or volume of the concentrated or diluted solution
#' @description  m * vol = molarity * v --> , vol is the volume of the concentrated solution
#' @export
#' @param V is the volume of the dilute solution
#' @param molarity is the concentration in molarity of the dilute solution (after more solvent has been added)
#' @param m is the concentration in molarity (mol/L) of the concentrated solution
#' @details Prepare 100 mL of 1.0 M hydrochloric acid from concentrated (12.1 M) hydrochloric acid.
#' @return V * molarity / m
#' @author Pejman Morovat <pejmanmorovat@yahoo.com>
#' @examples v=100
#' @examples molarity=1
#' @examples m=12
#' @examples vol(100,1,12)
vol<- function(V,molarity,m) {
  vol<-V*molarity/m
  print("Same units as volume of the dilute solution")
  print(vol)
  options(digits = 5)
}
#' Quantity of a substance that interacts with one mole of hydrogen ions (in an acid-base reaction) or electrons (in a redox reaction)
#' @description Equivalent: In a chemical reaction, an equivalent is the amount of a substance that reacts with (or is equivalent to) an arbitrary amount (typically one mole) of another substance
#' @export
#' @param fw Formula weight (Molecular weight or molar mass) of the solute
#' @param n The number of equivalents that changes by ionization
#' @details What is the gram equivalent weight of phosphoric acid, H3PO4?(fw= molecular weight in g/mol, n= number of equivalents)
#' @return fw / n
#' @author Pejman Morovat <pejmanmorovat@yahoo.com>
#' @examples fw=127
#' @examples n= 3
#' @examples eqval(127,3)
eqval<- function(fw,n) {
  eqval<-fw / n
  print("Equivalent (g/eq)")
  print(eqval)
}
#' Normality: Defied as the number of gram of equivalent of solute per volume of solution (eq/L)
#' @description Normality is the number of equivalents per liter of solution.
#' @export
#' @param p Purity of solution. Percentage purity of a substance can be calculated by dividing the mass of the pure chemical by the total mass of the sample, and then multiplying this number by 100
#' @param d Density of solution. To determine the solution's density, weigh a precisely measured volume of your solution, and divide the mass of solution by the volume of solution. You must measure the volume of solution to obtain the density
#' @param eqval Equivalent: In a chemical reaction, an equivalent is the amount of a substance that reacts with (or is equivalent to) an arbitrary amount (typically one mole) of another substance
#' @details What is the normality of a 96 per cent solution of H2SO4 of specific gravity 1.84 g/mL?
#' @return 10 * p * d / eqval
#' @author Pejman Morovat <pejmanmorovat@yahoo.com>
#' @examples p=96
#' @examples d=1.84
#' @examples eqval=49.039
#' @examples normality(96,1.84,49.039)
normality<- function(p,d,eqval) {
  normality<-10 * p * d / eqval
  print("Normality of solution (eq/L)")
  print(normality)
}
#' It's another function for the determination of the normality of the solution.
#' @description Normality= Molarity * Equivalent mass (g/eq)
#' @export
#' @param molarity Molarity of solution (mol/L). moles of solute/liters of solution
#' @param n The number of equivalents that changes by ionization
#' @details What is the normality of Sulfuric Acid?(molarity of H2SO4 96 percent= 18.01)
#' @return molarity * n
#' @author Pejman Morovat <pejmanmorovat@yahoo.com>
#' @examples molarity=18.01
#' @examples n=2
#' @examples normality2(18.01,2)
normality2<-function(molarity,n) {
  normality2<- molarity*n
  print("Normality of solution (eq/L)")
  print(normality2)
}
#' Determination of the amount of solute in grams for preparing the solution  when the unit of solution concentration is normality
#' @description Determination of the amount of solute in grams for preparing the solution  when the unit of solution concentration is normality
#' @export
#' @param v Volume of solution (ml)
#' @param normality Normality of solution. Number of gram equivalents/volume of solution in liters (eq/L)
#' @param eqval Equivalent: In a chemical reaction, an equivalent is the amount of a substance that reacts with (or is equivalent to) an arbitrary amount (typically one mole) of another substance
#' @details To make 150 ml of an aqueous solution with [NaCl] = 10 N. What mass of the solute would we need to make this solution?
#' @return v * normality * eqval / 1000
#' @author Pejman Morovat <pejmanmorovat@yahoo.com>
#' @examples v=150
#' @examples normality=0.8
#' @examples eqval=1
#' @examples ngrams(150,10,1)
ngrams<- function(v,normality,eqval) {
  ngrams<-v*normality*eqval / 1000
  print("grams of solute (g)")
  print(ngrams)
}
