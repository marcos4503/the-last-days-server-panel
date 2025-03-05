import stdlib.List;
import crafttweaker.api.text.Component;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.type.IngredientConditioned;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.util.collection.Collection;
import crafttweaker.api.events.EventManager;
import crafttweaker.api.events.EventPhase;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.entity.attribute.Attribute;
import crafttweaker.api.entity.attribute.AttributeInstance;
import crafttweaker.api.entity.attribute.AttributeModifier;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.LivingEntity;
import crafttweaker.forge.api.event.entity.EntityEvent;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.block.BlockState;
import crafttweaker.api.block.Block;
import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.item.enchantment.Enchantment;
import crafttweaker.api.food.FoodData;
import crafttweaker.forge.api.event.tick.PlayerTickEvent;
import crafttweaker.forge.api.event.interact.RightClickBlockEvent;
import crafttweaker.forge.api.player.interact.RightClickItemEvent;
import crafttweaker.forge.api.event.anvil.AnvilUpdateEvent;
import crafttweaker.forge.api.event.block.BlockBreakEvent;





//Prepare a list of all special skills IDs (special skills are skills unlocked in Passive Skill Tree and are completely handled by this Script, and not by any mod)
//Whenever a Player unlocks a new special Skill in the Passive Skill Tree, the Passive Skill Tree will add a modifier to the "puffish_attributes:resistance_shred" attribute of Player.
//This modifier adds a value to that attribute of Player, and the added value corresponds to the ID of the special skill that will be allowed to the Player.

var specialSkillsIds as double[] = [
    0.000010,   //<- skill "Minerador Arqueólogo"
    0.000011    //<- skill "Jejum Intermitente"
];





//Remove itens of inventory of Players that don't have the itens unlocked in Passive Skill Tree.
//
//   Whenever a Player unlocks a Skill in the Passive Skill Tree that allows them to build and carry a certain item, the Passive Skill Tree will add a modifier
//   to the "puffish_attributes:resistance_shred" attribute of Player. This modifier adds a value to that attribute of Player, and the added value corresponds to the ID of the
//   item that will be allowed to the Player, in the arrays below.
//
//   If the Player is carrying an item whose "puffish_attributes:resistance_shred" attribute does not have any modifier equivalent to that item ID, the item will be
//   removed from the Player's inventory.

//Prepare a list of all items that should be unlocked in Passive Skill Tree, to be used or ported in inventory...

var spellSystemItems as IItemStack[] = [
    <item:irons_spellbooks:iron_spell_book>.withoutTag(),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:burning_dash", level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 8, id: "irons_spellbooks:acupuncture", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 6}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 10}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:slow", level: 3}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:slow", level: 6}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 9, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:blood_slash", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 7, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 9, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:starfall", level: 10}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 8, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, index: 0, id: "irons_spellbooks:flaming_strike", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, id: "irons_spellbooks:lightning_bolt", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, index: 0, id: "irons_spellbooks:counterspell", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:shield", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:echoing_strikes", level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:thunderstorm", level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:black_hole", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, index: 0, id: "irons_spellbooks:sacrifice", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:poison_arrow", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, id: "irons_spellbooks:poison_arrow", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:firefly_swarm", level: 6}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:poison_splash", level: 5}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:poison_splash", level: 10}]}}),
    <item:irons_spellbooks:copper_spell_book>.withoutTag(),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, index: 0, id: "irons_spellbooks:frost_step", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:guiding_bolt", level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, id: "irons_spellbooks:icicle", index: 0, level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, id: "irons_spellbooks:icicle", index: 0, level: 3}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, id: "irons_spellbooks:icicle", index: 0, level: 5}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:ray_of_frost", level: 5}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, index: 0, id: "irons_spellbooks:arrow_volley", locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 3}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 5}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:acid_orb", level: 8}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:blight", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:fortify", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:root", level: 6}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:burning_dash", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:angel_wing", level: 5}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 1}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 2}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 3}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 4}]}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:ray_of_siphoning", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}),
    <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}),
    <item:minecraft:diamond_helmet>.withoutTag(),
    <item:matowos_invisible_armor:invisible_diamond_helmet>.withoutTag(),
    <item:minecraft:diamond_chestplate>.withoutTag(),
    <item:matowos_invisible_armor:invisible_diamond_chestplate>.withoutTag(),
    <item:minecraft:diamond_leggings>.withoutTag(),
    <item:matowos_invisible_armor:invisible_diamond_leggings>.withoutTag(),
    <item:minecraft:diamond_boots>.withoutTag(),
    <item:matowos_invisible_armor:invisible_diamond_boots>.withoutTag(),
    <item:minecraft:netherite_helmet>.withoutTag(),
    <item:matowos_invisible_armor:invisible_netherite_helmet>.withoutTag(),
    <item:minecraft:netherite_chestplate>.withoutTag(),
    <item:matowos_invisible_armor:invisible_netherite_chestplate>.withoutTag(),
    <item:minecraft:netherite_leggings>.withoutTag(),
    <item:matowos_invisible_armor:invisible_netherite_leggings>.withoutTag(),
    <item:minecraft:netherite_boots>.withoutTag(),
    <item:matowos_invisible_armor:invisible_netherite_boots>.withoutTag(),
    <item:shieldsplus:stone_shield>.withoutTag(),
    <item:shieldsplus:golden_shield>.withoutTag(),
    <item:shieldsplus:iron_shield>.withoutTag(),
    <item:shieldsplus:diamond_shield>.withoutTag(),
    <item:shieldsplus:netherite_shield>.withoutTag(),
    <item:brass_armory:iron_boomerang>.withoutTag(),
    <item:brass_armory:iron_spear>.withoutTag(),
    <item:alloy_tools:multitool_1>.withoutTag(),
    <item:alloy_tools:multitool_2>.withoutTag(),
    <item:alloy_tools:multitool_4>.withoutTag(),
    <item:alloy_tools:multitool_5>.withoutTag(),
    <item:alloy_tools:multitool_6>.withoutTag(),
    <item:grapplemod:grapplinghook>.withTag({exclusivefor: "explorer_class", custom: {smartmotor: 1, detachonkeyrelease: 0, rocket_force: 1.0, doublehook: 0, angle: 20.05181347150259, playermovementmult: 1.9818652849740934, motorwhennotcrouching: 1, throwspeed: 11.968911917098445, motordampener: 0, sticky: 1, rocket_vertical_angle: 0.0, attractradius: 1.0103626943005182, repelforce: 1.0233160621761659, reelin: 0, phaserope: 0, attract: 0, motoracceleration: 0.37823834196891193, hookgravity: 0.2590673575129534, verticalthrowangle: 0.0, crc32: 1022723780, maxlen: 30.05181347150259, motormaxspeed: 0.5958549222797928, repel: 1, sneakingangle: 0.0, motorwhencrouching: 0, pullbackwards: 1, smartdoublemotor: 1, sneakingverticalthrowangle: 0.0, rocket_refuel_ratio: 15.0, rocket_active_time: 0.5, oneropepull: 0, enderstaff: 0, motor: 1, rocket: 0}}),
    <item:metalbundles:copper_bundle>.withoutTag(),
    <item:securitycraft:taser>.withoutTag()
];

