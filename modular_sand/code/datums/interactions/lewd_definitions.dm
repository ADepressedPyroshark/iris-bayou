
/// Specifies a bitfield for smarter debugging
/datum/bitfield
	/// The variable name that contains the bitfield
	var/variable

	/// An associative list of the readable flag and its true value
	var/list/flags

/// Turns /datum/bitfield subtypes into a list for use in debugging
/proc/generate_bitfields()
	var/list/bitfields = list()
	for (var/_bitfield in subtypesof(/datum/bitfield))
		var/datum/bitfield/bitfield = new _bitfield
		bitfields[bitfield.variable] = bitfield.flags
	return bitfields

/*
DEFINE_BITFIELD(slot_flags, list(
	"SLOTBIT_ACCESSORY" = SLOT_ACCESSORY,
	"SLOTBIT_BACK" = SLOT_BACK,
	"SLOTBIT_BACKPACK" = SLOT_BACKPACK,
	"SLOTBIT_BELT" = SLOT_BELT,
	"SLOTBIT_DEX_STORAGE" = SLOT_DEX_STORAGE,
	"SLOTBIT_EARS" = SLOT_EARS,
	"SLOTBIT_GLASSES" = SLOT_GLASSES,
	"SLOTBIT_FEET" = SLOT_SHOES,
	"SLOTBIT_GLOVES" = SLOT_GLOVES,
	"SLOTBIT_HANDCUFFED" = SLOT_HANDCUFFED,
	"SLOTBIT_HANDS" = SLOT_HANDS,
	"SLOTBIT_HEAD" = SLOT_HEAD,
	"SLOTBIT_ICLOTHING" = SLOT_ICLOTHING,
	"SLOTBIT_ID" = SLOT_ID,
	"SLOTBIT_LEGCUFFED" = SLOT_LEGCUFFED,
	"SLOTBIT_L_STORE" = SLOT_L_STORE,
	"SLOTBIT_MASK" = SLOT_MASK,
	"SLOTBIT_NECK" = SLOT_NECK,
	"SLOTBIT_OCLOTHING" = SLOT_OCLOTHING,
	"SLOTBIT_R_STORE" = SLOT_R_STORE,
	"SLOTBIT_S_STORE" = SLOT_S_STORE,
))
*/
