/datum/species/feral
	name = "REPORT THIS AS A BUG"
	//The id is the living and standing icon state of the creature.
	//The dead icon state must be "id_d" in the .dmi file
	//The resting icon state must be "id_rest" in the .dmi file
	simple_icon = 'modular_coyote/icons/mob/pokemon64.dmi'
	mutant_bodyparts = list("legs" = "Digitigrade", "meat_type" = "Mammalian")
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	/// The width of the icon_limbs file. Used to auto-center your sprite.
	icon_width = 64
	roundstart = FALSE
	species_traits = list(FERAL,NOZOMBIE,NO_UNDERWEAR,LIPS,NOEYES,CAN_SCAR,HAS_FLESH,HAS_BONE,NO_INHAND)
	inherent_biotypes = MOB_ORGANIC|MOB_BEAST
	meat = /obj/item/reagent_containers/food/snacks/meat/slab
	gib_types = list(/obj/effect/gibspawner/human/bodypartless)
	attack_verb = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	rotate_on_lying = FALSE
	//We need this so that our limbs don't have null sprites when they get thrown off. (Should almost never happen because I glued them on, but just in case.)
	limbs_id = "mammal"
	damage_overlay_type = null
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	tail_type = "mam_tail"
	wagging_type = "mam_waggingtail"
	footstep_type = FOOTSTEP_MOB_CLAW


//Start Other//

/datum/species/feral/catslug
	name = "Catslug"
	id = "catslug"
	simple_icon = 'modular_coyote/icons/mob/slugcat.dmi'
	icon_width = 32
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
	liked_food = MEAT | RAW
	default_color = "FFFFFF"
	mutant_bodyparts = list("mcolor" = "FFFFFF", "legs" = "Digitigrade", "meat_type" = "Mammalian")
	species_traits = list(FERAL,NOZOMBIE,NO_UNDERWEAR,LIPS,NOEYES,CAN_SCAR,HAS_FLESH,HAS_BONE,MUTCOLORS)
/mob/living/carbon/human/species/catslug
	race = /datum/species/feral/catslug

/datum/species/feral/wisp
	name = "Feral Wisp"
	id = "wisp"
	simple_icon = 'modular_roguetown/items/lighting.dmi'
	icon_width = 32
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
	liked_food = VEGETABLES
	footstep_type = FOOTSTEP_MOB_CRAWL
	species_traits = list(FERAL,NOZOMBIE,NO_UNDERWEAR,LIPS,NOEYES,CAN_SCAR,HAS_FLESH,HAS_BONE,NO_INHAND,MUTCOLORS)
/mob/living/carbon/human/species/wisp
	race = /datum/species/feral/wisp

/datum/species/feral/slime
	name = "Feral Slime"
	id = "player slime"
	simple_icon = 'icons/mob/slimes.dmi'
	icon_width = 32
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
	liked_food = VEGETABLES
	footstep_type = FOOTSTEP_MOB_CRAWL
	species_traits = list(FERAL,NOZOMBIE,NO_UNDERWEAR,LIPS,NOEYES,CAN_SCAR,HAS_FLESH,HAS_BONE,NO_INHAND,MUTCOLORS)
/mob/living/carbon/human/species/slime
	race = /datum/species/feral/slime

/datum/species/feral/slug
	name = "Feral Slug"
	id = "slug"
	simple_icon = 'icons/mob/slimes.dmi'
	icon_width = 32
	icon_dead_suffix = "-dead"
	icon_rest_suffix = "-rest"
	roundstart = TRUE
/mob/living/carbon/human/species/slug
	race = /datum/species/feral/slug

/datum/species/feral/bat
	name = "Feral Bat"
	id = "bat"
	simple_icon = 'modular_coyote/icons/mob/bat.dmi'
	icon_width = 32
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
	liked_food = FRUIT
/mob/living/carbon/human/species/bat
	race = /datum/species/feral/bat