//Prepare a list with a internal ID (valid for this script only) of all items that should be unlocked in Passive Skill Tree, to be used or ported in inventory...

var spellSystemItemsIds as double[] = [
    0.0001,
    0.0011,
    0.0012,
    0.0013,
    0.0014,
    0.0015,
    0.0016,
    0.0017,
    0.0018,
    0.0019,
    0.0020,
    0.0021,
    0.0022,
    0.0023,
    0.0024,
    0.0025,
    0.0026,
    0.0027,
    0.0028,
    0.0029,
    0.0030,
    0.0031,
    0.0032,
    0.0033,
    0.0034,
    0.0035,
    0.0036,
    0.0037,
    0.0038,
    0.0039,
    0.0040,
    0.0041,
    0.0042,
    0.0043,
    0.0044,
    0.0045,
    0.0046,
    0.0047,
    0.0048,
    0.0049,
    0.0050,
    0.0051,
    0.0052,
    0.0053,
    0.0054,
    0.0002,
    0.0055,
    0.0056,
    0.0057,
    0.0058,
    0.0059,
    0.0060,
    0.0061,
    0.0062,
    0.0063,
    0.0064,
    0.0065,
    0.0066,
    0.0067,
    0.0068,
    0.0069,
    0.0070,
    0.0071,
    0.0072,
    0.0073,
    0.0074,
    0.0075,
    0.0076,
    0.0077,
    0.0078,
    0.0079,
    0.0080,
    0.0081,
    0.0082,
    0.0083,
    0.0084,
    0.0085,
    0.0004,
    0.000401,
    0.000402,
    0.000403,
    0.000404,
    0.000405,
    0.000406,
    0.000407,
    0.000408,
    0.000409,
    0.000410,
    0.000411,
    0.000412,
    0.000413,
    0.000414,
    0.000415,
    0.0005,
    0.00051,
    0.00052,
    0.00053,
    0.00054,
    0.0006,
    0.0007,
    0.0008,
    0.00081,
    0.00082,
    0.00083,
    0.00084,
    0.00085,
    0.0009,
    0.00091
];

//Prepare a list with items that is prohibited to stay on offhand, for prevent abuse of skills that give bonus for items in hand (like bonus damage for Bow in hand, and a player put Bow in offhand and still gaining the bonus)

