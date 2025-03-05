import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.table.LootTableManager;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootCondition;
import crafttweaker.api.loot.condition.ConditionReferenceLootCondition;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.util.math.RandomSource;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.item.IItemStack;
import stdlib.List;





//Remove unnecessary loot modifiers by mod
//Use "/ct dump loot_modifiers" to list all registered loot table modifiers!

loot.modifiers.removeByModId("artifacts");
loot.modifiers.removeByModId("chalk");
loot.modifiers.removeByModId("simplehats");
loot.modifiers.removeByModId("travelersbackpack");

//Remove unnecessary loot modifiers by unique id and mod
//Use "/ct dump loot_modifiers" to list all registered loot table modifiers!

loot.modifiers.removeByName("supplementaries:ash_from_burning_mobs");





//Prepare a list of all chest loot tables registered
//Use "/ct dump loot_tables" to list all registered Loot Tables!

var allChestLootTablesIds as ResourceLocation[] = [
    <resource:artifacts:chests/campsite_barrel>,
    <resource:artifacts:chests/campsite_barrel/cobblestone>,
    <resource:artifacts:chests/campsite_barrel/cobwebs>,
    <resource:artifacts:chests/campsite_barrel/crops>,
    <resource:artifacts:chests/campsite_barrel/food>,
    <resource:artifacts:chests/campsite_barrel/gems>,
    <resource:artifacts:chests/campsite_barrel/ingots>,
    <resource:artifacts:chests/campsite_barrel/minecarts>,
    <resource:artifacts:chests/campsite_barrel/ores>,
    <resource:artifacts:chests/campsite_barrel/rails>,
    <resource:artifacts:chests/campsite_barrel/tnt>,
    <resource:artifacts:chests/campsite_chest>,
    <resource:artifacts:inject/chests/abandoned_mineshaft>,
    <resource:artifacts:inject/chests/ancient_city>,
    <resource:artifacts:inject/chests/ancient_city_ice_box>,
    <resource:artifacts:inject/chests/bastion_hoglin_stable>,
    <resource:artifacts:inject/chests/bastion_treasure>,
    <resource:artifacts:inject/chests/buried_treasure>,
    <resource:artifacts:inject/chests/desert_pyramid>,
    <resource:artifacts:inject/chests/end_city_treasure>,
    <resource:artifacts:inject/chests/igloo_chest>,
    <resource:artifacts:inject/chests/jungle_temple>,
    <resource:artifacts:inject/chests/nether_bridge>,
    <resource:artifacts:inject/chests/pillager_outpost>,
    <resource:artifacts:inject/chests/ruined_portal>,
    <resource:artifacts:inject/chests/shipwreck_treasure>,
    <resource:artifacts:inject/chests/spawn_bonus_chest>,
    <resource:artifacts:inject/chests/stronghold_corridor>,
    <resource:artifacts:inject/chests/underwater_ruin_big>,
    <resource:artifacts:inject/chests/village/village_armorer>,
    <resource:artifacts:inject/chests/village/village_butcher>,
    <resource:artifacts:inject/chests/village/village_desert_house>,
    <resource:artifacts:inject/chests/village/village_plains_house>,
    <resource:artifacts:inject/chests/village/village_savanna_house>,
    <resource:artifacts:inject/chests/village/village_snowy_house>,
    <resource:artifacts:inject/chests/village/village_taiga_house>,
    <resource:artifacts:inject/chests/village/village_tannery>,
    <resource:artifacts:inject/chests/village/village_temple>,
    <resource:artifacts:inject/chests/village/village_toolsmith>,
    <resource:artifacts:inject/chests/village/village_weaponsmith>,
    <resource:artifacts:inject/chests/woodland_mansion>,

    <resource:betterdungeons:skeleton_dungeon/chests/common>,
    <resource:betterdungeons:skeleton_dungeon/chests/middle>,
    <resource:betterdungeons:small_dungeon/chests/loot_piles>,
    <resource:betterdungeons:small_nether_dungeon/chests/common>,
    <resource:betterdungeons:spider_dungeon/chests/egg_room>,
    <resource:betterdungeons:zombie_dungeon/chests/common>,
    <resource:betterdungeons:zombie_dungeon/chests/special>,
    <resource:betterdungeons:zombie_dungeon/chests/tombstone>,

    <resource:chalk:chests/abandoned_mineshaft_chalk_loot>,
    <resource:chalk:chests/desert_pyramid_chalk_loot>,
    <resource:chalk:chests/simple_dungeon_chalk_loot>,
    <resource:chalk:chests/village_chalk_loot>,

    <resource:farmersdelight:chests/fd_abandoned_mineshaft>,
    <resource:farmersdelight:chests/fd_bastion_hoglin_stable>,
    <resource:farmersdelight:chests/fd_bastion_treasure>,
    <resource:farmersdelight:chests/fd_end_city_treasure>,
    <resource:farmersdelight:chests/fd_pillager_outpost>,
    <resource:farmersdelight:chests/fd_ruined_portal>,
    <resource:farmersdelight:chests/fd_shipwreck_supply>,
    <resource:farmersdelight:chests/fd_simple_dungeon>,
    <resource:farmersdelight:chests/fd_village_butcher>,
    <resource:farmersdelight:chests/fd_village_desert_house>,
    <resource:farmersdelight:chests/fd_village_plains_house>,
    <resource:farmersdelight:chests/fd_village_savanna_house>,
    <resource:farmersdelight:chests/fd_village_snowy_house>,
    <resource:farmersdelight:chests/fd_village_taiga_house>,

    <resource:irons_spellbooks:chests/additional_ancient_city_loot>,
    <resource:irons_spellbooks:chests/additional_generic_loot>,
    <resource:irons_spellbooks:chests/additional_good_loot>,
    <resource:irons_spellbooks:chests/additional_nether_loot>,
    <resource:irons_spellbooks:chests/additional_treasure_loot>,
    <resource:irons_spellbooks:chests/battleground/burial_loot>,
    <resource:irons_spellbooks:chests/battleground/piglin_camp>,
    <resource:irons_spellbooks:chests/bookshelf_loot>,
    <resource:irons_spellbooks:chests/catacombs/armory_loot>,
    <resource:irons_spellbooks:chests/catacombs/coffin_loot>,
    <resource:irons_spellbooks:chests/catacombs/crypt_loot>,
    <resource:irons_spellbooks:chests/catacombs/hidden_trough_treasure>,
    <resource:irons_spellbooks:chests/catacombs/wall_loot>,
    <resource:irons_spellbooks:chests/citadel/wall_loot>,
    <resource:irons_spellbooks:chests/component_storage>,
    <resource:irons_spellbooks:chests/evoker_fort>,
    <resource:irons_spellbooks:chests/evoker_fort/guard_tower>,
    <resource:irons_spellbooks:chests/filler_storage_loot>,
    <resource:irons_spellbooks:chests/generic_magic_treasure>,
    <resource:irons_spellbooks:chests/impaled_icebreaker/captain_quarters>,
    <resource:irons_spellbooks:chests/impaled_icebreaker/food_barrel>,
    <resource:irons_spellbooks:chests/magic_bookshelf_loot>,
    <resource:irons_spellbooks:chests/mangrove_hut>,
    <resource:irons_spellbooks:chests/mangrove_hut/hidden_potion_storage>,
    <resource:irons_spellbooks:chests/mangrove_hut/potion_ingredient_storage>,
    <resource:irons_spellbooks:chests/mountain_tower/ice_barrel>,
    <resource:irons_spellbooks:chests/mountain_tower/mountain_tower>,
    <resource:irons_spellbooks:chests/priest_house>,
    <resource:irons_spellbooks:chests/pyromancer_tower/burnt_chest>,
    <resource:irons_spellbooks:chests/pyromancer_tower/fire_ale_cask>,
    <resource:irons_spellbooks:chests/pyromancer_tower/fire_ale_trove>,
    <resource:irons_spellbooks:chests/pyromancer_tower/old_cask>,
    <resource:irons_spellbooks:chests/pyromancer_tower/pyromancer_basic_storage>,
    <resource:irons_spellbooks:chests/pyromancer_tower/pyromancer_supplies>,
    <resource:irons_spellbooks:chests/sewer_loot>,
    <resource:irons_spellbooks:chests/wheat>,

    <resource:lootr:chests/elytra>,

    <resource:lostcities:chests/lostcitychest>,
    <resource:lostcities:chests/raildungeonchest>,

    <resource:minecraft:chests/abandoned_mineshaft>,
    <resource:minecraft:chests/ancient_city>,
    <resource:minecraft:chests/ancient_city_ice_box>,
    <resource:minecraft:chests/bastion_bridge>,
    <resource:minecraft:chests/bastion_hoglin_stable>,
    <resource:minecraft:chests/bastion_other>,
    <resource:minecraft:chests/bastion_treasure>,
    <resource:minecraft:chests/buried_treasure>,
    <resource:minecraft:chests/desert_pyramid>,
    <resource:minecraft:chests/end_city_treasure>,
    <resource:minecraft:chests/igloo_chest>,
    <resource:minecraft:chests/jungle_temple>,
    <resource:minecraft:chests/jungle_temple_dispenser>,
    <resource:minecraft:chests/nether_bridge>,
    <resource:minecraft:chests/pillager_outpost>,
    <resource:minecraft:chests/ruined_portal>,
    <resource:minecraft:chests/shipwreck_map>,
    <resource:minecraft:chests/shipwreck_supply>,
    <resource:minecraft:chests/shipwreck_treasure>,
    <resource:minecraft:chests/simple_dungeon>,
    <resource:minecraft:chests/spawn_bonus_chest>,
    <resource:minecraft:chests/stronghold_corridor>,
    <resource:minecraft:chests/stronghold_crossing>,
    <resource:minecraft:chests/stronghold_library>,
    <resource:minecraft:chests/underwater_ruin_big>,
    <resource:minecraft:chests/underwater_ruin_small>,
    <resource:minecraft:chests/village/village_armorer>,
    <resource:minecraft:chests/village/village_butcher>,
    <resource:minecraft:chests/village/village_cartographer>,
    <resource:minecraft:chests/village/village_desert_house>,
    <resource:minecraft:chests/village/village_fisher>,
    <resource:minecraft:chests/village/village_fletcher>,
    <resource:minecraft:chests/village/village_mason>,
    <resource:minecraft:chests/village/village_plains_house>,
    <resource:minecraft:chests/village/village_savanna_house>,
    <resource:minecraft:chests/village/village_shepherd>,
    <resource:minecraft:chests/village/village_snowy_house>,
    <resource:minecraft:chests/village/village_taiga_house>,
    <resource:minecraft:chests/village/village_tannery>,
    <resource:minecraft:chests/village/village_temple>,
    <resource:minecraft:chests/village/village_toolsmith>,
    <resource:minecraft:chests/village/village_weaponsmith>,
    <resource:minecraft:chests/woodland_mansion>
];