/datum/species/feral/featherraptor
	name = "Feral Feathered Raptor"
	id = "fraptor"
	simple_icon = 'modular_coyote/icons/mob/raptor_big_56x32.dmi'
	icon_width = 56
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_dead"
	alt_prefixes = list("Black Feathers" = "black_", 
	"White Feathers" = "white_", 
	"Purple Feathers" = "purple_", 
	"Red Feathers" = "red_", 
	"Green Feathers" = "green_", 
	"Blue Feathers" = "blue_")
	roundstart = TRUE
	liked_food = MEAT
/mob/living/carbon/human/species/featherraptor
	race = /datum/species/feral/featherraptor

/datum/species/feral/plantmouth
	name = "Venus Human Trap"
	id = "venus_human_trap"
	simple_icon = 'icons/effects/spacevines.dmi'
	icon_width = 32
	icon_dead_suffix = "_rest"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
	liked_food = MEAT
/mob/living/carbon/human/species/plantmouth
	race = /datum/species/feral/plantmouth

/datum/species/feral/gecko
	name = "Feral Gecko"
	id = "gekko"
	simple_icon = 'icons/fallout/mobs/animals/wasteanimals.dmi'
	icon_width = 32
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
	liked_food = MEAT | RAW
/mob/living/carbon/human/species/gecko
	race = /datum/species/feral/gecko

/datum/species/feral/gecko_villager
	name = "Feral Gecko Villager"
	id = "gekko_tribe_villager"
	simple_icon = 'icons/fallout/mobs/animals/gecktribe.dmi'
	icon_width = 32
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
	liked_food = MEAT | RAW
/mob/living/carbon/human/species/gecko_villager
	race = /datum/species/feral/gecko_villager

//start aliens

/datum/species/feral/xeno
	roundstart = FALSE //This is just the parent type, don't let players actually select it.
	exotic_blood_color = BLOOD_COLOR_XENO
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/xeno
	gib_types = list(/obj/effect/gibspawner/xeno/xenoperson, /obj/effect/gibspawner/xeno/xenoperson/bodypartless)
	skinned_type = /obj/item/stack/sheet/animalhide/xeno
	exotic_bloodtype = "X*"
	liked_food = MEAT | RAW
	default_color = "00FF00"
	species_type = "alien"
	say_mod = "hisses"
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"

/datum/species/feral/xeno/drone
	name = "Feral Xenomorph Drone"
	id = "aliend"
	simple_icon = 'icons/mob/alien.dmi'
	icon_width = 32
	roundstart = TRUE
	rotate_on_lying = TRUE
	icon_rest_suffix = "_sleep"
/mob/living/carbon/human/species/xenodrone
	race = /datum/species/feral/xeno/drone

/datum/species/feral/xeno/hunter
	name = "Feral Xenomorph Hunter"
	id = "alienh"
	simple_icon = 'icons/mob/alien.dmi'
	icon_width = 32
	roundstart = TRUE
	rotate_on_lying = TRUE
	icon_rest_suffix = "_sleep"
/mob/living/carbon/human/species/alienh
	race = /datum/species/feral/xeno/hunter

/datum/species/feral/xeno/sentry
	name = "Feral Xenomorph Sentry"
	id = "aliens"
	simple_icon = 'icons/mob/alien.dmi'
	icon_width = 32
	roundstart = TRUE
	rotate_on_lying = TRUE
	icon_rest_suffix = "_sleep"
/mob/living/carbon/human/species/xenosentry
	race = /datum/species/feral/xeno/sentry

/datum/species/feral/xeno/praetorian
	name = "Feral Xenomorph Praetorian"
	id = "alienp"
	simple_icon = 'icons/mob/alienqueen.dmi'
	icon_width = 64
	roundstart = TRUE
	alt_prefixes = list("TGMC Praetorian" = "tgmc_")
/mob/living/carbon/human/species/alienp
	race = /datum/species/feral/xeno/praetorian

/datum/species/feral/xeno/queen
	name = "Feral Xenomorph Queen"
	id = "alienq"
	simple_icon = 'icons/mob/alienqueen.dmi'
	icon_width = 64
	roundstart = TRUE
	alt_prefixes = list("TGMC Queen" = "tgmc_")
/mob/living/carbon/human/species/queen
	race = /datum/species/feral/xeno/queen

