/mob/living/carbon/
	gender = MALE
	var/datum/species/species //Contains icon generation and language information, set during New().
	var/list/stomach_contents = list()
	var/list/datum/disease2/disease/virus2 = list()
	var/list/antibodies = list()

	var/life_tick = 0      // The amount of life ticks that have processed on this mob.
	var/analgesic = 0 // when this is set, the mob isn't affected by shock or pain
					  // life should decrease this by 1 every tick
	// total amount of wounds on mob, used to spread out healing and the like over all wounds
	var/obj/item/handcuffed //Whether or not the mob is handcuffed
	var/obj/item/legcuffed  //Same as handcuffs but for legs. Bear traps use this.
	//Active emote/pose
	var/pose

	var/datum/reagents/metabolism/bloodstr
	var/datum/reagents/metabolism/ingested
	var/datum/reagents/metabolism/touching
	var/datum/metabolism_effects/metabolism_effects
	var/losebreath = 0 //if we failed to breathe last tick

	var/coughedtime
	var/lastpuke = 0

	var/cpr_time = 1
	nutrition = 400//Carbon


	var/obj/item/weapon/tank/internal //Human/Monkey

	//TODO: move to brain

