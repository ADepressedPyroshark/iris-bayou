//-->Addition of some character actions that go on the same spot

/atom/movable/screen/autowhisper
	name = "autowhisper"
	icon_state = "autowhisper0"
	screen_loc = ui_character_actions

/atom/movable/screen/autowhisper/Click(location,control,params)
	var/mob/M = usr
	M.is_autowhisper = M.is_autowhisper ? FALSE : TRUE
	if(M.is_autowhisper)
		to_chat(M, span_notice("You'll now whisper everything you say."))
		icon_state = "autowhisper1"
	else
		to_chat(M, span_notice("You'll no longer whisper everything you say."))
		icon_state = "autowhisper0"

/atom/movable/screen/pose
	name = "pose"
	icon_state = "pose"
	screen_loc = ui_character_actions

/atom/movable/screen/pose/Click(location,control,params)
	var/mob/M = usr
	M.manage_flavor_tests()

/atom/movable/screen/up
	name = "up"
	icon_state = "up"
	screen_loc = ui_character_actions

/atom/movable/screen/up/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.layershift_up()

/atom/movable/screen/down
	name = "down"
	icon_state = "down"
	screen_loc = ui_character_actions

/atom/movable/screen/down/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.layershift_down()

/atom/movable/screen/sleep_hud_button
	name = "sleep toggle"
	icon_state = "sleep"
	screen_loc = ui_character_actions

/atom/movable/screen/sleep_hud_button/Click(location,control,params)
	if(isliving(usr))
		var/mob/living/L = usr
		L.toggle_mob_sleep()

/atom/movable/screen/triage
	name = "triage button"
	icon_state = "triage"
	screen_loc = ui_character_actions

/atom/movable/screen/triage/Click(location,control,params)
	if(ishuman(usr))
		var/mob/living/carbon/human/H = usr
		if(isnull(H.get_active_held_item()))
			if(HAS_TRAIT(H, TRAIT_HEAL_TONGUE))
				H.emote("lick")
			else if(HAS_TRAIT(H, TRAIT_HEAL_TOUCH))
				H.emote("touch")
			else if(HAS_TRAIT(H, TRAIT_HEAL_TEND))
				H.emote("tend")

/atom/movable/screen/triage/DblClick(location,control,params)
	if(ishuman(usr))
		var/mob/living/carbon/human/H = usr
		var/obj/item/I = H.get_active_held_item()
		if(isnull(I))
			if(HAS_TRAIT(H, TRAIT_HEAL_TONGUE))
				H.emote("lick")
			else if(HAS_TRAIT(H, TRAIT_HEAL_TOUCH))
				H.emote("touch")
			else if(HAS_TRAIT(H, TRAIT_HEAL_TEND))
				H.emote("tend")

			I = H.get_active_held_item()
			I?.melee_attack_chain(H, H, params)

		else if(istype(I, /obj/item/hand_item/tactile/))
			I = H.get_active_held_item()
			I?.melee_attack_chain(H, H, params)

/atom/movable/screen/aooc_hud_button
	name = "AOOC"
	icon_state = "aooc"
	screen_loc = ui_character_actions

/atom/movable/screen/aooc_hud_button/Click(location,control,params)
	if(usr.client)
		var/msg = input(usr, "AOOC Message", "AOOC", null)
		usr.client.aooc(msg)

/atom/movable/screen/newbie_hud_button
	name = "Help/Newbie"
	icon_state = "newbie"
	screen_loc = ui_character_actions

/atom/movable/screen/newbie_hud_button/Click(location,control,params)
	if(usr.client)
		var/msg = input(usr, "Help/Newbie Message", "Help/Newbie", null)
		usr.client.newbie(msg)


/atom/movable/screen/who
	name = "Who"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "who" // milhouse who
	screen_loc = "EAST-3:-4, SOUTH+1:-13"

/atom/movable/screen/who/Click(location,control,params)
	SSwho.Who(usr.client)


