#priority 600

import stdlib.List;
import crafttweaker.api.util.collection.Collection;
import crafttweaker.api.events.EventManager;
import crafttweaker.api.events.EventPhase;
import crafttweaker.forge.api.event.tick.PlayerTickEvent;
import crafttweaker.api.entity.LivingEntity;
import crafttweaker.api.entity.effect.MobEffectInstance;

//Check in each tick, if the player have the "One Of Us" effect, and if have, remove it

events.register<PlayerTickEvent>((event) => {
    //Get base data
    val player = event.player;

    //Stop here if is client side...
	if (player.level.isClientSide == true) {
		return;
	}

    //If have, remove the effect...
    if (player.hasEffect(<mobeffect:the_flesh_that_hates:one_of_us>) == true) {
        player.removeEffect(<mobeffect:the_flesh_that_hates:one_of_us>);
    }
});