//Prepare the list of itens of each rank of loot

var crapChestLootItems as IItemStack[] = [               //<- Each item have a chance of 40% to appear and can have a quantity between 5 and 16. This tier of itens have 75% of chance to appear in the loots!
	<item:minecraft:dried_kelp>,
	<item:corn_delight:tortilla_chip>
];

var commonChestLootItems as IItemStack[] = [             //<- Each item have a chance of 35% to appear and can have a quantity between 2 and 8. This tier of itens have 55% of chance to appear in the loots!
	<item:minecraft:string>,
	<item:minecraft:bone>,
	<item:minecraft:paper>,
	<item:imbleeding:bandage>,
	<item:cgm:basic_bullet>
];

var uncommonChestLootItems as IItemStack[] = [           //<- Each item have a chance of 25% to appear and can have a quantity between 2 and 5. This tier of itens have 40% of chance to appear in the loots!
	<item:minecraft:cobweb>,
	<item:minecraft:nether_brick>,
	<item:doggytalents:bandaid>,
	<item:smallships:cannon_ball>,
	<item:cgm:shell>,
	<item:corn_delight:popcorn_box>,
	<item:minecraft:arrow>,
	<item:minecraft:gunpowder>,
    <item:k_turrets:gauss_bullet>,
    <item:cgm:advanced_bullet>
];

