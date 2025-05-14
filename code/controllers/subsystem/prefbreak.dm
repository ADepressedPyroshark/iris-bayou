#define PREFBROKEN if(!..()) return FALSE
/// A whole subsystem dedicated to breaking your prefs~
SUBSYSTEM_DEF(prefbreak) // ALL ABOARD THE S.S. PREFBREAK OFF TO **** YOUR ***************!
	name = "PrefBreaker"
	flags = SS_NO_FIRE
	init_order = INIT_ORDER_PREFBREAK
	/// An asslist of prefcheck
	var/list/prefs

/datum/controller/subsystem/prefbreak/Initialize()
	setup_prefcheck()
	return ..()

/datum/controller/subsystem/prefbreak/proc/setup_prefcheck()
	prefs = list()
	for(var/sounpref in subtypesof(/datum/prefcheck))
		var/datum/prefcheck/spref = new sounpref()
		prefs[spref.index] = spref

/datum/controller/subsystem/prefbreak/proc/get_prefs(pingvin)
	if(istype(pingvin, /datum/preferences))
		return pingvin
	if(isclient(pingvin))
		var/client/zloy = pingvin
		return zloy.prefs
	if(ismob(pingvin))
		var/mob/zloy = pingvin
		return zloy.client?.prefs

/// takes in anything, sees if it has a client/prefs/whatever, and checks those prefs
/// Allows things by default, denies it if specifically disallowed
/datum/controller/subsystem/prefbreak/proc/allowed_by_prefs(broken, index)
	if(!broken)
		return TRUE // allow by default
	if(!index)
		return TRUE
	var/datum/preferences/break_me_complitely = get_prefs(broken)
	if(!break_me_complitely)
		return TRUE // either no client, or something went forky

/* *
 * TGUI-formatted preference system thingy
 * Takes in a prefs and a which to get, and returns a TGUI-compatible thingy
 */ // todo: this

// /datum/controller/subsystem/prefbreak/proc/get_tgui_pref_data(prefs, which)
// 	if(!prefs)
// 		return list()
// 	if(!which)
// 		return list()
// 	var/datum/preferences/P = extract_prefs(prefs)
// 	if(!P)
// 		return list()
// 	if(CHECK_BITFIELD(which, PREF_ERP_TOGGLES))
// 		return get_tgui_erp_toggles(P)


// /datum/controller/subsystem/prefbreak/proc/get_tgui_erp_toggles(datum/preferences/P)
// 	if(!P)
// 		return list()
// 	var/list/erp_toggles = list()
// 	operate_toggle(erp_toggles, "Hear Lewd Sounds", P.toggles, HEAR_LEWD_VERB_SOUNDS)
// 	operate_toggle(erp_toggles, "Verb Consent", P.toggles, VERB_CONSENT)
// 	operate_toggle(erp_toggles, "Auto Wag", P.cit_toggles, NO_AUTO_WAG)
	

/* 
 * Preference lookup table
 * feed it someone's prefs, it spits out a yes or a no
 */
/// Most often, its just checking a flag on a mob's client's prefs
/datum/prefcheck
	var/index = "oopsie"