var offHandProhibitedItems as IItemStack[] = [
    <item:minecraft:crossbow>,
    <item:minecraft:bow>,
    <item:cgm:pistol>,
    <item:cgm:shotgun>,
    <item:cgm:rifle>,
    <item:cgm:grenade_launcher>,
    <item:cgm:bazooka>,
    <item:cgm:mini_gun>,
    <item:cgm:assault_rifle>,
    <item:cgm:machine_pistol>,
    <item:cgm:heavy_rifle>,
    <item:minecraft:wooden_axe>,
    <item:minecraft:stone_axe>,
    <item:minecraft:iron_axe>,
    <item:minecraft:golden_axe>,
    <item:minecraft:diamond_axe>,
    <item:minecraft:netherite_axe>,
    <item:minecraft:trident>,
    <item:simplyswords:iron_twinblade>,
    <item:simplyswords:gold_twinblade>,
    <item:simplyswords:diamond_twinblade>,
    <item:simplyswords:netherite_twinblade>,
    <item:simplyswords:iron_katana>,
    <item:simplyswords:gold_katana>,
    <item:simplyswords:diamond_katana>,
    <item:simplyswords:netherite_katana>,
    <item:simplyswords:iron_spear>,
    <item:simplyswords:gold_spear>,
    <item:simplyswords:diamond_spear>,
    <item:simplyswords:netherite_spear>,
    <item:simplyswords:iron_glaive>,
    <item:simplyswords:gold_glaive>,
    <item:simplyswords:diamond_glaive>,
    <item:simplyswords:netherite_glaive>,
    <item:simplyswords:iron_greataxe>,
    <item:simplyswords:gold_greataxe>,
    <item:simplyswords:diamond_greataxe>,
    <item:simplyswords:netherite_greataxe>
];

//Remove itens of inventory players that have a enchantment that don't is unlocked in Passive Skill Tree.
//
//   Whenever a Player unlocks a Skill in the Passive Skill Tree that allows them to put an specific enchantment in the item, the Passive Skill Tree will add a modifier
//   to the "puffish_attributes:resistance_shred" attribute of Player. This modifier adds a value to that attribute of Player, and the added value corresponds to the ID of the
//   enchantment that now will be allowed to the Player use in their itens, in the array below.
//
//   If the Player is carrying an item that have a enchantment whose "puffish_attributes:resistance_shred" attribute does not have any modifier equivalent to that enchantment ID,
//   the item with that enchantment will be removed from the Player's inventory.

//Prepare a list of all item enchantments that should be unlocked in Passive Skill Tree, to be used or ported in itens inside the Player inventory...

var itemsEnchantmentsUnlockable as Enchantment[] = [
    <enchantment:cgm:over_capacity>,
    <enchantment:cgm:reclaimed>,
    <enchantment:cgm:collateral>,
    <enchantment:mmenchants:backstab>,
    <enchantment:mmenchants:assasination>,
    <enchantment:mmenchants:nitrogenic>,
    <enchantment:mmenchants:rejuvenating>,
    <enchantment:mmenchants:frenzy>,
    <enchantment:wudrus_restore_enchantment:wre_restore>
];

//Prepare a list with a internal ID (valid for this script only) of all enchantments that should be unlocked in Passive Skill Tree, to be used or ported in itens of Player inventory...

var itemsEnchantmentsUnlockableIds as double[] = [
    0.0003,
    0.00031,
    0.00032,
    0.00033,
    0.00034,
    0.00035,
    0.00036,
    0.00037,
    0.00038
];

//Do the tasks of Passive Skill Tree in every tick of each player...