/datum/species/feral/xeno/maid
	name = "Feral Xenomorph Maid"
	id = "maid"
	simple_icon = 'icons/mob/alien.dmi'
	icon_width = 32
	roundstart = TRUE
/mob/living/carbon/human/species/maid
	race = /datum/species/feral/xeno/maid

//tgmc aliens
/datum/species/feral/xeno/beetle
	name = "Feral Xenomorph Beetle"
	id = "xeno_beetle"
	roundstart = TRUE
	default_color = "302239"
	simple_icon = 'modular_coyote/icons/mob/tgmc/beetle.dmi'
	icon_width = 64
/mob/living/carbon/human/species/beetle
	race = /datum/species/feral/xeno/beetle

/datum/species/feral/xeno/bull
	name = "Feral Xenomorph Bull"
	id = "xeno_bull"
	roundstart = TRUE
	default_color = "710E13"
	simple_icon = 'modular_coyote/icons/mob/tgmc/bull.dmi'
	icon_width = 64
/mob/living/carbon/human/species/bull
	race = /datum/species/feral/xeno/bull

/datum/species/feral/xeno/crusher
	name = "Feral Xenomorph Crusher"
	id = "xeno_crusher"
	roundstart = TRUE
	default_color = "710E13"
	simple_icon = 'modular_coyote/icons/mob/tgmc/crusher.dmi'
	icon_width = 64
/mob/living/carbon/human/species/crusher
	race = /datum/species/feral/xeno/crusher

/datum/species/feral/xeno/behemoth
	name = "Feral Xenomorph Behemoth"
	id = "xeno_behemoth"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/behemoth.dmi'
	icon_width = 96
/mob/living/carbon/human/species/behemoth
	race = /datum/species/feral/xeno/behemoth

/datum/species/feral/xeno/boiler
	name = "Feral Xenomorph Boiler"
	id = "xeno_boiler"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/boiler.dmi'
	icon_width = 64
/mob/living/carbon/human/species/boiler
	race = /datum/species/feral/xeno/boiler

/datum/species/feral/xeno/puppeteer
	name = "Feral Xenomorph Puppeteer"
	id = "xeno_puppeteer"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/puppeteer.dmi'
	icon_width = 64
/mob/living/carbon/human/species/puppeteer
	race = /datum/species/feral/xeno/puppeteer

/datum/species/feral/xeno/carrier
	name = "Feral Xenomorph Carrier"
	id = "xeno_carrier"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/carrier.dmi'
	icon_width = 64
/mob/living/carbon/human/species/carrier
	race = /datum/species/feral/xeno/carrier

/datum/species/feral/xeno/ravager
	name = "Feral Xenomorph Ravager"
	id = "xeno_ravager"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/ravager.dmi'
	icon_width = 64
/mob/living/carbon/human/species/ravager
	race = /datum/species/feral/xeno/ravager

/datum/species/feral/xeno/gorger
	name = "Feral Xenomorph Gorger"
	id = "xeno_gorger"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/gorger.dmi'
	icon_width = 64
/mob/living/carbon/human/species/gorger
	race = /datum/species/feral/xeno/gorger

/datum/species/feral/xeno/hivelord
	name = "Feral Xenomorph Hivelord"
	id = "xeno_hivelord"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/hivelord.dmi'
	icon_width = 64
/mob/living/carbon/human/species/hivelord
	race = /datum/species/feral/xeno/hivelord

/datum/species/feral/xeno/defender
	name = "Feral Xenomorph Defender"
	id = "xeno_defender"
	roundstart = TRUE
	default_color = "302239"
	simple_icon = 'modular_coyote/icons/mob/tgmc/defender.dmi'
	icon_width = 64
/mob/living/carbon/human/species/defender
	race = /datum/species/feral/xeno/defender

/datum/species/feral/xeno/defiler
	name = "Feral Xenomorph Defiler"
	id = "xeno_defiler"
	roundstart = TRUE
	default_color = "2C212B"
	simple_icon = 'modular_coyote/icons/mob/tgmc/defiler.dmi'
	icon_width = 64
