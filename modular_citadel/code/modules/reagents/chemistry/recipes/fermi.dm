
//Nano-b-gone
/datum/chemical_reaction/fermi/nanite_b_gone//done test
	name = "Naninte bain"
	id = /datum/reagent/fermi/nanite_b_gone
	results = list(/datum/reagent/fermi/nanite_b_gone = 4)
	required_reagents = list(/datum/reagent/medicine/synthflesh = 1, /datum/reagent/uranium = 1, /datum/reagent/iron = 1, /datum/reagent/medicine/salglu_solution = 1)
	mix_message = "the reaction gurgles, encapsulating the reagents in flesh before the emp can be set off."
	required_temp = 450//To force fermireactions before EMP.

/datum/chemical_reaction/fermi/yamerol//done test
	name = "Yamerol"
	id = /datum/reagent/fermi/yamerol
	results = list(/datum/reagent/fermi/yamerol = 3)
	required_reagents = list(/datum/reagent/medicine/perfluorodecalin = 1, /datum/reagent/medicine/salbutamol = 1, /datum/reagent/water = 1)

/datum/chemical_reaction/fermi/zeolites
	name = "Zeolites"
	id = /datum/reagent/fermi/zeolites
	results = list(/datum/reagent/fermi/zeolites = 5) //We make a lot!
	required_reagents = list(/datum/reagent/medicine/potass_iodide = 1, /datum/reagent/aluminium = 1, /datum/reagent/silicon = 1, /datum/reagent/oxygen = 1)