events.register<PlayerTickEvent>((event) => {
    //Get base data
	var player = event.player;

    //Stop here if is client side...
	if (player.level.isClientSide == true) {
        return;
	}

    //--------------------------- ITEMS CARRYING RESTRICTION PART ---------------------------//

    //Prepare the needed data
    var attributeData = player.getAttribute(<attribute:puffish_attributes:resistance_shred>);
    var attributeModifiersList = attributeData.modifiers as List<AttributeModifier>;
    var inventorySize = player.inventory.getContainerSize();

    //Check the inventory of the player to search by restricted items...
    for slotInd in 0 .. inventorySize{
        //Get current item of inventory...
        var currentInvItem = player.inventory.getItem(slotInd).asIItemStack();
        var isItemOfSpellSystem = false;
        var spellSystemItemId = -1.0;

        //Check if a item of restricted items list, matches with the current inventory item
        for x, item in spellSystemItems{
            //Detect if the current item of restricted list have NBT requirements
            var hasNbt = false;
            if (item.matches(item) == true){ hasNbt = true; }
            if (item.matches(item.withoutTag()) == true){ hasNbt = false; }

            //If the item of restricted items list don't have NBT, do a comparation without NBT in consideration
            if (hasNbt == false){
                if(item.withoutTag().anyDamage().matches(currentInvItem.withoutTag(), true) == true){
                    isItemOfSpellSystem = true;
                    spellSystemItemId = spellSystemItemsIds[x];
                    break;
                }
            }
            //If the item of restricted items list have NBT, do a comparation with NBT in consideration
            if (hasNbt == true){
                if(item.anyDamage().matches(currentInvItem, true) == true){
                    isItemOfSpellSystem = true;
                    spellSystemItemId = spellSystemItemsIds[x];
                    break;
                }
            }
        }

        //If the current inventory item is a restricted item, check if the player have unlocked the item in Passive Skill Tree...
        if (isItemOfSpellSystem == true){
            //Store the result of check
            var isFoundAnAttributeModWithThisSpellSystemItemId = false;

            //Check each attribute modifier of the attribute "<attribute:puffish_attributes:resistance_shred>" of player, to search if a modifier have the internal ID of this inventory item, meaning that this item is unlocked in Passive Skill Tree...
            for curAttrModInd in 0 .. attributeModifiersList.length{
                //Get current attribute modifier being checked...
                var currentAttributeMod = attributeModifiersList[curAttrModInd];

                //Inform if this modifier have the internal ID of this restricted inventory item...
                if ((currentAttributeMod.operation as AttributeOperation) == AttributeOperation.ADDITION){
                    if ((currentAttributeMod.amount as double) == spellSystemItemId){
                        isFoundAnAttributeModWithThisSpellSystemItemId = true;
                        break;
                    }
                }
            }

            //If none of the attribute modifiers for attribute "<attribute:puffish_attributes:resistance_shred>", have the internal ID of this restricted inventory item, so force drop the item and notify the player...
            if (isFoundAnAttributeModWithThisSpellSystemItemId == false){
                player.sendMessage("§cVocê não tem a Habilidade necessária para portar esse Item!");
                player.inventory.removeItem(currentInvItem);
                player.drop(currentInvItem, true);
            }
        }
    }

    //--------------------------- MANA REGEN (ENERGY REGEN) FIX PART ---------------------------//

    //Get needed data
    var manaRegenAttribute = player.getAttribute(<attribute:irons_spellbooks:mana_regen>);
    var maxManaValue = (player.getAttribute(<attribute:irons_spellbooks:max_mana>).value as double);
    var manaRegenDebuffModifierUuid = "11111111-2222-3333-4444-aa46465d23a5";

    //Get current mana debuff value
    var currentManaRegenDebuff = -1.0;
    var targetManaRegenDebuff = 0.0;
    var manaRegenDebuffModifier = manaRegenAttribute.getModifier(manaRegenDebuffModifierUuid);
    if (manaRegenDebuffModifier != null){
        currentManaRegenDebuff = (manaRegenDebuffModifier.amount as double);
    }

    //Calculate the debuff for mana regen, according to max mana, to make the mana regen always be a fixed value, instead of increase according max mana...
    if (maxManaValue >= 100.0){
        targetManaRegenDebuff = -0.0;   //<- 1 regen per tick (original is 1 regen per tick)
    }
    if (maxManaValue >= 200.0){
        targetManaRegenDebuff = -0.0;   //<- 2 regen per tick (original is 2 regen per tick)
    }
    if (maxManaValue >= 300.0){
        targetManaRegenDebuff = -0.32;  //<- 2 regen per tick (original is 3 regen per tick)
    }
    if (maxManaValue >= 400.0){
        targetManaRegenDebuff = -0.55;  //<- 2 regen per tick (original is 4 regen per tick)
    }
    if (maxManaValue >= 500.0){
        targetManaRegenDebuff = -0.63;  //<- 2 regen per tick (original is 5 regen per tick)
    }
    if (maxManaValue >= 600.0){
        targetManaRegenDebuff = -0.70;  //<- 2 regen per tick (original is 6 regen per tick)
    }
    if (maxManaValue >= 700.0){
        targetManaRegenDebuff = -0.73;  //<- 2 regen per tick (original is 7 regen per tick)
    }
    if (maxManaValue >= 800.0){
        targetManaRegenDebuff = -0.745; //<- 2 regen per tick (original is 8 regen per tick)
    }
    if (maxManaValue >= 900.0){
        targetManaRegenDebuff = -0.765; //<- 2 regen per tick (original is 9 regen per tick)
    }
    if (maxManaValue >= 999.0){
        targetManaRegenDebuff = -0.8;   //<- 2 regen per tick (original is 10 regen per tick)
    }

    //If the target mana regen debuff is different from current mana regen debuff, update the debuff
    if (currentManaRegenDebuff != targetManaRegenDebuff){
        if (manaRegenDebuffModifier != null){
            manaRegenAttribute.removeModifier(manaRegenDebuffModifierUuid);
            manaRegenDebuffModifier = null;
        }

        manaRegenAttribute.addTransientModifier(AttributeModifier.create("ManaRegDebuff", targetManaRegenDebuff, AttributeOperation.MULTIPLY_BASE, manaRegenDebuffModifierUuid));
    }

    //--------------------------- RESTRICTION FOR OFFHAND PROHIBITED ITEMS ---------------------------//

    //Prepare the information about current offhand item
    var currentOffHandItem = <item:minecraft:air>;
    var currentOffHandItemDisplayName = "";
    var isItemProhibitedToStayInOffHand = false;
    var bestSlotIndexToMoveTheOffHandItem = -1;

    //Check in the list of prohibited offhand items, to know if the current offhand item is prohibited of staying on offhand
    for i, item in offHandProhibitedItems{
        if (player.inventory.getItem(40).asIItemStack().withoutTag().matches(item.withoutTag()) == true){
            //Inform that this is a prohibited item for offhand
            currentOffHandItem = player.inventory.getItem(40).asIItemStack();
            var tempName = currentOffHandItem.displayName.getString();
            currentOffHandItemDisplayName = tempName[1 .. (tempName.length - 1)];
            isItemProhibitedToStayInOffHand = true;

            //Stop this loop here...
            break;
        }
    }

    //Search by the best slot to move the offhand item to, and inform...
    for slotIndex in 0 .. 36{
        if (player.inventory.getItem(slotIndex).asIItemStack().withoutTag().matches(<item:minecraft:air>.withoutTag()) == true){
            bestSlotIndexToMoveTheOffHandItem = slotIndex;
            break;
        }
    }

    //If is a prohibited item for stay in offhand...
    if (isItemProhibitedToStayInOffHand == true){
        //Warn the player
        player.sendMessage("§cO '" + currentOffHandItemDisplayName + "' não pode ser equipado na mão secundária!");

        //If have a free slot to move the item...
        if (bestSlotIndexToMoveTheOffHandItem > -1){
            //Move the item to another free slot
            player.inventory.setItem(40, <item:minecraft:air>);
            player.inventory.setItem(bestSlotIndexToMoveTheOffHandItem, currentOffHandItem);
        }

        //If don't have a free slot to move the item...
        if (bestSlotIndexToMoveTheOffHandItem == -1){
            //Warn the player
            player.sendMessage("§c§lSeu inventário está cheio.");
            player.sendMessage("§c§lSem espaço para re-alocar o item.");
            player.sendMessage("§c§lO '" + currentOffHandItemDisplayName +"' foi largado!");
            //Drop the item
            player.inventory.setItem(40, <item:minecraft:air>);
            player.drop(currentOffHandItem, true);
        }
    }

    //--------------------------- REMOVE THE BASE CHARGE FOR COMBAT ROLL ---------------------------//

    //Get needed data
    var rollCountAttribute = player.getAttribute(<attribute:combatroll:count>);
    var rollCountDebuffModifierUuid = "11111111-2222-3333-4444-aa46465d23a6";

    //Add the debuff modifier that remove the base 1 charge of combat roll, if don't have, leaving player with 0 charges until unlocks more in Passive Skill Tree
    var rollCountDebuffModifier = rollCountAttribute.getModifier(rollCountDebuffModifierUuid);
    if (rollCountDebuffModifier == null){
        rollCountAttribute.addTransientModifier(AttributeModifier.create("RollCountDebuff", -1.0, AttributeOperation.ADDITION, rollCountDebuffModifierUuid));
    }

    //--------------------------- ENCHANTMENTS CARRYING RESTRICTION PART ---------------------------//

    //Prepare the needed data
    //var attributeData            <- Already filled in the "ITEMS CARRYING RESTRICTION PART" part of this script...
    //var attributeModifiersList   <- Already filled in the "ITEMS CARRYING RESTRICTION PART" part of this script...
    //var inventorySize            <- Already filled in the "ITEMS CARRYING RESTRICTION PART" part of this script...

    //Check the inventory of the player to search by items with restricted enchantments...
    for slotInd2 in 0 .. inventorySize{
        //Get current item of inventory...
        var currentInvItem2 = player.inventory.getItem(slotInd2).asIItemStack();

        //If this item is enchanted, check the enchantments...
        if(currentInvItem2.withoutTag().matches(<item:minecraft:air>.withoutTag()) == false){
            if(currentInvItem2.isEnchanted == true){
                //Prepare data of enchantment for this inventory item
                var restrictedEnchantmentsFound = new List<Enchantment>();
                var restrictedEnchantmentsIds = new List<double>();
                
                //Check if a restricted enchantments is present in the current inventory item...
                for x2, enchant in itemsEnchantmentsUnlockable{
                    if (currentInvItem2.getEnchantmentLevel(enchant) != 0){
                        restrictedEnchantmentsFound.add(enchant);
                        restrictedEnchantmentsIds.add(itemsEnchantmentsUnlockableIds[x2]);
                    }
                }

                //Check each restricted enchantment in this inventory item, and check if each one is allowed to player...
                for enchantInd in 0 .. restrictedEnchantmentsFound.length{
                    //Get data about restricted enchantment being checked in this item...
                    var enchantmentBeingChecked = restrictedEnchantmentsFound[enchantInd];
                    var enchantmentIdBeingChecked = restrictedEnchantmentsIds[enchantInd];
                    var isFoundAnAttributeModWithThisEnchantmentId = false;

                    //Check each attribute modifier of the attribute "<attribute:puffish_attributes:resistance_shred>" of player, to search if a modifier have the internal ID of this enchantment, meaning that this enchantment is unlocked in Passive Skill Tree...
                    for curAttrModInd3 in 0 .. attributeModifiersList.length{
                        //Get current attribute modifier being checked...
                        var currentAttributeMod3 = attributeModifiersList[curAttrModInd3];

                        //Inform if this modifier have the internal ID of this restricted enchantment...
                        if ((currentAttributeMod3.operation as AttributeOperation) == AttributeOperation.ADDITION){
                            if ((currentAttributeMod3.amount as double) == enchantmentIdBeingChecked){
                                isFoundAnAttributeModWithThisEnchantmentId = true;
                                break;
                            }
                        }
                    }

                    //If none of the attribute modifiers for attribute "<attribute:puffish_attributes:resistance_shred>", have the internal ID of this restricted enchantment, so force drop the item and notify the player...
                    if(isFoundAnAttributeModWithThisEnchantmentId == false){
                        player.sendMessage("§cVocê não tem Habilidade para ter essa Diagramação no Item!");
                        player.inventory.removeItem(currentInvItem2);
                        player.drop(currentInvItem2, true);
                        break;
                    }
                }
            }
        }
    }

    //--------------------------- SPEAR/BOOMERANG INVENTORY REPOSITION PART ---------------------------//

    //Check if have blue torch in player inventory
    var foundBlueTorchOnInventory = false;
    for slotIndex2 in 0 .. 36{
        if(player.inventory.getItem(slotIndex2).asIItemStack().withoutTag().matches(<item:minecraft:soul_torch>.withoutTag()) == true){
            foundBlueTorchOnInventory = true;
            break;
        }
    }

    //If found a blue torch on player inventory, try to find a Boomerang or Spear and put it on offhand, if it is free
    if(foundBlueTorchOnInventory == true){
        //Continue if the offhand is free
        if(player.inventory.getItem(40).asIItemStack().withoutTag().matches(<item:minecraft:air>.withoutTag()) == true){
            //Search by the first Spear/Boomerang to reposition...
            var targetItemToReposition = <item:minecraft:air>;
            var targetItemToRepositionSlot = -1;
            for slotIndex3 in 0 .. 36{
                //Get current inventory item being checked
                var currentInvItemBc = player.inventory.getItem(slotIndex3).asIItemStack();

                //If is a Spear or Boomerang, inform it
                if(currentInvItemBc.withoutTag().matches(<item:brass_armory:iron_spear>.withoutTag()) == true || currentInvItemBc.withoutTag().matches(<item:brass_armory:iron_boomerang>.withoutTag()) == true){
                    targetItemToReposition = currentInvItemBc;
                    targetItemToRepositionSlot = slotIndex3;
                    break;
                }
            }

            //If found a item to reposition, reposition it
            if(targetItemToRepositionSlot != -1){
                player.inventory.setItem(40, targetItemToReposition);
                player.inventory.setItem(targetItemToRepositionSlot, <item:minecraft:air>);
            }
        }
    }

    //--------------------------- ON PLAYER TICK SPECIAL SKILLS ---------------------------//

    //Prepare the needed data
    //var attributeData            <- Already filled in the "ITEMS CARRYING RESTRICTION PART" part of this script...
    //var attributeModifiersList   <- Already filled in the "ITEMS CARRYING RESTRICTION PART" part of this script...
    //var inventorySize            <- Already filled in the "ITEMS CARRYING RESTRICTION PART" part of this script...

    //Check all attribute modifiers added by the Passive Skill Tree...
    for curAttrModInd6 in 0 .. attributeModifiersList.length{
        //Get current attribute modifier being checked
        var currentAttributeMod5 = attributeModifiersList[curAttrModInd6];

        //Analyze this attribute modifier if the operation is of addition...
        if((currentAttributeMod5.operation as AttributeOperation) == AttributeOperation.ADDITION){
            //Get the value of the modifier
            var amount = (currentAttributeMod5.amount as double);

            //If the amount is corresponding to the skill "Jejum Intermitente", means that the Player have this skill unlocked in Passive Skill Tree. Do the procedure of this special skill...
            if(amount == 0.000011){
                //If the food level is less than 14, set it at 14 again
                if(player.foodData.getFoodLevel() < 14){
                    player.foodData.setFoodLevel(14);
                }
            }
        }
    }
});