/mob/living/carbon/human/species/defiler
	race = /datum/species/feral/xeno/defiler

/datum/species/feral/xeno/nymph
	name = "Feral Xenomorph Nymph"
	id = "xeno_nymph"
	roundstart = TRUE
	default_color = "710E13"
	simple_icon = 'modular_coyote/icons/mob/tgmc/nymph.dmi'
	icon_width = 64
/mob/living/carbon/human/species/nymph
	race = /datum/species/feral/xeno/nymph

/datum/species/feral/xeno/runner
	name = "Feral Xenomorph Runner"
	id = "xeno_runner"
	roundstart = TRUE
	default_color = "BC2929"
	simple_icon = 'modular_coyote/icons/mob/tgmc/runner.dmi'
	icon_width = 64
/mob/living/carbon/human/species/runner
	race = /datum/species/feral/xeno/runner

/datum/species/feral/xeno/warlock
	name = "Feral Xenomorph Warlock"
	id = "xeno_warlock"
	roundstart = TRUE
	default_color = "514643"
	simple_icon = 'modular_coyote/icons/mob/tgmc/warlock.dmi'
	icon_width = 64
	footstep_type = FOOTSTEP_MOB_CRAWL
/mob/living/carbon/human/species/warlock
	race = /datum/species/feral/xeno/warlock

/datum/species/feral/xeno/warrior
	name = "Feral Xenomorph Warrior"
	id = "xeno_warrior"
	roundstart = TRUE
	default_color = "302239"
	simple_icon = 'modular_coyote/icons/mob/tgmc/warrior.dmi'
	icon_width = 64
/mob/living/carbon/human/species/warrior
	race = /datum/species/feral/xeno/warrior

/datum/species/feral/xeno/widow
	name = "Feral Xenomorph Widow"
	id = "xeno_widow"
	roundstart = TRUE
	default_color = "514643"
	simple_icon = 'modular_coyote/icons/mob/tgmc/widow.dmi'
	icon_width = 64
/mob/living/carbon/human/species/widow
	race = /datum/species/feral/xeno/widow

/datum/species/feral/xeno/wraith
	name = "Feral Xenomorph Wraith"
	id = "xeno_wraith"
	roundstart = TRUE
	default_color = "302239"
	simple_icon = 'modular_coyote/icons/mob/tgmc/wraith.dmi'
	icon_width = 64
/mob/living/carbon/human/species/wraith
	race = /datum/species/feral/xeno/wraith

//end aliens

//Mimics! No special code here, I wish I could make the morph mob's gimmick a trait, but this is for all you crate pilled people
/datum/species/feral/mimic
	name = "Mimic Chest"
	simple_icon = 'modular_roguetown/topadd/takyon/Mimics.dmi'
	id = "newmimic"
	roundstart = TRUE
	icon_width = 64
	alt_prefixes = list(
		"Inverted" = "oginvert_",
		"Hybrid" = "gnorm_",
		"Hybrid Inverted" = "gnorminvert_",
		"Subtle" = "gsubtle_",
		"Silver" = "os_",
		"Silver Inverted" = "osinvert_",
		"Silver Hybrid" = "snorm_",
		"Silver Hybrid Inverted" = "snorminvert_",
		"Silver Subtle" = "ssubtle_") //Yeah I went a little wild with how many alt sprites they have
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	rotate_on_lying = FALSE
	footstep_type = FOOTSTEP_MOB_HEAVY
/mob/living/carbon/human/species/mimic
	race = /datum/species/feral/mimic

// No more mimics

//start deathclaws
/datum/species/feral/deathclaw
//start aethergiests
/datum/species/feral/aethergiest
	roundstart = FALSE //This is just the parent type, don't let players actually select it.
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/aethergiest
	gib_types = list(/obj/effect/gibspawner/generic)
	skinned_type = /obj/item/stack/sheet/animalhide/aethergiest
	liked_food = MEAT | RAW
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	simple_icon = 'modular_coyote/icons/mob/deathclaw.dmi'
	icon_width = 64
	footstep_type = FOOTSTEP_MOB_HEAVY