/*
/atom/movable/screen/foldout/vore_button
	name = "Vore Menu Menu"
	desc = "It's the menu for the vore menu!"
	icon = 'icons/mob/screen_gen_vore.dmi'
	icon_state = "vore_off"
	screen_loc = "EAST-1:-11, SOUTH+2:23"
	closed_icon = 'icons/mob/screen_gen_vore.dmi'
	closed_state = "vore_off"
	closed_loc = "EAST-1:-11, SOUTH+2:23"
	open_icon = 'icons/mob/screen_gen_vore.dmi'
	open_state = "vore_on" // no YOURE the voreon
	open_loc = "EAST-1:-22, SOUTH+2:23"
	foldies = list(
		/atom/movable/screen/sub_button/vore_menu,
		/atom/movable/screen/sub_button/vorer_thing,
		/atom/movable/screen/sub_button/eater_thing,
		/atom/movable/screen/sub_button/enabler,
	)
*/
////////////////////////////////////////////////////////////
//stat roller

// Despite being defined, this doesn't render on screen in any capacity, didnt extensively test
/atom/movable/screen/roll_hud_button
	name = "Stat Roller Radial Menu"
	icon_state = "skillcheck"
	screen_loc = "RIGHT-2:-4,South+2:0"

/atom/movable/screen/roll_hud_button/Click(location,control,params,)
// This stuff needs to be changed because it was directly lifted from clothing
	var/static/list/choices = list(
			"Brawn" = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "brawn"),
			"Awareness" = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "awareness"),
			"Toughness" = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "toughness"),
			"Moxie" = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "moxie"),
			"Smarts" = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "smarts"),
			"Deftness" = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "deftness"),
			"Fate" = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "fate"),
		)
	var/mob/user = usr
	var/choice = show_radial_menu(user, src, choices, radius = 32,)
	switch(choice)
		if("Brawn")
			user.emote("special_strength")
		if("Awareness")
			user.emote("special_perception")
		if("Toughness")
			user.emote("special_endurance")
		if("Moxie")
			user.emote("special_charisma")
		if("Smarts")
			user.emote("special_intelligence")
		if("Deftness")
			user.emote("special_agility")
		if("Fate")
			user.emote("special_luck")
		else
			return

/atom/movable/screen/hand_items_button
	name = "Personal Tools"
	icon_state = "handitems"
	screen_loc = "RIGHT-0:-4,South+2:0"

/atom/movable/screen/hand_items_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	var/static/list/choices = list(
			"Tail"        = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "tail"    ),
			"Claw"        = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "claw"    ),
			"Bite"        = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "bite"    ),
			"Tend"        = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "tend"    ),
			"Cuphand"     = image(icon = 'icons/mob/screen_gen.dmi', icon_state = "cuphand" ),
		)
	var/mob/user = usr
	var/choice = show_radial_menu(user, src, choices, radius = 28, ultradense = TRUE, linedir = NORTH)
	if(!ishuman(usr))//Check after they select something just in case they've somehow switched to a non-human in the mean time
		return
	switch(choice)
		if("Tail")
			H.emote("tailer")
		if("Claw")
			H.emote("claw")
		if("Bite")
			H.emote("bite")
		if("Tend")
			H.emote("tend")
		if("Cuphand")
			H.emote("cuphand")

////////////////////////////////////////////////////////////
/*
/atom/movable/screen/touch_hud_button
	name = "Touch on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "touch"
	screen_loc = ui_touch

/atom/movable/screen/touch_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("touchhorny")

/atom/movable/screen/lick_hud_button
	name = "lick on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "lick"
	screen_loc = ui_lick

/atom/movable/screen/lick_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("lickhorny")

/atom/movable/screen/kiss_hud_button
	name = "kiss on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "kiss"
	screen_loc = ui_kiss

/atom/movable/screen/kiss_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("kisshorny")

////////////////////////////////////////////////////////////
/// Private panel button
/atom/movable/screen/private_panel_button
	name = "fool with your privates!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "privatepanel"
	screen_loc = "EAST-0:-4, SOUTH+3:-3"

/atom/movable/screen/private_panel_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.toggle_genitals()
*/
////////////////////////////////////////////////////////////
/// give button
/atom/movable/screen/give_button
	name = "give somebody something!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "give"
	screen_loc = "CENTER+1:15,SOUTH+1:3"