//Blocks Players from interacting with certain blocks if they do not have such blocks unlocked in the Passive Skill Tree.
//
//   Whenever a Player unlocks a Skill in the Passive Skill Tree that allows them to build and use a certain block, the Passive Skill Tree will add a modifier
//   to the "puffish_attributes:resistance_shred" attribute of Player. This modifier adds a value to that attribute of Player, and the added value corresponds to the
//   ID of the block that will be allowed to the Player use, in the arrays below.
//
//   If the Player try to use an block whose "puffish_attributes:resistance_shred" attribute of Player, does not have any modifier equivalent to that block ID, the
//   Player interaction with the block will be canceled.

//Prepare a list of all blocks that should be unlocked in Passive Skill Tree, to be interacted...

var spellSystemBlocks as Block[] = [
    <block:irons_spellbooks:inscription_table>,
    <block:irons_spellbooks:inscription_table>
];

//Prepare a list with a internal ID (valid for this script only) of all blocks that should be unlocked in Passive Skill Tree, to be interacted...

var spellSystemBlocksIds as double[] = [
    0.0001,
    0.0002
];

//Do the tasks of Passive Skill Tree in every block Right Click of players...

events.register<RightClickBlockEvent>((event) => {
    //Get base data
    var player = event.entity as Player;

    //Stop here if is client side...
	if (player.level.isClientSide == true) {
        return;
	}

    //--------------------------- BLOCKS INTERACTION RESTRICTION PART ---------------------------//

    //Prepare the needed data
    var interactedBlock = ((player.level.getBlockState((event.blockPos as BlockPos)) as BlockState).block as Block);
    var isInteractedBlockASpellSystemBlock = false;
    var isInteractedBlockAllowedForPlayer = false;

    //Check if the interacted block, is a restricted block
    for xj, item in spellSystemBlocks{
        if(item.matches(interactedBlock) == true){
            isInteractedBlockASpellSystemBlock = true;
        }
    }

    //If is a restricted block, check if the player have an attribute modifier for "<attribute:puffish_attributes:resistance_shred>" attribute, containing the internal ID of this block, meaning that the block was unlocked in Passive Skill Tree...
    if (isInteractedBlockASpellSystemBlock == true){
        //Check each block found in the restricted blocks list...
        for xx, item in spellSystemBlocks{
            //Get data of current restricted block being checked
            var currentCheckingSpellSystemBlock = item;
            var currentCheckingSpellSystemBlockId = spellSystemBlocksIds[xx];

            //Get the attribute modifiers of attribute "<attribute:puffish_attributes:resistance_shred>"...
            var attributeData = player.getAttribute(<attribute:puffish_attributes:resistance_shred>);
            var attributeModifiersList = attributeData.modifiers as List<AttributeModifier>;

            //Check if some attribute modifier have the internal ID of this block, meaning that the block was unlocked in Passive Skill Tree...
            for curAttrModIndII in 0 .. attributeModifiersList.length{
                //Get current attribute modifier being checked
                var currentAttributeMod = attributeModifiersList[curAttrModIndII];

                //Inform if this modifier have the internal ID of this restricted block, if have, means that the block is allowed for player...
                if((currentAttributeMod.operation as AttributeOperation) == AttributeOperation.ADDITION){
                    if((currentAttributeMod.amount as double) == currentCheckingSpellSystemBlockId){
                        isInteractedBlockAllowedForPlayer = true;
                        break;
                    }
                }
            }
        }
    }

    //If is not a restricted block, means that is a normal block, then, force the information that the block is allowed for player interaction...
    if(isInteractedBlockASpellSystemBlock == false){
        isInteractedBlockAllowedForPlayer = true;
    }

    //If the interacted block is a restricted block, and is not unlocked by player in Passive Skill Tree, then, block this interaction and notify the player...
    if(isInteractedBlockAllowedForPlayer == false){
        player.sendMessage("§cVocê não tem a Habilidade necessária para usar este Bloco!");
        event.cancel();
    }
});