/datum/species/feral/aethergiest/original
	name = "Feral Deathclaw"
	id = "aethergiest"
	roundstart = TRUE
	icon_rest_suffix = ""
	rotate_on_lying = TRUE
	simple_icon = 'icons/mob/deathclaw.dmi'
/mob/living/carbon/human/species/aethergiest_original
	race = /datum/species/feral/aethergiest/original

/datum/species/feral/aethergiest/purple
	name = "Purple Cloaked Deathclaw"
	id = "pur"
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_purple
	race = /datum/species/feral/aethergiest/purple

/datum/species/feral/aethergiest/white
	name = "White Cloaked Deathclaw"
	id = "whi"
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_whi
	race = /datum/species/feral/aethergiest/white

/datum/species/feral/aethergiest/red
	name = "Red Cloaked Deathclaw"
	id = "red"
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_red
	race = /datum/species/feral/aethergiest/red

/datum/species/feral/aethergiest/grey
	name = "Grey Cloaked Deathclaw"
	id = "gry"
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_grey
	race = /datum/species/feral/aethergiest/grey

/datum/species/feral/aethergiest/black
	name = "Black Cloaked Deathclaw"
	id = "hub"
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_black
	race = /datum/species/feral/aethergiest/black

/datum/species/feral/aethergiest/brown
	name = "Brown Cloaked Deathclaw"
	id = "bro"
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_brown
	race = /datum/species/feral/aethergiest/brown

/datum/species/feral/aethergiest/maid
	name = "Maid Deathclaw"
	id = "maidclaw"
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_maid
	race = /datum/species/feral/aethergiest/maid

/datum/species/feral/aethergiest/queen
	name = "Queen Deathclaw"
	id = "deathclaw_queen"
	rotate_on_lying = TRUE
	icon_rest_suffix = ""
	roundstart = TRUE
/mob/living/carbon/human/species/aethergiest_queen
	race = /datum/species/feral/aethergiest/queen

/datum/species/feral/aethergiest/geist
	name = "Cavern Geist"
	id = "geist"
	rotate_on_lying = FALSE
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	alt_prefixes = list("Cyber" = "cyber_")
	roundstart = TRUE
/mob/living/carbon/human/species/geist
	race = /datum/species/feral/aethergiest/geist

/datum/species/feral/aethergiest/broodmother
	name = "Brood Mother"
	id = "broodmother"
	rotate_on_lying = TRUE
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	roundstart = TRUE
/mob/living/carbon/human/species/broodmother
	race = /datum/species/feral/aethergiest/broodmother


/datum/species/feral/bugs
	name = "Feral Sectdrone"
	id = "bug"
	simple_icon = 'modular_coyote/icons/mob/sectdrones.dmi'
	icon_width = 64
	rotate_on_lying = FALSE
	roundstart = TRUE
	alt_prefixes = list("Queen" = "queen_")
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"

/mob/living/carbon/human/species/bugs
	race = /datum/species/feral/bugs

//End Other//