var rareChestLootItems as IItemStack[] = [               //<- Each item have a chance of 14% to appear and can have a quantity between 1 and 3. This tier of itens have 25% of chance to appear in the loots!
	<item:minecraft:cookie>,
	<item:minecraft:suspicious_stew>,
    <item:minecraft:emerald>,
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:projectile_protection", lvl: 1}]}),
    <item:doggytalents:training_treat>,
    <item:simplehats:hatbag_rare>,
    <item:imbleeding:honey_bandage>,
    <item:quark:glow_shroom>,
    <item:minecraft:netherite_upgrade_smithing_template>
];

var veryRareChestLootItems as IItemStack[] = [           //<- Each item have a chance of 8% to appear and can have a quantity between 1 and 2. This tier of itens have 15% of chance to appear in the loots!
	<item:minecraft:map>,
    <item:minecraft:trident>,
    <item:minecraft:totem_of_undying>,
    <item:minecraft:splash_potion>.withTag({Potion: "minecraft:long_weakness"}),
    <item:minecraft:nautilus_shell>,
    <item:minecraft:heart_of_the_sea>,
    <item:minecraft:globe_banner_pattern>,
    <item:minecraft:piglin_banner_pattern>,
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:protection", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:swift_sneak", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 1}]}),
    <item:simplehats:hatbag_epic>,
    <item:imbleeding:splint>,
    <item:healing:super_health_elixir>,
    <item:cgm:grenade>,
    <item:cgm:stun_grenade>
];