//Blocks Players from interacting with certain itens if they do not have such itens unlocked in the Passive Skill Tree.

//Do the tasks of Passive Skill Tree in every item Right Click of players...

events.register<RightClickItemEvent>((event) => {
    //Get base data
    var player = event.entity as Player;

    //Stop here if is client side...
	if (player.level.isClientSide == true) {
        return;
	}

    //--------------------------- DIRECTLY SCROLLS (COMMAND CHIPS) INTERACTION BLOCK PART ---------------------------//

    if(event.itemStack.withoutTag().matches(<item:irons_spellbooks:scroll>.withoutTag()) == true){
        player.sendMessage("§cInstale o Chip de Comando num Dispositivo, para usar!");
        event.cancel();
    }

    //--------------------------- ENERGY USE ON EACH GRAPPLING HOOK USE ---------------------------//

    if(event.itemStack.withoutTag().matches(<item:grapplemod:grapplinghook>.withoutTag()) == true){
        player.causeFoodExhaustion(5.0);
    }
});










//Prepare a list of restricted items that not will be allowed to be repaired/renamed on anvil

var anvilRestrictedItems as IItemStack[] = [
    <item:irons_spellbooks:scroll>,
    <item:grapplemod:grapplinghook>
];

//Do the tasks of Passive Skill Tree in every item Anvil Update of players...

