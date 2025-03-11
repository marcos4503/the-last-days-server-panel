#priority 500

import crafttweaker.api.events.EventManager;
import crafttweaker.api.events.EventPhase;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.LivingEntity;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.forge.api.event.entity.player.PlayerEvent;
import crafttweaker.forge.api.interact.PlayerInteractEvent;
import crafttweaker.forge.api.player.interact.RightClickItemEvent;
import crafttweaker.api.text.Component;

//Display the documentation, if player Right Click the Wiki item...

events.register<crafttweaker.forge.api.player.interact.RightClickItemEvent>(event => {
    //Get base data
    val player = event.entity;

    //Stop here if is client side...
    if (player.level.isClientSide == false) {
		return;
	}

    //Show the message...
    if(event.itemStack.withoutTag().matches(<item:minecraft:nether_brick>) == true){
        event.entity.sendMessage("§bDigite '/browser' ou use 'HOME' para abrir a Enciclopédia!");
        event.entity.sendMessage("§bPressione 'ESC' para fecha-la.");
    }
});