//Start Synthetic Creatures//
/datum/species/adapted
	name = "REPORT THIS AS A BUG"
	//The id is the living and standing icon state of the creature.
	simple_icon = 'icons/mob/splurtbot.dmi'
	say_mod = "beeps"
	mutant_bodyparts = list("legs" = "Digitigrade", "meat_type" = "Mammalian")
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/ipc
	gib_types = list(/obj/effect/gibspawner/ipc, /obj/effect/gibspawner/ipc/bodypartless)
	icon_dead_suffix = "_dead"
	icon_rest_suffix = ""
	species_traits = list(FERAL,NOZOMBIE,NO_UNDERWEAR,MUTCOLORS,NOTRANSSTING,EYECOLOR,ROBOTIC_LIMBS,NO_DNA_COPY,NOEYES,LIPS,)
	inherent_traits = list(TRAIT_NODISMEMBER,TRAIT_LIMBATTACHMENT,TRAIT_RADIMMUNE,TRAIT_NOBREATH,TRAIT_CLONEIMMUNE,TRAIT_VIRUSIMMUNE,TRAIT_MUTATION_STASIS,)
	inherent_biotypes = MOB_ROBOTIC|MOB_HUMANOID|MOB_BEAST|MOB_SYNTH
	//Just robo looking parts.
	mutant_heart = /obj/item/organ/heart/ipc
	mutantlungs = /obj/item/organ/lungs/ipc
	mutantliver = /obj/item/organ/liver/ipc
	mutantstomach = /obj/item/organ/stomach/ipc
	mutanteyes = /obj/item/organ/eyes/ipc
	mutantears = /obj/item/organ/ears/ipc
	mutanttongue = /obj/item/organ/tongue/robot/ipc
	mutant_brain = /obj/item/organ/brain/ipc
	icon_width = 32
	roundstart = FALSE
	footstep_type = FOOTSTEP_MOB_CLAW
	attack_verb = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	tail_type = "mam_tail"
	wagging_type = "mam_waggingtail"
	allowed_limb_ids = list("mammal","aquatic","avian", "human", "shadekin")
	rotate_on_lying = TRUE
	damage_overlay_type = null
	exotic_bloodtype = "S"
	exotic_blood_color = BLOOD_COLOR_OIL
	species_type = "robotic" // It was just missing this little thing, I found it in ipc.dm. Hopefully this stops mechs from bleeding/getting wounds

/datum/species/adapted/handle_mutations_and_radiation(mob/living/carbon/human/H)
	return TRUE

/datum/species/adapted/spec_life(mob/living/carbon/human/H)
	/*if(H.nutrition < NUTRITION_LEVEL_FED)
		H.nutrition = NUTRITION_LEVEL_FED
	if(H.nutrition > NUTRITION_LEVEL_FED)
		H.nutrition = NUTRITION_LEVEL_FED*/
	if(H.losebreath != 0)
		H.losebreath = 0 // just in case
	if(H.toxloss)
		H.adjustToxLoss(-H.toxloss)


/datum/species/adapted/simplebot
	name = "REPORT THIS AS A BUG"
	simple_icon = 'icons/mob/robots.dmi'
	roundstart = FALSE

/datum/species/adapted/simplebot/handy
	name = "Adapted Handy Unit"
	id = "robot"
	roundstart = TRUE
/mob/living/carbon/human/species/handy
	race = /datum/species/adapted/simplebot/handy

/datum/species/adapted/simplebot/robobrain
	name = "Adapted Robobrain"
	id = "robobrain"
	icon_dead_suffix = "_d"
	roundstart = TRUE
/mob/living/carbon/human/species/robobrain
	race = /datum/species/adapted/simplebot/robobrain

/datum/species/adapted/simplebot/motile
	name = "Adapted Gunbot"
	id = "motile-syndie"
	icon_dead_suffix = "-dead"
	icon_rest_suffix = "-rest"
	rotate_on_lying = FALSE
	roundstart = TRUE
/mob/living/carbon/human/species/motile
	race = /datum/species/adapted/simplebot/motile

/datum/species/adapted/simplebot/droid
	name = "Adapted Droid"
	id = "droid-combat"
	icon_dead_suffix = "-dead"
	icon_rest_suffix = "-rest"
	rotate_on_lying = FALSE
	roundstart = TRUE
/mob/living/carbon/human/species/droid
	race = /datum/species/adapted/simplebot/droid

/datum/species/adapted/simplebot/sentrybot
	name = "Adapted Sentrybot"
	id = "sentrybot"
	icon_rest_suffix = "_rest"
	rotate_on_lying = FALSE
	simple_icon = 'icons/fallout/mobs/robots/wasterobots.dmi'
	roundstart = TRUE
/mob/living/carbon/human/species/sentrybot
	race = /datum/species/adapted/simplebot/sentrybot

/datum/species/adapted/simplebot/flyingfortress
	name = "Adapted Flying Fortress"
	id = "netguardian"
	icon_rest_suffix = "-rest"
	icon_dead_suffix = "-crash"
	alt_prefixes = list("No Scanner" = "noscan_")
	rotate_on_lying = FALSE
	simple_icon = 'icons/mob/netguardian.dmi'
	icon_width = 48
	roundstart = TRUE