events.register<AnvilUpdateEvent>((event) => {
    //Get base data
    var player = event.player as Player;

    //Stop here if is client side...
	if (player.level.isClientSide == true) {
        return;
	}

    //--------------------------- ITEMS REPAIRING RESTRICTION ---------------------------//

    //Check if one of the restricted items is found on anvil...
    for y, rItem in anvilRestrictedItems{
        //If the item matches, inform that is not allowed and cancel this repair
        if(rItem.withoutTag().anyDamage().matches(event.right.withoutTag(), true) == true || rItem.withoutTag().anyDamage().matches(event.left.withoutTag(), true) == true){
            player.sendMessage("§cAVISO: Este Item não pode ser reparado ou renomeado!");
            event.cancel();
            break;
        }
    }
});










//Do the tasks of Passive Skill Tree in every item Anvil Update of players...

events.register<BlockBreakEvent>((event) => {
    //Get base data
    var player = event.player as Player;

    //Stop here if is client side...
	if (player.level.isClientSide == true) {
        return;
	}

    //--------------------------- ON BLOCK BREAK EVENT SPECIAL SKILLS ---------------------------//

    //Prepare the needed data
    var attributeData = player.getAttribute(<attribute:puffish_attributes:resistance_shred>);
    var attributeModifiersList = attributeData.modifiers as List<AttributeModifier>;
    var breakedBlock = ((player.level.getBlockState((event.pos as BlockPos)) as BlockState).block as Block);

    //Check all attribute modifiers added by the Passive Skill Tree...
    for curAttrModInd4 in 0 .. attributeModifiersList.length{
        //Get current attribute modifier being checked
        var currentAttributeMod = attributeModifiersList[curAttrModInd4];

        //Analyze this attribute modifier if the operation is of addition...
        if((currentAttributeMod.operation as AttributeOperation) == AttributeOperation.ADDITION){
            //Get the value of the modifier
            var amount = (currentAttributeMod.amount as double);

            //If the amount is corresponding to the skill "Minerador Arqueólogo", means that the Player have this skill unlocked in Passive Skill Tree. Do the procedure of this special skill...
            if(amount == 0.000010){
                //Get the item of main hand of player
                var mainHandItem = player.mainHandItem.asIItemStack();
                var rngNumber = player.level.random.nextDouble();   //Between 0.0 and 1.0

                //Check if should drop the bonus
                var shouldDropBonus = false;
                if(breakedBlock.matches(<block:minecraft:diamond_ore>) == true){ shouldDropBonus = true; }
                if(breakedBlock.matches(<block:minecraft:deepslate_diamond_ore>) == true){ shouldDropBonus = true; }
                if(breakedBlock.matches(<block:minecraft:emerald_ore>) == true){ shouldDropBonus = true; }
                if(breakedBlock.matches(<block:minecraft:deepslate_emerald_ore>) == true){ shouldDropBonus = true; }
                if(mainHandItem.hasTag == true){
                    //If the item have a Silk Touch enchantment, cancel the bonus...
                    if(mainHandItem.isEnchanted == true){
                        if(mainHandItem.getEnchantmentLevel(<enchantment:minecraft:silk_touch>) != 0){
                            shouldDropBonus = false;
                        }
                    }
                }

                //If should drop the bonus...
                if(shouldDropBonus == true){
                    //Prepare the array of dropable bonus itens
                    var mineradorArqueologoCommons as IItemStack[] = [ <item:minecraft:angler_pottery_sherd>, <item:minecraft:archer_pottery_sherd>, <item:minecraft:arms_up_pottery_sherd>, <item:minecraft:blade_pottery_sherd>, <item:minecraft:brewer_pottery_sherd>,
                                                                    <item:minecraft:burn_pottery_sherd>, <item:minecraft:danger_pottery_sherd>, <item:minecraft:explorer_pottery_sherd>, <item:minecraft:friend_pottery_sherd>, <item:minecraft:heart_pottery_sherd>,
                                                                    <item:minecraft:heartbreak_pottery_sherd>, <item:minecraft:howl_pottery_sherd>, <item:minecraft:miner_pottery_sherd>, <item:minecraft:mourner_pottery_sherd>, <item:minecraft:plenty_pottery_sherd>,
                                                                    <item:minecraft:prize_pottery_sherd>, <item:minecraft:sheaf_pottery_sherd>, <item:minecraft:shelter_pottery_sherd>, <item:minecraft:skull_pottery_sherd>, <item:minecraft:snort_pottery_sherd>,
                                                                    <item:spelunkers_charm:geode>, <item:spelunkers_charm:geode>, <item:spelunkers_charm:geode>, <item:spelunkers_charm:geode>, <item:spelunkers_charm:geode>, <item:spelunkers_charm:geode> ];
                    var mineradorArqueologoUncommons as IItemStack[] = [ <item:spelunkers_charm:old_miners_bundle> ];

                    //Do the drop of the bonus itens
                    var bonusItemsToDrop = new List<IItemStack>();
                    if(rngNumber >= 0.4){
                        bonusItemsToDrop.add(mineradorArqueologoCommons[(player.level.random.nextIntBetweenInclusive(0, ((mineradorArqueologoCommons.length as int) - 1)))]);
                    }
                    if(rngNumber < 0.4){
                        bonusItemsToDrop.add(mineradorArqueologoUncommons[0]);
                    }

                    //Drop each bonus item in the list
                    for ixx in 0 .. bonusItemsToDrop.length{
                        player.drop(bonusItemsToDrop[ixx], true);
                    }

                    //Notify the player
                    if(rngNumber >= 0.0 && rngNumber < 0.1) { player.sendMessage("* Acho que encontrei alguma coisa... *"); }
                    if(rngNumber >= 0.1 && rngNumber < 0.2) { player.sendMessage("* Hm... Tem mais algo aqui. *"); }
                    if(rngNumber >= 0.2 && rngNumber < 0.3) { player.sendMessage("* Tem mais alguma coisa. Interessante. *"); }
                    if(rngNumber >= 0.3 && rngNumber < 0.4) { player.sendMessage("* De quem será que era isso? *"); }
                    if(rngNumber >= 0.4 && rngNumber < 0.5) { player.sendMessage("* Quem será que deixou isso aqui? *"); }
                    if(rngNumber >= 0.5 && rngNumber < 0.6) { player.sendMessage("* Maravilha, achei mais algo! *"); }
                    if(rngNumber >= 0.6 && rngNumber < 0.7) { player.sendMessage("* Mais um achado pra coleção. *"); }
                    if(rngNumber >= 0.7 && rngNumber < 0.8) { player.sendMessage("* Hm... Gostei. *"); }
                    if(rngNumber >= 0.9 && rngNumber <= 1.0) { player.sendMessage("* O lugar disso era no museu! *"); }
                }
            }

            //...
        }
    }
});