/atom/movable/screen/give_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.give()

////////////////////////////////////////////////////////////
/// reload button
/atom/movable/screen/reload_button
	name = "reload a firearm!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "reload"
	screen_loc = "CENTER+2:11,SOUTH+1:3"

/atom/movable/screen/reload_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.ReloadGun()

////////////////////////////////////////////////////////////
/// Bite button
/atom/movable/screen/bite_hud_button
	name = "bite on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "bite"
	screen_loc = "EAST-1:28, SOUTH+5:-14"

/atom/movable/screen/bite_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("bite")

////////////////////////////////////////////////////////////
/// Claw button
/atom/movable/screen/claw_hud_button
	name = "claw on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "claw"
	screen_loc = "EAST-1:28, SOUTH+5:-9"

/atom/movable/screen/claw_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("claw")

////////////////////////////////////////////////////////////
/// Tail button
/atom/movable/screen/tail_hud_button
	name = "tail on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "tail"
	screen_loc = "EAST-1:28, SOUTH+4:-3"

/atom/movable/screen/tail_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("tailer")

////////////////////////////////////////////////////////////
/// Cuphand button
/atom/movable/screen/cuphand_hud_button
	name = "cuphand on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "cuphand"
	screen_loc = "EAST-1:4, SOUTH+4: 12"

/atom/movable/screen/cuphand_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("cuphand")

////////////////////////////////////////////////////////////
/// Tend button
/atom/movable/screen/tend_hud_button
	name = "tend on people!"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "tend"
	screen_loc = "CENTER+3:8, SOUTH+1:-6"

/atom/movable/screen/tend_hud_button/Click(location,control,params)
	var/mob/living/carbon/human/H = usr
	if(!ishuman(usr))
		to_chat(usr, span_alert("Sorry! You've gotta be a fully spawned in character with hopes and dreams to use this!"))
		return
	H.emote("tend")


/atom/movable/screen/pvp_focus_toggle
	name = "PVP focus On/Off"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "pvp_blank"
	screen_loc = ui_pvpbuttons
	var/mytobe

/atom/movable/screen/pvp_focus_toggle/Initialize(mapload)
	. = ..()
	update_icon()

/atom/movable/screen/pvp_focus_toggle/Click(location,control,params)
	if(!usr.client || !ismob(usr))
		return

	var/changeto = PVP_NEUTRAL
	var/_y = text2num(params2list(params)["icon-y"])
	if(_y>=25) // PVP focus on
		if(HAS_TRAIT(usr, TRAIT_PVPFOC))
			changeto = PVP_NEUTRAL
		else
			if(HAS_TRAIT(usr, TRAIT_NO_PVP_EVER))
				to_chat(usr, span_alert("My role/quirks/setup doesn't allow for PVP!"))
				return
			changeto = PVP_YES
	else if(_y>=17) // PVP opt out on
		if(HAS_TRAIT(usr, TRAIT_PVEFOC))
			changeto = PVP_NEUTRAL
		else
			changeto = PVP_NO
	usr.SetPVPflag(changeto, TRUE)

/atom/movable/screen/pvp_focus_toggle/proc/update_intento(towhat)
	mytobe = towhat
	update_icon()

/atom/movable/screen/pvp_focus_toggle/update_overlays()
	. = ..()
	var/mutable_appearance/top = mutable_appearance('icons/mob/screen_gen.dmi')
	var/mutable_appearance/bottom = mutable_appearance('icons/mob/screen_gen.dmi')
	switch(mytobe)
		if(PVP_NEUTRAL)
			top.icon_state = "pvp_top_off"
			bottom.icon_state = "pvp_bottom_off"
		if(PVP_YES)
			top.icon_state = "pvp_top_on"
			bottom.icon_state = "pvp_bottom_off"
		if(PVP_NO)
			top.icon_state = "pvp_top_off"
			bottom.icon_state = "pvp_bottom_on"
	. += top
	. += bottom