/mob/living/carbon/human/species/flyingfortress
	race = /datum/species/adapted/simplebot/flyingfortress

/datum/species/adapted/simplebot/swarmer
	name = "Adapted Swarmer"
	simple_icon = 'icons/mob/playerswarmer.dmi'
	id = "swarmer"
	roundstart = TRUE
	alt_prefixes = list("Ranged" = "ranged_", "Melee" = "melee_")
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "-rest"
	rotate_on_lying = FALSE
	attack_sound = 'sound/weapons/sear.ogg'
/mob/living/carbon/human/species/swarmer
	race = /datum/species/adapted/simplebot/swarmer

/datum/species/adapted/simplebot/swarmer/hivebot
	name = "Adapted Hivebot"
	id = "hivebot"
	alt_prefixes = list(
		"Small" = "small_",
		"Small Alt" = "smallarm_",
		"Medium" = "medium_",
		"Medium Alt" = "mediumarm_",
		"Ranged" = "ranged_",
		"Ranged Elite" = "rangedarm_",
		"Factory" = "factory_",
		"Hunter Killer" = "hunter_",
		"Custodian" = "keeper_",
		"Mythical" = "crystal_",
		"Cephalopod" = "cepha_",)
	icon_dead_suffix = "_dead"
	icon_rest_suffix = "_rest"
	rotate_on_lying = FALSE
	attack_sound = 'sound/weapons/sear.ogg'
/mob/living/carbon/human/species/hivebot
	race = /datum/species/adapted/simplebot/swarmer/hivebot

/datum/species/adapted/simplebot/probe
	name = "Adapted Probe"
	simple_icon = 'icons/obj/mining.dmi'
	id = "constructiondrone"
	roundstart = TRUE
	icon_dead_suffix = "-wreck"
	icon_rest_suffix = "_off"
	rotate_on_lying = FALSE
	footstep_type = FOOTSTEP_MOB_CRAWL
/mob/living/carbon/human/species/probe
	race = /datum/species/adapted/simplebot/probe


/datum/species/adapted/simplebot/tallborg
	name = "Adapted Tall Synthetic"
	id = "tallborg"
	simple_icon = 'icons/mob/tallrobot.dmi'
// This is going to be quite long... Theres alot
	alt_prefixes = list(
		"Default Feminine" = "fem_",
		"Default Alt Fem" = "femalt_",
		"Default K4T" = "k4t_",
		"Cargo" = "cargo_",
		"Feminine Cargo" = "femcargo_",
		"Alt Fem Cargo" = "altfemcargo_",
		"K4T Cargo" = "k4tcargo_",
		"Alt K4T Cargo" = "altk4tcargo_",
		"Advanced Cargo" = "dullahancargo_",
		"Miner" = "mine_",
		"Feminine Miner" = "femmine_",
		"Alt Fem Miner" = "altfemmine_",
		"K4T Miner" = "k4tmine_",
		"Alt K4T Miner" = "altk4tmine_",
		"Advanced Miner" = "dullahanmine_",
		"Medical" = "medi_",
		"Feminine Medical" = "femmedi_",
		"Alt Fem Medical" = "altfemmedi_",
		"K4T Medical" = "k4tmedi_",
		"Alt K4T Medical" = "altk4tmed_",
		"Advanced Medical" = "dullahanmed_",
		"Janitor" = "jani_",
		"Feminine Janitor" = "femjani_",
		"Alt Fem Janitor" = "altfemjani_",
		"K4T Janitor" = "k4tjani_",
		"Alt K4T Janitor" = "altk4tjani_",
		"Advanced Janitor" = "dullahanjani_",
		"Engineer" = "engi_",
		"Feminine Engineer" = "engifem_",
		"Alt Fem Engineer" = "altengifem_",
		"K4T Engineer" = "k4tengi_",
		"Alt K4T Engineer" = "altk4tengi_",
		"Advanced Engineer" = "dullahaneng_",
		"Security" = "sec_",
		"Feminine Security" = "femsec_",
		"Alt Fem Security" = "femsecalt_",
		"K4T Security" = "k4tsec_",
		"Advanced Security" = "dullahansec_",
		"Service" = "serve_",
		"Feminine Service" = "femserve_",
		"Alt Fem Service" = "altfemserve_",
		"K4T Service" = "k4tserve_",
		"Alt K4T Service" = "altk4tserve_",
		"Advanced Service" = "dullahanserv_",
		"Advanced Religious" = "dullahanchurch_",
		"Ninja" = "ninja_",
		"Feminine Ninja" = "femninja_",
		"Alt Fem Ninja" = "altfemninja_",
		"K4T Ninja" = "k4tninja_",
		"Advanced Ninja" = "dullahanexplo_",
		"Syndicate" = "syndi_",
		"Feminine Syndicate" = "femsyndi_",
		"Alt Fem Syndicate" = "realv1fromultrakill_",
		"K4T Syndicate" = "k4tsyndi_",
		"Advanced Syndicate" = "dullahansyndi_",
	)
	icon_dead_suffix = "-wreck"
	icon_rest_suffix = "-rest"
	roundstart = TRUE
	rotate_on_lying = FALSE
	attack_sound = 'sound/weapons/sear.ogg'