var extremelyRareChestLootItems as IItemStack[] = [      //<- Each item have a chance of 4% to appear and can have a quantity between 1 and 1. This tier of itens have 12% of chance to appear in the loots!
	<item:minecraft:skeleton_skull>,
	<item:minecraft:wither_skeleton_skull>,
	<item:minecraft:zombie_head>,
	<item:minecraft:creeper_head>,
	<item:minecraft:music_disc_13>,
	<item:minecraft:music_disc_cat>,
	<item:minecraft:music_disc_blocks>,
	<item:minecraft:music_disc_chirp>,
	<item:minecraft:music_disc_far>,
	<item:minecraft:music_disc_mall>,
	<item:minecraft:music_disc_mellohi>,
	<item:minecraft:music_disc_stal>,
	<item:minecraft:music_disc_strad>,
	<item:minecraft:music_disc_ward>,
	<item:minecraft:music_disc_11>,
	<item:minecraft:music_disc_wait>,
	<item:minecraft:music_disc_otherside>,
	<item:minecraft:music_disc_5>,
	<item:minecraft:music_disc_pigstep>,
	<item:minecraft:music_disc_relic>,
	<item:doggytalents:disc_bwv_1080_fugue_11>,
	<item:doggytalents:disc_bwv_849_fugue>,
	<item:doggytalents:disc_okami_ryoshima_coast_arr>,
	<item:doggytalents:disc_chopin_op64_no1>,
	<item:alexsmobs:music_disc_thime>,
	<item:alexsmobs:music_disc_daze>,
	<item:minecraft:diamond>,
	<item:minecraft:netherite_ingot>,
    <item:minecraft:sentry_armor_trim_smithing_template>,
    <item:minecraft:vex_armor_trim_smithing_template>,
    <item:minecraft:wild_armor_trim_smithing_template>,
    <item:minecraft:coast_armor_trim_smithing_template>,
    <item:minecraft:dune_armor_trim_smithing_template>,
    <item:minecraft:wayfinder_armor_trim_smithing_template>,
    <item:minecraft:raiser_armor_trim_smithing_template>,
    <item:minecraft:shaper_armor_trim_smithing_template>,
    <item:minecraft:host_armor_trim_smithing_template>,
    <item:minecraft:ward_armor_trim_smithing_template>,
    <item:minecraft:silence_armor_trim_smithing_template>,
    <item:minecraft:tide_armor_trim_smithing_template>,
    <item:minecraft:snout_armor_trim_smithing_template>,
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:thorns", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:frost_walker", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:sharpness", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:power", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:impaling", lvl: 1}]}),
    <item:spelunkers_charm:old_miners_bundle>,
    <item:spelunkers_charm:geode>,
    <item:artifacts:whoopee_cushion>,
    <item:artifacts:kitty_slippers>,
    <item:grapplemod:grapplinghook>,
    <item:skilltree:wisdom_scroll>,
    <item:alexsmobs:sombrero>,
    <item:artifacts:cowboy_hat>
];