/mob/living/carbon/human/species/tallborg
	race = /datum/species/adapted/simplebot/tallborg

//get in the mech, shinji
/datum/species/adapted/mechs
	name = "REPORT THIS AS A BUG"
	simple_icon = 'icons/mecha/mecha.dmi'
	icon_dead_suffix = "-broken"
	footstep_type = FOOTSTEP_MOB_HEAVY
	roundstart = FALSE

/datum/species/adapted/mechs/gygax
	name = "Adapted Gygax"
	id = "gygax"
	roundstart = TRUE
/mob/living/carbon/human/species/gygax
	race = /datum/species/adapted/mechs/gygax

/datum/species/adapted/mechs/darkgygax
	name = "Adapted Darkgygax"
	id = "darkgygax"
	roundstart = TRUE
/mob/living/carbon/human/species/darkgygax
	race = /datum/species/adapted/mechs/darkgygax

/datum/species/adapted/mechs/ripley
	name = "Adapted Ripley"
	id = "ripley"
	roundstart = TRUE
/mob/living/carbon/human/species/ripley
	race = /datum/species/adapted/mechs/ripley

/datum/species/adapted/mechs/marauder
	name = "Adapted Marauder"
	id = "marauder"
	roundstart = TRUE
/mob/living/carbon/human/species/marauder
	race = /datum/species/adapted/mechs/marauder

/datum/species/adapted/mechs/seraph
	name = "Adapted Seraph"
	id = "seraph"
	roundstart = TRUE
/mob/living/carbon/human/species/seraph
	race = /datum/species/adapted/mechs/seraph

/datum/species/adapted/mechs/phazon
	name = "Adapted Phazon"
	id = "phazon"
	roundstart = TRUE
/mob/living/carbon/human/species/phazon
	race = /datum/species/adapted/mechs/phazon //This one is for you, Nioha

/datum/species/adapted/mechs/mauler
	name = "Adapted Mauler"
	id = "mauler"
	roundstart = TRUE
/mob/living/carbon/human/species/mauler
	race = /datum/species/adapted/mechs/mauler

/datum/species/adapted/mechs/odysseus
	name = "Adapted Odysseus"
	id = "odysseus"
	roundstart = TRUE
/mob/living/carbon/human/species/odysseus
	race = /datum/species/adapted/mechs/odysseus

/datum/species/adapted/mechs/durand
	name = "Adapted Durand"
	id = "durand"
	roundstart = TRUE
/mob/living/carbon/human/species/durand
	race = /datum/species/adapted/mechs/durand

/datum/species/adapted/mechs/medigax
	name = "Adapted Medigax"
	id = "medigax"
	roundstart = TRUE
/mob/living/carbon/human/species/medigax
	race = /datum/species/adapted/mechs/medigax

/datum/species/adapted/mechs/tachi
	name = "Adapted Tachi"
	id = "tachi"
	roundstart = TRUE
/mob/living/carbon/human/species/tachi
	race = /datum/species/adapted/mechs/tachi


//End Synthetic Creatures