var ultraRareChestLootItems as IItemStack[] = [          //<- Each item have a chance of 3% to appear and can have a quantity between 1 and 1. This tier of itens have 10% of chance to appear in the loots!
	<item:minecraft:sniffer_egg>,
	<item:minecraft:turtle_helmet>,
	<item:minecraft:bow>.withTag({RepairCost: 1, Enchantments: [{id: "minecraft:infinity", lvl: 1}]}),
    <item:minecraft:crossbow>.withTag({RepairCost: 1, Enchantments: [{id: "minecraft:infinity", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:silk_touch", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:knockback", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:punch", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:efficiency", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:piercing", lvl: 1}]}),
    <item:artifacts:plastic_drinking_hat>,
    <item:artifacts:snorkel>,
    <item:artifacts:night_vision_goggles>,
    <item:artifacts:villager_hat>,
    <item:artifacts:anglers_hat>,
    <item:artifacts:scarf_of_invisibility>,
    <item:artifacts:cross_necklace>,
    <item:artifacts:panic_necklace>,
    <item:artifacts:shock_pendant>,
    <item:artifacts:flame_pendant>,
    <item:artifacts:thorn_pendant>,
    <item:artifacts:charm_of_sinking>,
    <item:artifacts:cloud_in_a_bottle>,
    <item:artifacts:universal_attractor>,
    <item:artifacts:helium_flamingo>,
    <item:artifacts:digging_claws>,
    <item:artifacts:feral_claws>,
    <item:artifacts:power_glove>,
    <item:artifacts:fire_gauntlet>,
    <item:artifacts:pocket_piston>,
    <item:artifacts:vampiric_glove>,
    <item:artifacts:pickaxe_heater>,
    <item:artifacts:aqua_dashers>,
    <item:artifacts:bunny_hoppers>,
    <item:artifacts:snowshoes>,
    <item:artifacts:steadfast_spikes>,
    <item:artifacts:flippers>,
    <item:artifacts:rooted_boots>,
    <item:chromaticarsenal:golden_heart>,
    <item:chromaticarsenal:shadow_treads>,
    <item:chromaticarsenal:cryo_ring>,
    <item:chromaticarsenal:momentum_stone>,
    <item:chromaticarsenal:super_golden_heart>,
    <item:chromaticarsenal:super_friendly_fire_flower>,
    <item:chromaticarsenal:super_harpy_feather>,
    <item:chromaticarsenal:super_glow_ring>,
    <item:grapplemod:motorupgradeitem>,
    <item:skilltree:amnesia_scroll>,
    <item:copperntraps:anonmask_helmet>,
    <item:alexsmobs:ancient_dart>
];





//Install a loot modifier to all registered Chest Loot Tables to add all itens of arrays above, to spawn in loot chests
//Use "/loot give @p loot minecraft:chests/spawn_bonus_chest" to test the loot delivery.

for i in 0 .. allChestLootTablesIds.length{

    //Register a new loot modifier for this item...
    loot.modifiers.register(("the_last_days__chest_loot_modifier_" + i), LootConditions.only(LootTableIdLootCondition.create(allChestLootTablesIds[i])),
        (stacks, context) =>{
            //Prepare a new list of stacks of itens to give in this Chest Loot Table
            var itensToGiveInThisLoot = new stdlib.List<IItemStack>();

            //Add all itens of tier "crap" in this loot...
            addAllItensOfArrayToThisLoot(context, itensToGiveInThisLoot, 0.75, crapChestLootItems, 0.40, 5, 16);

            //Add all itens of tier "common" in this loot...
            addAllItensOfArrayToThisLoot(context, itensToGiveInThisLoot, 0.55, commonChestLootItems, 0.35, 2, 8);

            //Add all itens of tier "uncommon" in this loot...
            addAllItensOfArrayToThisLoot(context, itensToGiveInThisLoot, 0.40, uncommonChestLootItems, 0.25, 2, 5);

            //Add all itens of tier "rare" in this loot...
            addAllItensOfArrayToThisLoot(context, itensToGiveInThisLoot, 0.25, rareChestLootItems, 0.14, 1, 3);

            //Add all itens of tier "very rare" in this loot...
            addAllItensOfArrayToThisLoot(context, itensToGiveInThisLoot, 0.15, veryRareChestLootItems, 0.08, 1, 2);

            //Add all itens of tier "extremely rare" in this loot...
            addAllItensOfArrayToThisLoot(context, itensToGiveInThisLoot, 0.12, extremelyRareChestLootItems, 0.04, 1, 1);

            //Add all itens of tier "ultra rare" in this loot...
            addAllItensOfArrayToThisLoot(context, itensToGiveInThisLoot, 0.10, ultraRareChestLootItems, 0.03, 1, 1);

            //Return this list to the loot...
            return itensToGiveInThisLoot;
        }
    );

}















//Auxiliar methods

public function getRandomNumberBetweenMinAndMax(context as crafttweaker.api.loot.LootContext, min as int, max as int) as int {
    //Return a random value between min and max...
    return (((context.random.nextDouble() * (max - min)) + min) as int);
}

public function addAllItensOfArrayToThisLoot(context as crafttweaker.api.loot.LootContext, listOfLoot as stdlib.List<IItemStack>, chanceOfArray as double, arrayToAdd as IItemStack[], chanceOfEachItem as double, qtyMin as int, qtyMax as int) as void{
    //If the chance of this array appear in loot not was satisfied, cancel
    if(context.random.nextDouble() > chanceOfArray){
        return;
    }

    //Add each item that satisfy the chance, to the list of itens that will appear in the loot
    for x, item in arrayToAdd{
        if (context.random.nextDouble() <= chanceOfEachItem){
            listOfLoot.add(item * getRandomNumberBetweenMinAndMax(context, qtyMin, qtyMax));
        }
    }
}