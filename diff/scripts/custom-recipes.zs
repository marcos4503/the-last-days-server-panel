import crafttweaker.api.recipe.FurnaceRecipeManager;

//========================================================================================== VANILLA CHANGES ====================================================================================================//

//#--> Removing Crafts...

//============================== RECIPES OF ITEM BANING ========================================//

craftingTable.remove(<item:minecraft:spectral_arrow>);
craftingTable.removeByName("minecraft:tipped_arrow");
craftingTable.remove(<item:minecraft:brewing_stand>);
craftingTable.remove(<item:minecraft:enchanting_table>);
craftingTable.remove(<item:minecraft:nether_brick>);
craftingTable.remove(<item:minecraft:nether_bricks>);
craftingTable.remove(<item:minecraft:red_nether_bricks>);
craftingTable.remove(<item:minecraft:nether_brick_fence>);
craftingTable.remove(<item:minecraft:blast_furnace>);
craftingTable.remove(<item:minecraft:furnace_minecart>);
craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.remove(<item:minecraft:beetroot_soup>);
craftingTable.remove(<item:minecraft:rabbit_stew>);
craftingTable.remove(<item:minecraft:bread>);
furnace.remove(<item:minecraft:nether_brick>);
furnace.remove(<item:minecraft:cracked_nether_bricks>);
furnace.remove(<item:minecraft:iron_nugget>);
furnace.remove(<item:minecraft:gold_nugget>);
furnace.remove(<item:minecraft:cooked_beef>);
furnace.remove(<item:minecraft:baked_potato>);
furnace.remove(<item:minecraft:cooked_salmon>);
furnace.remove(<item:minecraft:cooked_rabbit>);
furnace.remove(<item:minecraft:cooked_mutton>);
furnace.remove(<item:minecraft:dried_kelp>);
furnace.remove(<item:minecraft:cooked_cod>);
furnace.remove(<item:minecraft:popped_chorus_fruit>);
furnace.remove(<item:minecraft:cooked_porkchop>);
furnace.remove(<item:minecraft:cooked_chicken>);
blastFurnace.removeAll();

//============================== RECIPES TO BE REBALANCED ========================================//

craftingTable.remove(<item:minecraft:anvil>);
craftingTable.remove(<item:minecraft:arrow>);
craftingTable.remove(<item:minecraft:shield>);
craftingTable.remove(<item:minecraft:leather_horse_armor>);
craftingTable.remove(<item:minecraft:powered_rail>);
craftingTable.remove(<item:minecraft:detector_rail>);
craftingTable.remove(<item:minecraft:activator_rail>);
craftingTable.remove(<item:minecraft:ender_eye>);
craftingTable.remove(<item:minecraft:netherite_upgrade_smithing_template>);
craftingTable.remove(<item:minecraft:creeper_banner_pattern>);
craftingTable.remove(<item:minecraft:skull_banner_pattern>);
craftingTable.remove(<item:minecraft:tnt>);
craftingTable.remove(<item:minecraft:soul_torch>);
craftingTable.remove(<item:minecraft:soul_lantern>);
craftingTable.remove(<item:minecraft:soul_campfire>);
craftingTable.remove(<item:minecraft:glowstone_dust>);
craftingTable.remove(<item:minecraft:glow_berries>);
craftingTable.remove(<item:minecraft:note_block>);
craftingTable.remove(<item:minecraft:jukebox>);
craftingTable.remove(<item:minecraft:magma_block>);
craftingTable.remove(<item:minecraft:soul_sand>);
craftingTable.remove(<item:minecraft:stonecutter>);
furnace.remove(<item:minecraft:emerald>);
furnace.remove(<item:minecraft:iron_ingot>);
furnace.remove(<item:minecraft:lapis_lazuli>);
furnace.remove(<item:minecraft:copper_ingot>);
furnace.remove(<item:minecraft:diamond>);
furnace.remove(<item:minecraft:gold_ingot>);
furnace.remove(<item:minecraft:quartz>);
furnace.remove(<item:minecraft:redstone>);
furnace.remove(<item:minecraft:coal>);
furnace.remove(<item:minecraft:netherite_scrap>);

//#--> Adding Crafts...

//============================== RECIPES BALANCING ========================================//

smoker.addJsonRecipe("tropical_fish0", {
    ingredient: <item:minecraft:tropical_fish>,
    result: <item:minecraft:cooked_cod>.registryName,
    experience: 0.3 as float,
    cookingtime:100
});
smoker.addJsonRecipe("puffer_fish0", {
    ingredient: <item:minecraft:pufferfish>,
    result: <item:minecraft:cooked_cod>.registryName,
    experience: 0.3 as float,
    cookingtime:100
});
furnace.addJsonRecipe("netherite_scrap0", {
    ingredient: <item:minecraft:ancient_debris>,
    result: <item:minecraft:netherite_scrap>.registryName,
    experience: 2.5 as float,
    cookingtime:600
});
furnace.addJsonRecipe("iron_ingot0", {
    ingredient: <item:minecraft:raw_iron>,
    result: <item:minecraft:iron_ingot>.registryName,
    experience: 0.65 as float,
    cookingtime:600
});
furnace.addJsonRecipe("iron_ingot1", {
    ingredient: <item:energizedpower:iron_dust>,
    result: <item:minecraft:iron_ingot>.registryName,
    experience: 0.65 as float,
    cookingtime:60
});
furnace.addJsonRecipe("copper_ingot0", {
    ingredient: <item:minecraft:raw_copper>,
    result: <item:minecraft:copper_ingot>.registryName,
    experience: 0.6 as float,
    cookingtime:600
});
furnace.addJsonRecipe("copper_ingot1", {
    ingredient: <item:energizedpower:copper_dust>,
    result: <item:minecraft:copper_ingot>.registryName,
    experience: 0.6 as float,
    cookingtime:60
});
furnace.addJsonRecipe("gold_ingot0", {
    ingredient: <item:minecraft:raw_gold>,
    result: <item:minecraft:gold_ingot>.registryName,
    experience: 0.75 as float,
    cookingtime:600
});
furnace.addJsonRecipe("gold_ingot1", {
    ingredient: <item:energizedpower:gold_dust>,
    result: <item:minecraft:gold_ingot>.registryName,
    experience: 0.75 as float,
    cookingtime:60
});
furnace.addJsonRecipe("coal0", {
    ingredient: <item:energizedpower:charcoal_dust>,
    result: <item:minecraft:coal>.registryName,
    experience: 0.5 as float,
    cookingtime:60
});
craftingTable.addShaped("chainmail_helmet0", <item:minecraft:chainmail_helmet>, [
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("chainmail_chestplate0", <item:minecraft:chainmail_chestplate>, [
    [<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]
]);
craftingTable.addShaped("chainmail_leggings0", <item:minecraft:chainmail_leggings>, [
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>]
]);
craftingTable.addShaped("chainmail_boots0", <item:minecraft:chainmail_boots>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>]
]);
craftingTable.addShapeless("string0", <item:minecraft:string> * 1, [<tag:items:minecraft:wool>]);
craftingTable.addShapeless("whiter_rose0", <item:minecraft:wither_rose> * 1, [<item:minecraft:poppy>, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:poison"})]);
craftingTable.addShapeless("wheat_seeds_0", <item:minecraft:wheat_seeds> * 4, [<item:minecraft:wheat>, <item:minecraft:wheat>]);
craftingTable.addShapeless("wheat_seeds_1", <item:minecraft:wheat_seeds> * 2, [<item:minecraft:wheat>]);
craftingTable.addShaped("grass_block_0", <item:minecraft:grass_block>, [
    [<item:minecraft:wheat_seeds>, <item:minecraft:bone_meal>],
    [<item:minecraft:dirt>]
]);
craftingTable.addShaped("mycelium_0", <item:minecraft:mycelium>, [
    [<item:minecraft:wheat_seeds>, <item:minecraft:redstone>],
    [<item:minecraft:dirt>, <item:minecraft:gray_dye>]
]);
craftingTable.addShaped("name_tag_0", <item:minecraft:name_tag>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:string>],
    [<item:minecraft:air>, <item:minecraft:paper>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("saddle_0", <item:minecraft:saddle>, [
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
    [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>]
]);
craftingTable.addShaped("anvil_0", <item:minecraft:anvil>, [
    [<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>],
    [<item:minecraft:air>, <item:minecraft:iron_block>, <item:minecraft:air>],
    [<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]
]);
craftingTable.addShaped("arrow_0", <item:minecraft:arrow> * 8, [
    [<item:minecraft:air>, <item:minecraft:flint>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:feather>, <item:minecraft:air>]
]);
craftingTable.addShaped("arrow_1", <item:minecraft:arrow> * 32, [
    [<item:minecraft:iron_block>, <item:minecraft:flint>, <item:minecraft:lapis_block>],
    [<item:minecraft:iron_block>, <item:minecraft:stick>, <item:minecraft:lapis_block>],
    [<item:minecraft:air>, <item:minecraft:feather>, <item:minecraft:air>]
]);
craftingTable.addShaped("horse_armor_leather", <item:minecraft:leather_horse_armor> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:leather>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>]
]);
craftingTable.addShaped("horse_armor_iron", <item:minecraft:iron_horse_armor> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("horse_armor_gold", <item:minecraft:golden_horse_armor> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>]
]);
craftingTable.addShaped("horse_armor_diamond", <item:minecraft:diamond_horse_armor> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>]
]);
craftingTable.addShaped("powered_rail", <item:minecraft:powered_rail> * 16, [
    [<item:minecraft:gold_ingot>, <item:minecraft:redstone>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:stick>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:redstone>, <item:minecraft:gold_ingot>]
]);
craftingTable.addShaped("detector_rail", <item:minecraft:detector_rail> * 16, [
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:stone_pressure_plate>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("activator_rail", <item:minecraft:activator_rail> * 16, [
    [<item:minecraft:iron_ingot>, <item:minecraft:redstone_torch>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:stick>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:redstone_torch>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("turtle_egg_0", <item:minecraft:turtle_egg> * 1, [
    [<item:minecraft:egg>, <item:minecraft:seagrass>, <item:minecraft:brush>],
    [<item:minecraft:scute>, <item:minecraft:golden_apple>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("netherite_upgrade0", <item:minecraft:netherite_upgrade_smithing_template> * 2, [
    [<item:minecraft:diamond>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:raw_copper_block>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]
]);
craftingTable.addShaped("creeper_banner0", <item:minecraft:creeper_banner_pattern> * 1, [
    [<item:minecraft:paper>, <item:minecraft:tnt>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("skull_banner0", <item:minecraft:skull_banner_pattern> * 1, [
    [<item:minecraft:paper>, <item:minecraft:zombie_head>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("enchanted_golden_apple0", <item:minecraft:enchanted_golden_apple> * 1, [
    [<item:minecraft:golden_apple>, <item:minecraft:golden_apple>, <item:minecraft:golden_apple>],
    [<item:minecraft:golden_apple>, <item:minecraft:golden_apple>, <item:minecraft:golden_apple>],
    [<item:minecraft:emerald>, <item:minecraft:diamond>, <item:minecraft:emerald>]
]);
craftingTable.addShaped("encyclopedia0", <item:minecraft:nether_brick> * 1, [
    [<item:minecraft:air>, <item:minecraft:feather>, <item:minecraft:air>],
    [<item:minecraft:wooden_axe>, <item:minecraft:book>, <item:minecraft:wooden_pickaxe>],
    [<item:minecraft:air>, <item:minecraft:ink_sac>, <item:minecraft:air>]
]);
craftingTable.addShaped("soul_torch0", <item:minecraft:soul_torch> * 4, [
    [<item:minecraft:bone_meal>, <tag:items:minecraft:coals>, <item:minecraft:bone_meal>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:blue_dye>, <item:minecraft:air>]
]);
craftingTable.addShaped("soul_lantern0", <item:minecraft:soul_lantern> * 1, [
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:soul_torch>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]
]);
craftingTable.addShaped("soul_campfire0", <item:minecraft:soul_campfire> * 1, [
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <tag:items:minecraft:coals>, <item:minecraft:stick>],
    [<tag:items:minecraft:logs>, <item:minecraft:bone_meal>, <tag:items:minecraft:logs>]
]);
craftingTable.addShaped("glowstone_dust0", <item:minecraft:glowstone_dust> * 32, [
    [<item:minecraft:redstone>, <item:minecraft:gold_ingot>, <item:minecraft:redstone>],
    [<item:minecraft:redstone_block>, <item:minecraft:glow_ink_sac>, <item:minecraft:redstone_block>],
    [<item:minecraft:redstone>, <item:minecraft:gold_ingot>, <item:minecraft:redstone>]
]);
craftingTable.addShaped("glowstone_dust1", <item:minecraft:glowstone_dust> * 8, [
    [<item:minecraft:redstone>, <item:minecraft:gold_nugget>, <item:minecraft:redstone>],
    [<item:minecraft:gold_nugget>, <item:minecraft:glow_berries>, <item:minecraft:gold_nugget>],
    [<item:minecraft:redstone>, <item:minecraft:gold_nugget>, <item:minecraft:redstone>]
]);
craftingTable.addShaped("note_block0", <item:minecraft:note_block> * 1, [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:prettypipes:blank_module>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
]);
craftingTable.addShaped("jukebox0", <item:minecraft:jukebox> * 1, [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:prettypipes:redstone_module>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:diamond>, <tag:items:minecraft:planks>]
]);
craftingTable.addShaped("magma_block0", <item:minecraft:magma_block> * 8, [
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:lava_bucket>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
]);
craftingTable.addShaped("soul_sand0", <item:minecraft:soul_sand> * 8, [
    [<item:minecraft:sand>, <item:minecraft:soul_torch>, <item:minecraft:sand>],
    [<item:minecraft:sand>, <item:minecraft:bone_meal>, <item:minecraft:sand>],
    [<item:minecraft:sand>, <item:minecraft:soul_torch>, <item:minecraft:sand>]
]);
craftingTable.addShaped("stonecutter0", <item:minecraft:stonecutter> * 1, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:prettypipes:blank_module>, <item:minecraft:iron_ingot>],
    [<item:minecraft:stone>, <item:minecraft:stone>, <item:minecraft:stone>]
]);
craftingTable.addShaped("potion_nighvision0", <item:minecraft:potion>.withTag({Potion: "minecraft:night_vision"}) * 2, 
[
    [<item:minecraft:air>, <item:minecraft:fermented_spider_eye>, <item:minecraft:air>],
    [<item:minecraft:spider_eye>, <item:minecraft:lingering_potion>, <item:minecraft:spider_eye>],
    [<item:minecraft:air>, <item:minecraft:fermented_spider_eye>, <item:minecraft:air>]
]);
craftingTable.addShaped("potion_invisibility0", <item:minecraft:potion>.withTag({Potion: "minecraft:invisibility"}) * 1, 
[
    [<item:cold_sweat:chameleon_molt>, <item:cold_sweat:chameleon_molt>, <item:cold_sweat:chameleon_molt>],
    [<item:minecraft:amethyst_block>, <item:minecraft:lingering_potion>, <item:minecraft:prismarine>],
    [<item:cold_sweat:chameleon_molt>, <item:cold_sweat:chameleon_molt>, <item:cold_sweat:chameleon_molt>]
]);
craftingTable.addShaped("potion_waterbreath0", <item:minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}) * 4, 
[
    [<item:minecraft:air>, <item:minecraft:prismarine_shard>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:lingering_potion>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:scute>, <item:minecraft:air>]
]);
craftingTable.addShaped("potion_strength0", <item:minecraft:potion>.withTag({Potion: "minecraft:strength"}) * 1, 
[
    [<item:minecraft:air>, <item:minecraft:enchanted_golden_apple>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:lingering_potion>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("potion_splash0", <item:minecraft:splash_potion> * 1, 
[
    [<item:minecraft:air>, <item:minecraft:gunpowder>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:lingering_potion>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("potion_splashheal0", <item:minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}) * 4, 
[
    [<item:minecraft:air>, <item:minecraft:golden_apple>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:splash_potion>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:golden_apple>, <item:minecraft:air>]
]);
craftingTable.addShaped("potion_splashvenom0", <item:minecraft:splash_potion>.withTag({Potion: "minecraft:poison"}) * 2, 
[
    [<item:minecraft:air>, <item:minecraft:poisonous_potato>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:splash_potion>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("potion_splashregeneration0", <item:minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}) * 2, 
[
    [<item:minecraft:air>, <item:minecraft:golden_apple>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:splash_potion>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

//============================== RECIPES FOR DIAGRAMS ========================================//

craftingTable.addShaped("silk_touch1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:silk_touch", lvl: 1}]}) * 2, 
[
    [<item:minecraft:emerald_block>, <item:minecraft:diamond>, <item:minecraft:emerald_block>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:silk_touch", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:emerald_block>, <item:minecraft:diamond>, <item:minecraft:emerald_block>]
]);

craftingTable.addShaped("diagram_protection1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:protection", lvl: 1}]}) * 2, 
[
    [<item:minecraft:obsidian>, <item:minecraft:diamond>, <item:minecraft:obsidian>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:protection", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:obsidian>, <item:minecraft:diamond>, <item:minecraft:obsidian>]
]);
craftingTable.addShaped("diagram_protection2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:protection"}]}), 
[
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:protection"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:protection"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:protection"}]})],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:protection"}]}), <item:minecraft:air>]
]);
//craftingTable.addShaped("diagram_protection3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:protection"}]}), 
//[
//    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:protection"}]}), <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:protection"}]})]
//]);

craftingTable.addShaped("diagram_projectile_protection1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:projectile_protection", lvl: 1}]}) * 2, 
[
    [ <item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:projectile_protection", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:diamond>, <item:minecraft:air>,  <item:minecraft:diamond>]
]);
craftingTable.addShaped("diagram_projectile_protection2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:projectile_protection"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:projectile_protection"}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:projectile_protection"}]})]
]);

craftingTable.addShaped("thorns1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:thorns", lvl: 1}]}) * 2, 
[
    [<item:minecraft:cactus>, <item:minecraft:diamond_block>, <item:minecraft:cactus>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:thorns", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:cactus>, <item:minecraft:emerald_block>, <item:minecraft:cactus>]
]);

craftingTable.addShaped("frost_walker1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:frost_walker", lvl: 1}]}) * 2, 
[
    [<item:minecraft:ice>, <item:minecraft:diamond_block>, <item:minecraft:ice>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:frost_walker", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:ice>, <item:minecraft:diamond_block>, <item:minecraft:ice>]
]);

craftingTable.addShaped("swift_sneak1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:swift_sneak", lvl: 1}]}) * 2, 
[
    [<item:minecraft:feather>, <item:minecraft:feather>, <item:minecraft:feather>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:swift_sneak", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:feather>, <item:minecraft:feather>, <item:minecraft:feather>]
]);

craftingTable.addShaped("diagram_sharpness1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:sharpness", lvl: 1}]}) * 2, 
[
    [<item:minecraft:lingering_potion>, <item:minecraft:diamond>, <item:minecraft:lingering_potion>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:sharpness", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:lingering_potion>, <item:minecraft:diamond>, <item:minecraft:lingering_potion>]
]);
craftingTable.addShaped("diagram_sharpness2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:sharpness"}]}), 
[
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:sharpness"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:sharpness"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:sharpness"}]})],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:sharpness"}]}), <item:minecraft:air>]
]);
craftingTable.addShaped("diagram_sharpness3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:sharpness"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:sharpness"}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:sharpness"}]})]
]);
craftingTable.addShaped("diagram_sharpness4", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4, id: "minecraft:sharpness"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:sharpness"}]}), <item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:sharpness"}]}), <item:minecraft:air>],
    [<item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:sharpness"}]})]
]);

craftingTable.addShaped("knockback1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:knockback", lvl: 1}]}) * 2, 
[
    [<item:minecraft:iron_block>, <item:minecraft:diamond_block>, <item:minecraft:iron_block>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:knockback", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:iron_block>, <item:minecraft:emerald_block>, <item:minecraft:iron_block>]
]);

craftingTable.addShaped("diagram_eficiency1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:efficiency", lvl: 1}]}) * 2, 
[
    [<item:cyclic:flint_block>, <item:minecraft:diamond>, <item:cyclic:flint_block>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:efficiency", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:cyclic:flint_block>, <item:minecraft:diamond>, <item:cyclic:flint_block>]
]);
craftingTable.addShaped("diagram_eficiency2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:efficiency"}]}), 
[
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:efficiency"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:efficiency"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:efficiency"}]})],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:efficiency"}]}), <item:minecraft:air>]
]);
craftingTable.addShaped("diagram_eficiency3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:efficiency"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:efficiency"}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:efficiency"}]})]
]);

craftingTable.addShaped("diagram_power1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:power", lvl: 1}]}) * 2, 
[
    [<item:minecraft:diamond>, <item:minecraft:quartz>, <item:minecraft:emerald>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:power", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:emerald>, <item:minecraft:quartz>, <item:minecraft:diamond>]
]);
craftingTable.addShaped("diagram_power2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:power"}]}), 
[
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:power"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:power"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:power"}]})],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:power"}]}), <item:minecraft:air>]
]);
craftingTable.addShaped("diagram_power3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:power"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:power"}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:power"}]})]
]);

craftingTable.addShaped("punch1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:punch", lvl: 1}]}) * 2, 
[
    [<item:minecraft:iron_block>, <item:minecraft:diamond_block>, <item:minecraft:iron_block>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:punch", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:iron_block>, <item:minecraft:emerald_block>, <item:minecraft:iron_block>]
]);

craftingTable.addShaped("diagram_penetration1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:impaling", lvl: 1}]}) * 2, 
[
    [<item:minecraft:lingering_potion>, <item:minecraft:diamond>, <item:minecraft:lingering_potion>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:impaling", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:lingering_potion>, <item:minecraft:diamond>, <item:minecraft:lingering_potion>]
]);
craftingTable.addShaped("diagram_penetration2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:impaling"}]}), 
[
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:impaling"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:impaling"}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:impaling"}]})],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:impaling"}]}), <item:minecraft:air>]
]);
craftingTable.addShaped("diagram_penetration3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:impaling"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:impaling"}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:impaling"}]})]
]);
craftingTable.addShaped("diagram_penetration4", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4, id: "minecraft:impaling"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:impaling"}]}), <item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:impaling"}]}), <item:minecraft:air>],
    [<item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:impaling"}]})]
]);

craftingTable.addShaped("diagram_piercing1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:piercing", lvl: 1}]}) * 2, 
[
    [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:piercing", lvl: 1}]}), <item:minecraft:feather>, <item:minecraft:book>],
    [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>]
]);
craftingTable.addShaped("diagram_piercing2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:piercing"}]}), 
[
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:piercing"}]}), <item:minecraft:air>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:piercing"}]}), <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:piercing"}]})],
    [<item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:piercing"}]}), <item:minecraft:air>]
]);
craftingTable.addShaped("diagram_piercing3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "minecraft:piercing"}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:piercing"}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:piercing"}]})]
]);

craftingTable.addShaped("unbreking1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 1}]}) * 2, 
[
    [<item:minecraft:obsidian>, <item:minecraft:diamond>, <item:minecraft:obsidian>],
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 1}]}), <item:minecraft:obsidian>, <item:minecraft:book>],
    [<item:minecraft:obsidian>, <item:minecraft:diamond>, <item:minecraft:obsidian>]
]);
craftingTable.addShaped("unbreking2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 2}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 1}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 1}]})]
]);
craftingTable.addShaped("unbreking3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 3}]}), 
[
    [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 2}]}), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:netherite_upgrade_smithing_template>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "minecraft:unbreaking", lvl: 2}]})]
]);





//========================================================================================== OTHER MODS CHANGES ====================================================================================================//

//============================== QUARK ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:quark:iron_rod>);
craftingTable.remove(<item:quark:hollow_ancient_log>);
craftingTable.remove(<item:quark:hollow_azalea_log>);
craftingTable.remove(<item:quark:hollow_blossom_log>);
craftingTable.remove(<item:quark:hollow_crimson_stem>);
craftingTable.remove(<item:quark:hollow_warped_stem>);
craftingTable.remove(<item:quark:blossom_bookshelf>);
craftingTable.remove(<item:quark:azalea_bookshelf>);
craftingTable.remove(<item:quark:ancient_bookshelf>);
craftingTable.remove(<item:quark:crimson_chest>);
craftingTable.remove(<item:quark:warped_chest>);
craftingTable.remove(<item:quark:nether_brick_chest>);
craftingTable.remove(<item:quark:purpur_chest>);
craftingTable.remove(<item:quark:crimson_trapped_chest>);
craftingTable.remove(<item:quark:warped_trapped_chest>);
craftingTable.remove(<item:quark:nether_brick_trapped_chest>);
craftingTable.remove(<item:quark:purpur_trapped_chest>);
craftingTable.remove(<item:quark:ancient_chest>);
craftingTable.remove(<item:quark:azalea_chest>);
craftingTable.remove(<item:quark:blossom_chest>);
craftingTable.remove(<item:quark:ancient_trapped_chest>);
craftingTable.remove(<item:quark:azalea_trapped_chest>);
craftingTable.remove(<item:quark:blossom_trapped_chest>);
craftingTable.remove(<item:quark:crimson_ladder>);
craftingTable.remove(<item:quark:warped_ladder>);
craftingTable.remove(<item:quark:blossom_ladder>);
craftingTable.remove(<item:quark:azalea_ladder>);
craftingTable.remove(<item:quark:ancient_ladder>);
craftingTable.remove(<item:quark:crimson_post>);
craftingTable.remove(<item:quark:stripped_crimson_post>);
craftingTable.remove(<item:quark:warped_post>);
craftingTable.remove(<item:quark:stripped_warped_post>);
craftingTable.remove(<item:quark:blossom_post>);
craftingTable.remove(<item:quark:stripped_blossom_post>);
craftingTable.remove(<item:quark:azalea_post>);
craftingTable.remove(<item:quark:stripped_azalea_post>);
craftingTable.remove(<item:quark:ancient_post>);
craftingTable.remove(<item:quark:stripped_ancient_post>);
furnace.remove(<item:quark:cooked_crab_leg>);

//#--> Adding Crafts...

craftingTable.addShaped("iron_rod", <item:quark:iron_rod>, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:iron_bars>, <item:minecraft:air>]
]);

craftingTable.addShaped("redstone_randomizer0", <item:quark:redstone_randomizer>, [
    [<item:minecraft:air>, <item:minecraft:redstone_torch>, <item:minecraft:air>],
    [<item:minecraft:redstone_torch>, <item:prettypipes:blank_module>, <item:minecraft:redstone_torch>],
    [<item:minecraft:stone>, <item:minecraft:stone>, <item:minecraft:stone>]
]);





//============================== VANILLA TWEAKS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:vanillatweaks:dynamite>);
craftingTable.remove(<item:vanillatweaks:flint_block>);

//#--> Adding Crafts...

smoker.addJsonRecipe("fried_egg0", {
    ingredient: <item:minecraft:egg>,
    result: <item:vanillatweaks:fried_egg>.registryName,
    experience: 0.12 as float,
    cookingtime:100
});
craftingTable.addShaped("charcoal_block", <item:vanillatweaks:charcoal_block>, [
    [<item:minecraft:charcoal>, <item:minecraft:charcoal>, <item:minecraft:charcoal>],
    [<item:minecraft:charcoal>, <item:minecraft:charcoal>, <item:minecraft:charcoal>],
    [<item:minecraft:charcoal>, <item:minecraft:charcoal>, <item:minecraft:charcoal>]
]);
craftingTable.addShapeless("charcoal0", <item:minecraft:charcoal> * 9, [<item:vanillatweaks:charcoal_block>]);
craftingTable.addShaped("flint_block", <item:vanillatweaks:flint_block>, [
    [<item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:flint>],
    [<item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:flint>],
    [<item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:flint>]
]);
craftingTable.addShapeless("flint0", <item:minecraft:flint> * 9, [<item:vanillatweaks:flint_block>]);
craftingTable.addShaped("sugar_block", <item:vanillatweaks:sugar_block>, [
    [<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>],
    [<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>],
    [<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>]
]);
craftingTable.addShapeless("sugar0", <item:minecraft:sugar> * 9, [<item:vanillatweaks:sugar_block>]);
craftingTable.addShaped("pedestal0", <item:vanillatweaks:pedestal>, [
    [<item:minecraft:stone_brick_slab>, <item:quark:glass_item_frame>, <item:minecraft:stone_brick_slab>],
    [<item:minecraft:air>, <item:minecraft:stone_bricks>, <item:minecraft:air>],
    [<item:minecraft:stone_brick_slab>, <item:minecraft:stone_brick_slab>, <item:minecraft:stone_brick_slab>]
]);





//============================== SUPPLEMENTARIES ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:supplementaries:checker_block>);
craftingTable.remove(<item:supplementaries:pedestal>);
craftingTable.remove(<item:supplementaries:blackboard>);
craftingTable.remove(<item:supplementaries:clock_block>);
craftingTable.remove(<item:supplementaries:altimeter>);
craftingTable.remove(<item:supplementaries:bamboo_spikes>);

//#--> Adding Crafts...

craftingTable.addShapeless("checker_block", <item:supplementaries:checker_block> * 4, [<item:minecraft:cobbled_deepslate>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobbled_deepslate>]);
craftingTable.addShaped("pedestal1", <item:supplementaries:pedestal>, [
    [<item:minecraft:stone_bricks>, <item:quark:glass_item_frame>, <item:minecraft:stone_bricks>],
    [<item:minecraft:air>, <item:minecraft:stone_bricks>, <item:minecraft:air>],
    [<item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>]
]);
craftingTable.addShaped("blackboard0", <item:supplementaries:blackboard>, [
    [<tag:items:minecraft:wooden_slabs>, <item:minecraft:chiseled_deepslate>, <item:minecraft:black_dye>],
    [<tag:items:minecraft:wooden_slabs>, <item:minecraft:chiseled_deepslate>, <item:minecraft:quartz>],
    [<tag:items:minecraft:wooden_slabs>, <item:minecraft:chiseled_deepslate>, <item:minecraft:black_dye>]
]);
craftingTable.addShaped("clock_block0", <item:supplementaries:clock_block>, [
    [<tag:items:minecraft:planks>, <item:minecraft:gold_ingot>, <tag:items:minecraft:planks>],
    [<item:minecraft:gold_ingot>, <item:prettypipes:blank_module>, <item:minecraft:gold_ingot>],
    [<tag:items:minecraft:planks>, <item:minecraft:gold_ingot>, <tag:items:minecraft:planks>]
]);
craftingTable.addShaped("altimeter0", <item:supplementaries:altimeter>, [
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
    [<item:minecraft:copper_ingot>, <item:prettypipes:blank_module>, <item:minecraft:copper_ingot>],
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]
]);





//============================== TOOLBELT ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:toolbelt:pouch>);

//#--> Adding Crafts...

craftingTable.addShaped("toolbelt_pouch", <item:toolbelt:pouch>, [
    [<item:minecraft:string>, <item:minecraft:gold_block>, <item:minecraft:string>],
    [<item:minecraft:leather>, <item:minecraft:shears>, <item:minecraft:leather>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);





//============================== TRAVELERS BACKPACK ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:travelersbackpack:hose_nozzle>);
craftingTable.remove(<item:travelersbackpack:hose>);
craftingTable.remove(<item:travelersbackpack:blank_upgrade>);
craftingTable.remove(<item:travelersbackpack:iron_tier_upgrade>);
craftingTable.remove(<item:travelersbackpack:gold_tier_upgrade>);
craftingTable.remove(<item:travelersbackpack:diamond_tier_upgrade>);
craftingTable.remove(<item:travelersbackpack:crafting_upgrade>);
craftingTable.remove(<item:travelersbackpack:end>);
craftingTable.remove(<item:travelersbackpack:nether>);
craftingTable.remove(<item:travelersbackpack:sponge>);
craftingTable.remove(<item:travelersbackpack:cake>);
craftingTable.remove(<item:travelersbackpack:cactus>);
craftingTable.remove(<item:travelersbackpack:hay>);
craftingTable.remove(<item:travelersbackpack:melon>);
craftingTable.remove(<item:travelersbackpack:creeper>);
craftingTable.remove(<item:travelersbackpack:dragon>);
craftingTable.remove(<item:travelersbackpack:enderman>);
craftingTable.remove(<item:travelersbackpack:blaze>);
craftingTable.remove(<item:travelersbackpack:ghast>);
craftingTable.remove(<item:travelersbackpack:magma_cube>);
craftingTable.remove(<item:travelersbackpack:skeleton>);
craftingTable.remove(<item:travelersbackpack:wither>);
craftingTable.remove(<item:travelersbackpack:ocelot>);
craftingTable.remove(<item:travelersbackpack:horse>);
craftingTable.remove(<item:travelersbackpack:cow>);
craftingTable.remove(<item:travelersbackpack:pig>);
craftingTable.remove(<item:travelersbackpack:sheep>);
craftingTable.remove(<item:travelersbackpack:chicken>);
craftingTable.remove(<item:travelersbackpack:squid>);
craftingTable.remove(<item:travelersbackpack:villager>);
craftingTable.remove(<item:travelersbackpack:iron_golem>);
craftingTable.remove(<item:travelersbackpack:orange_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:magenta_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:light_blue_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:yellow_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:lime_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:light_gray_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:blue_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:brown_sleeping_bag>);
craftingTable.remove(<item:travelersbackpack:black_sleeping_bag>);

//#--> Adding Crafts...

craftingTable.addShaped("backpack_hose_nozzle0", <item:travelersbackpack:hose_nozzle>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("backpack_hose_nozzle1", <item:travelersbackpack:hose_nozzle>, [
    [<item:minecraft:air>, <item:minecraft:yellow_dye>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("backpack_hose", <item:travelersbackpack:hose>, [
    [<item:minecraft:air>, <item:travelersbackpack:hose_nozzle>, <item:minecraft:air>],
    [<item:minecraft:green_dye>, <item:minecraft:leather>, <item:minecraft:green_dye>],
    [<item:minecraft:green_dye>, <item:minecraft:leather>, <item:minecraft:green_dye>]
]);
craftingTable.addShaped("backpack_blank_upgrade0", <item:travelersbackpack:blank_upgrade>, [
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
    [<item:travelersbackpack:backpack_tank>, <tag:items:forge:chests>, <item:travelersbackpack:backpack_tank>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);
craftingTable.addShaped("backpack_iron_tier_upgrade", <item:travelersbackpack:iron_tier_upgrade>, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_block>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_block>, <item:travelersbackpack:blank_upgrade>, <item:minecraft:iron_block>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_block>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("backpack_gold_tier_upgrade", <item:travelersbackpack:gold_tier_upgrade>, [
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_block>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_block>, <item:travelersbackpack:iron_tier_upgrade>, <item:minecraft:gold_block>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_block>, <item:minecraft:gold_ingot>]
]);
craftingTable.addShaped("backpack_diamond_tier_upgrade", <item:travelersbackpack:diamond_tier_upgrade>, [
    [<item:minecraft:diamond>, <item:minecraft:diamond_block>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:travelersbackpack:gold_tier_upgrade>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:diamond_block>, <item:minecraft:diamond>]
]);
craftingTable.addShaped("backpack_crafting_upgrade", <item:travelersbackpack:crafting_upgrade>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:crafting_table>, <item:minecraft:copper_ingot>],
    [<item:minecraft:crafting_table>, <item:travelersbackpack:blank_upgrade>, <item:minecraft:crafting_table>],
    [<item:minecraft:copper_ingot>, <item:minecraft:crafting_table>, <item:minecraft:copper_ingot>]
]);





//============================== DOGGY TALENTS NEXT ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:doggytalents:breeding_bone>);
craftingTable.remove(<item:doggytalents:conducting_bone>);
craftingTable.remove(<item:doggytalents:treat_bag>);
craftingTable.remove(<item:doggytalents:egg_sandwich>);
craftingTable.remove(<item:doggytalents:rice_bowl>);
craftingTable.remove(<item:doggytalents:uncooked_rice_bowl>);
craftingTable.remove(<item:doggytalents:salmon_sushi>);
craftingTable.remove(<item:doggytalents:onigiri>);
craftingTable.remove(<item:doggytalents:shrinking_mallet>);
craftingTable.remove(<item:doggytalents:magnifying_bone>);
craftingTable.remove(<item:doggytalents:amnesia_bone>);
craftingTable.remove(<item:doggytalents:empty_locator_orb>);
craftingTable.remove(<item:doggytalents:locator_orb_chi>);
craftingTable.remove(<item:doggytalents:locator_orb_chu>);
craftingTable.remove(<item:doggytalents:locator_orb_ko>);
craftingTable.remove(<item:doggytalents:locator_orb_gi>);
craftingTable.remove(<item:doggytalents:locator_orb_tei>);
craftingTable.remove(<item:doggytalents:locator_orb_rei>);
craftingTable.remove(<item:doggytalents:locator_orb_shin>);
craftingTable.remove(<item:doggytalents:locator_orb_jin>);
craftingTable.remove(<item:doggytalents:gender_bone>);
craftingTable.remove(<item:doggytalents:golden_a_five_wagyu>);
craftingTable.remove(<item:doggytalents:sussy_sickle>);
craftingTable.remove(<item:doggytalents:head_band_blank>);
craftingTable.remove(<item:doggytalents:head_band_mystery>);
craftingTable.remove(<item:doggytalents:head_band_highhh>);
craftingTable.remove(<item:doggytalents:chef_hat>);
craftingTable.remove(<item:doggytalents:bat_wings>);
craftingTable.remove(<item:doggytalents:crow_wings>);
craftingTable.remove(<item:doggytalents:divine_retribution>);
craftingTable.remove(<item:doggytalents:soul_reflector>);
craftingTable.remove(<item:doggytalents:hot_dog>);
craftingTable.remove(<item:doggytalents:giant_stick>);
craftingTable.remove(<item:doggytalents:doggy_contacts>);
craftingTable.remove(<item:doggytalents:miso_paste>);
craftingTable.remove(<item:doggytalents:miso_soup>);
craftingTable.remove(<item:doggytalents:soy_milk>);
craftingTable.remove(<item:doggytalents:tofu>);
craftingTable.remove(<item:doggytalents:aburaage>);
craftingTable.remove(<item:doggytalents:natto>);
craftingTable.remove(<item:doggytalents:natto_rice>);
craftingTable.remove(<item:doggytalents:onsen_tamago>);
craftingTable.remove(<item:doggytalents:gyudon>);
craftingTable.remove(<item:doggytalents:oyakodon>);
craftingTable.remove(<item:doggytalents:sake>);
craftingTable.remove(<item:doggytalents:scent_treat>);
craftingTable.remove(<item:doggytalents:feathered_mantle>);
craftingTable.remove(<item:doggytalents:grand_piano_black_item>);
craftingTable.remove(<item:doggytalents:grand_piano_white_item>);
craftingTable.remove(<item:doggytalents:upright_piano_black_item>);
craftingTable.remove(<item:doggytalents:upright_piano_brown_item>);
craftingTable.remove(<item:doggytalents:ceremonial_garb>);
craftingTable.remove(<item:doggytalents:training_treat>);
craftingTable.remove(<item:doggytalents:super_treat>);
craftingTable.remove(<item:doggytalents:master_treat>);
craftingTable.remove(<item:doggytalents:kami_treat>);
craftingTable.remove(<item:doggytalents:death_hood>);
craftingTable.remove(<item:doggytalents:tengu_mask>);
craftingTable.remove(<item:doggytalents:demon_horns>);
craftingTable.remove(<item:doggytalents:witch_hat>);
craftingTable.remove(<item:doggytalents:kitsune_mask>);
craftingTable.remove(<item:doggytalents:koji>);
craftingTable.remove(<item:doggytalents:whistle>);
craftingTable.remove(<item:doggytalents:soy_pods>);
craftingTable.remove(<item:doggytalents:radio_collar>);
craftingTable.remove(<item:doggytalents:canine_tracker>);
craftingTable.remove(<item:doggytalents:flying_cape>);
furnace.remove(<item:doggytalents:soy_pods_dried>);
furnace.remove(<item:doggytalents:rice_bowl>);
furnace.remove(<item:doggytalents:soy_beans_dried>);
furnace.remove(<item:doggytalents:aburaage>);
smoker.remove(<item:doggytalents:rice_bowl>);
smoker.remove(<item:doggytalents:soy_pods_dried>);
smoker.remove(<item:doggytalents:soy_beans_dried>);
smoker.remove(<item:doggytalents:aburaage>);

//#--> Adding Crafts...

craftingTable.addShaped("training_treat0", <item:doggytalents:training_treat> * 6, [
    [<item:minecraft:string>, <item:minecraft:bone>, <item:minecraft:gunpowder>],
    [<item:minecraft:sugar>, <item:doggytalents:koji>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("training_treat1", <item:doggytalents:super_treat> * 2, [
    [<item:doggytalents:training_treat>, <item:doggytalents:training_treat>, <item:doggytalents:training_treat>],
    [<item:doggytalents:training_treat>, <item:doggytalents:training_treat>, <item:minecraft:golden_apple>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("training_treat2", <item:doggytalents:master_treat> * 2, [
    [<item:doggytalents:super_treat>, <item:doggytalents:super_treat>, <item:doggytalents:super_treat>],
    [<item:doggytalents:super_treat>, <item:doggytalents:super_treat>, <item:minecraft:diamond>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("training_treat3", <item:doggytalents:kami_treat> * 1, [
    [<item:doggytalents:master_treat>, <item:doggytalents:master_treat>, <item:doggytalents:master_treat>],
    [<item:doggytalents:master_treat>, <item:doggytalents:master_treat>, <item:minecraft:netherite_upgrade_smithing_template>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("death_hood0", <item:doggytalents:death_hood> * 1, [
    [<item:doggytalents:cape_coloured>, <item:minecraft:torch>, <item:minecraft:air>],
    [<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("tengu_mask0", <item:doggytalents:tengu_mask> * 1, [
    [<item:minecraft:paper>, <item:minecraft:red_dye>, <item:minecraft:air>],
    [<item:minecraft:red_dye>, <item:minecraft:black_dye>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("demon_horns0", <item:doggytalents:demon_horns> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:red_dye>, <item:minecraft:stick>],
    [<item:minecraft:black_dye>, <item:minecraft:leather_helmet>, <item:minecraft:black_dye>]
]);
craftingTable.addShaped("witch_hat0", <item:doggytalents:witch_hat> * 1, [
    [<item:minecraft:air>, <item:minecraft:black_wool>, <item:minecraft:air>],
    [<item:minecraft:black_wool>, <item:minecraft:glass_bottle>, <item:minecraft:black_wool>],
    [<item:minecraft:black_carpet>, <item:minecraft:black_carpet>, <item:minecraft:black_carpet>]
]);
craftingTable.addShaped("kitsune_hat0", <item:doggytalents:kitsune_mask> * 1, [
    [<item:minecraft:paper>, <item:minecraft:red_dye>, <item:minecraft:air>],
    [<item:minecraft:white_dye>, <item:minecraft:white_dye>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("koji0", <item:doggytalents:koji> * 2, [
    [<item:doggytalents:soy_beans>, <item:minecraft:brown_mushroom>, <item:doggytalents:uncooked_rice>],
    [<item:minecraft:sugar>, <item:minecraft:bone_meal>, <item:minecraft:sugar>],
    [<item:doggytalents:uncooked_rice>, <item:minecraft:red_mushroom>, <item:doggytalents:soy_beans>]
]);
craftingTable.addShaped("radio_collar0", <item:doggytalents:radio_collar> * 1, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:prettypipes:blank_module>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("canine_tracker0", <item:doggytalents:canine_tracker> * 1, [
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:doggytalents:radio_collar>],
    [<item:minecraft:gold_ingot>, <item:prettypipes:redstone_module>, <item:minecraft:gold_ingot>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>]
]);
craftingTable.addShapeless("soy_beans0", <item:doggytalents:soy_beans> * 1, [<item:doggytalents:soy_pods>]);





//============================== CHUNKY MCCHUNKYFACE ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:chunkymcchunkface:chunk_loader>);

//#--> Adding Crafts...

craftingTable.addShaped("chunk_loader0", <item:chunkymcchunkface:chunk_loader> * 1, [
    [<item:minecraft:gold_block>, <item:minecraft:obsidian>, <item:minecraft:gold_block>],
    [<tag:items:forge:glass>, <item:minecraft:diamond_block>, <tag:items:forge:glass>],
    [<item:minecraft:gold_block>, <item:minecraft:obsidian>, <item:minecraft:gold_block>]
]);




//============================== SHIELDS+ ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:shieldsplus:wooden_shield>);
craftingTable.remove(<item:shieldsplus:stone_shield>);
craftingTable.remove(<item:shieldsplus:iron_shield>);
craftingTable.remove(<item:shieldsplus:golden_shield>);
craftingTable.remove(<item:shieldsplus:diamond_shield>);
craftingTable.remove(<item:shieldsplus:netherite_shield>);

//#--> Adding Crafts...

craftingTable.addShaped("stone_shield0", <item:shieldsplus:stone_shield>.withTag({RepairCost: 1, Enchantments: [{id: "shieldsplus:recoil", lvl: 2}], Insulation: []}) * 1, [
    [<item:minecraft:cobblestone>, <tag:items:minecraft:planks>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <tag:items:minecraft:planks>, <item:minecraft:cobblestone>],
    [<item:minecraft:air>, <item:minecraft:cobblestone>, <item:minecraft:air>]
]);
craftingTable.addShaped("iron_shield0", <item:shieldsplus:iron_shield>.withTag({RepairCost: 1, Enchantments: [{id: "shieldsplus:recoil", lvl: 2}], Insulation: []}) * 1, [
    [<item:minecraft:iron_ingot>, <tag:items:minecraft:planks>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:minecraft:planks>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);
craftingTable.addShaped("gold_shield0", <item:shieldsplus:golden_shield>.withTag({RepairCost: 1, Enchantments: [{id: "shieldsplus:recoil", lvl: 2}], Insulation: []}) * 1, [
    [<item:minecraft:gold_ingot>, <tag:items:minecraft:planks>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <tag:items:minecraft:planks>, <item:minecraft:gold_ingot>],
    [<item:minecraft:diamond>, <item:minecraft:gold_ingot>, <item:minecraft:diamond>]
]);
craftingTable.addShaped("diamond_shield0", <item:shieldsplus:diamond_shield>.withTag({RepairCost: 1, Enchantments: [{id: "shieldsplus:recoil", lvl: 2}], Insulation: []}) * 1, [
    [<item:minecraft:diamond>, <tag:items:minecraft:planks>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <tag:items:minecraft:planks>, <item:minecraft:diamond>],
    [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>]
]);





//============================== NIF'S QUIVERS+ ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:nyfsquiver:basic_quiver>);
craftingTable.remove(<item:nyfsquiver:iron_quiver>);
craftingTable.remove(<item:nyfsquiver:copper_quiver>);
craftingTable.remove(<item:nyfsquiver:gold_quiver>);
craftingTable.remove(<item:nyfsquiver:diamond_quiver>);
craftingTable.remove(<item:nyfsquiver:netherite_quiver>);

//#--> Adding Crafts...

craftingTable.addShaped("quiver0", <item:nyfsquiver:basic_quiver> * 1, [
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:feather>],
    [<item:minecraft:iron_ingot>, <item:minecraft:leather>, <item:minecraft:copper_ingot>],
    [<item:minecraft:leather>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);





//============================== K-TURRETS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:k_turrets:cobble_drone_item>);
craftingTable.remove(<item:k_turrets:arrow_drone_item>);
craftingTable.remove(<item:k_turrets:firecharge_drone_item>);
craftingTable.remove(<item:k_turrets:brick_drone_item>);
craftingTable.remove(<item:k_turrets:bullet_drone_item>);
craftingTable.remove(<item:k_turrets:gauss_drone_item>);
craftingTable.remove(<item:k_turrets:gauss_turret_item>);
craftingTable.remove(<item:k_turrets:explosive_powder>);
craftingTable.remove(<item:k_turrets:gauss_bullet>);
craftingTable.remove(<item:k_turrets:cobble_turret_item>);
craftingTable.remove(<item:k_turrets:arrow_turret_item>);
craftingTable.remove(<item:k_turrets:firecharge_turret_item>);
craftingTable.remove(<item:k_turrets:brick_turret_item>);
craftingTable.remove(<item:k_turrets:bullet_turret_item>);

//#--> Adding Crafts...

furnace.addJsonRecipe("titanium_ingot0", {
    ingredient: <item:k_turrets:raw_titanium>,
    result: <item:k_turrets:titanium_ingot>.registryName,
    experience: 0.5 as float,
    cookingtime:600
});
furnace.addJsonRecipe("titanium_ingot1", {
    ingredient: <item:energizedpower:charcoal_filter>,
    result: <item:k_turrets:titanium_ingot>.registryName,
    experience: 0.5 as float,
    cookingtime:60
});
craftingTable.addShaped("gauss_turret0", <item:k_turrets:gauss_turret_item> * 1, [
    [<item:prettypipes:redstone_module>, <item:minecraft:dispenser>, <item:k_turrets:gauss_bullet>],
    [<item:k_turrets:titanium_ingot>, <item:k_turrets:titanium_ingot>, <item:k_turrets:titanium_ingot>],
    [<item:minecraft:diamond_block>, <item:k_turrets:titanium_ingot>, <item:minecraft:diamond_block>]
]);
craftingTable.addShapeless("explosive_powder0", <item:k_turrets:explosive_powder> * 8, [<item:minecraft:gunpowder>, <item:minecraft:glowstone_dust>]);
craftingTable.addShaped("gauss_bullet0", <item:k_turrets:gauss_bullet> * 6, [
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:gunpowder>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:k_turrets:titanium_ingot>, <item:minecraft:iron_nugget>]
]);
craftingTable.addShaped("cobble_turret0", <item:k_turrets:cobble_turret_item> * 1, [
    [<item:prettypipes:redstone_module>, <item:minecraft:dispenser>, <item:minecraft:cobblestone>],
    [<item:k_turrets:titanium_ingot>, <item:minecraft:iron_block>, <item:k_turrets:titanium_ingot>],
    [<item:minecraft:iron_block>, <item:k_turrets:titanium_ingot>, <item:minecraft:iron_block>]
]);
craftingTable.addShaped("arrow_turret0", <item:k_turrets:arrow_turret_item> * 1, [
    [<item:prettypipes:redstone_module>, <item:minecraft:dispenser>, <item:minecraft:arrow>],
    [<item:k_turrets:titanium_ingot>, <item:k_turrets:titanium_ingot>, <item:k_turrets:titanium_ingot>],
    [<item:minecraft:iron_block>, <item:k_turrets:titanium_ingot>, <item:minecraft:iron_block>]
]);
craftingTable.addShaped("firecharge_turret0", <item:k_turrets:firecharge_turret_item> * 1, [
    [<item:prettypipes:redstone_module>, <item:minecraft:dispenser>, <item:k_turrets:explosive_powder>],
    [<item:k_turrets:titanium_ingot>, <item:k_turrets:titanium_ingot>, <item:k_turrets:titanium_ingot>],
    [<item:minecraft:iron_block>, <item:k_turrets:titanium_ingot>, <item:minecraft:iron_block>]
]);
craftingTable.addShaped("brick_turret0", <item:k_turrets:brick_turret_item> * 1, [
    [<item:prettypipes:redstone_module>, <item:minecraft:dispenser>, <item:minecraft:brick>],
    [<item:k_turrets:titanium_ingot>, <item:minecraft:iron_block>, <item:k_turrets:titanium_ingot>],
    [<item:minecraft:iron_block>, <item:k_turrets:titanium_ingot>, <item:minecraft:iron_block>]
]);
craftingTable.addShaped("bullet_turret0", <item:k_turrets:bullet_turret_item> * 1, [
    [<item:minecraft:gold_nugget>, <item:minecraft:dispenser>, <item:minecraft:iron_nugget>],
    [<item:k_turrets:titanium_ingot>, <item:prettypipes:redstone_module>, <item:k_turrets:titanium_ingot>],
    [<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]
]);





//============================== CONVEYOR BELTS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:conveyorbelts:wood_filter_robotic_arm>);
craftingTable.remove(<item:conveyorbelts:iron_filter_robotic_arm>);
craftingTable.remove(<item:conveyorbelts:gold_filter_robotic_arm>);
craftingTable.remove(<item:conveyorbelts:netherite_filter_robotic_arm>);





//============================== PRETTY PIPES/PRETTY FLUIDS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:ppfluids:low_fluid_filter_module>);
craftingTable.remove(<item:ppfluids:medium_fluid_filter_module>);
craftingTable.remove(<item:ppfluids:high_fluid_filter_module>);
craftingTable.remove(<item:ppfluids:low_fluid_retrieval_module>);
craftingTable.remove(<item:ppfluids:medium_fluid_retrieval_module>);
craftingTable.remove(<item:ppfluids:high_fluid_retrieval_module>);
craftingTable.remove(<item:ppfluids:fluid_pipe>);
craftingTable.remove(<item:ppfluids:high_fluid_extraction_module>);
craftingTable.remove(<item:prettypipes:crafting_terminal>);
craftingTable.remove(<item:prettypipes:item_terminal>);
craftingTable.remove(<item:prettypipes:pipe>);
craftingTable.remove(<item:prettypipes:pressurizer>);
craftingTable.remove(<item:prettypipes:high_crafting_module>);
craftingTable.remove(<item:prettypipes:low_crafting_module>);
craftingTable.remove(<item:prettypipes:medium_crafting_module>);
craftingTable.remove(<item:prettypipes:high_extraction_module>);
craftingTable.remove(<item:prettypipes:medium_extraction_module>);
craftingTable.remove(<item:prettypipes:low_extraction_module>);
craftingTable.remove(<item:prettypipes:filter_increase_modifier>);
craftingTable.remove(<item:prettypipes:damage_filter_modifier>);
craftingTable.remove(<item:prettypipes:mod_filter_modifier>);
craftingTable.remove(<item:prettypipes:nbt_filter_modifier>);
craftingTable.remove(<item:prettypipes:tag_filter_modifier>);
craftingTable.remove(<item:prettypipes:high_filter_module>);
craftingTable.remove(<item:prettypipes:low_filter_module>);
craftingTable.remove(<item:prettypipes:medium_filter_module>);
craftingTable.remove(<item:prettypipes:high_high_priority_module>);
craftingTable.remove(<item:prettypipes:low_high_priority_module>);
craftingTable.remove(<item:prettypipes:medium_high_priority_module>);
craftingTable.remove(<item:prettypipes:high_low_priority_module>);
craftingTable.remove(<item:prettypipes:low_low_priority_module>);
craftingTable.remove(<item:prettypipes:medium_low_priority_module>);
craftingTable.remove(<item:prettypipes:pipe_frame>);
craftingTable.remove(<item:prettypipes:redstone_module>);
craftingTable.remove(<item:prettypipes:high_retrieval_module>);
craftingTable.remove(<item:prettypipes:low_retrieval_module>);
craftingTable.remove(<item:prettypipes:medium_retrieval_module>);
craftingTable.remove(<item:prettypipes:random_sorting_modifier>);
craftingTable.remove(<item:prettypipes:round_robin_sorting_modifier>);
craftingTable.remove(<item:prettypipes:high_speed_module>);
craftingTable.remove(<item:prettypipes:low_speed_module>);
craftingTable.remove(<item:prettypipes:medium_speed_module>);
craftingTable.remove(<item:prettypipes:stack_size_module>);
craftingTable.remove(<item:prettypipes:wrench>);
craftingTable.remove(<item:prettypipes:blank_module>);

//#--> Adding Crafts...

craftingTable.addShaped("fluid_pipe0", <item:ppfluids:fluid_pipe> * 4, [
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>],
    [<item:minecraft:iron_bars>, <tag:items:forge:glass>, <item:minecraft:iron_bars>],
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]
]);
craftingTable.addShaped("blank_module0", <item:prettypipes:blank_module> * 8, [
    [<item:energizedpower:silicon>, <item:minecraft:redstone>, <item:energizedpower:silicon>],
    [<item:minecraft:stone_slab>, <item:minecraft:comparator>, <item:minecraft:stone_slab>],
    [<item:energizedpower:silicon>, <item:minecraft:redstone>, <item:energizedpower:silicon>]
]);
craftingTable.addShaped("blank_module1", <item:prettypipes:redstone_module> * 24, [
    [<item:minecraft:comparator>, <item:minecraft:redstone>, <item:minecraft:comparator>],
    [<item:morered:redwire_spool>, <item:prettypipes:blank_module>, <item:morered:redwire_spool>],
    [<item:minecraft:comparator>, <item:minecraft:redstone>, <item:minecraft:comparator>]
]);
craftingTable.addShaped("pipe_wrench0", <item:prettypipes:wrench> * 1, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:air>]
]);





//============================== LARGE FLUID TANK ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:fluidtank:tank_iron>);
craftingTable.remove(<item:fluidtank:tank_gold>);
craftingTable.remove(<item:fluidtank:tank_diamond>);
craftingTable.remove(<item:fluidtank:tank_emerald>);
craftingTable.remove(<item:fluidtank:tank_star>);
craftingTable.remove(<item:fluidtank:creative>);
craftingTable.remove(<item:fluidtank:tank_void>);
craftingTable.remove(<item:fluidtank:tank_copper>);
craftingTable.remove(<item:fluidtank:tank_tin>);
craftingTable.remove(<item:fluidtank:tank_bronze>);
craftingTable.remove(<item:fluidtank:tank_lead>);
craftingTable.remove(<item:fluidtank:tank_silver>);
craftingTable.remove(<item:fluidtank:chest_as_tank>);
craftingTable.remove(<item:fluidtank:reservoir_wood>);
craftingTable.remove(<item:fluidtank:reservoir_stone>);
craftingTable.remove(<item:fluidtank:reservoir_iron>);





//============================== TUBES RELOADED ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:tubesreloaded:shunt>);
craftingTable.remove(<item:tubesreloaded:loader>);
craftingTable.remove(<item:tubesreloaded:redstone_tube>);
craftingTable.remove(<item:tubesreloaded:extractor>);
craftingTable.remove(<item:tubesreloaded:filter>);
craftingTable.remove(<item:tubesreloaded:distributor>);
craftingTable.remove(<item:tubesreloaded:white_tube>);
craftingTable.remove(<item:tubesreloaded:orange_tube>);
craftingTable.remove(<item:tubesreloaded:magenta_tube>);
craftingTable.remove(<item:tubesreloaded:light_blue_tube>);
craftingTable.remove(<item:tubesreloaded:yellow_tube>);
craftingTable.remove(<item:tubesreloaded:lime_tube>);
craftingTable.remove(<item:tubesreloaded:pink_tube>);
craftingTable.remove(<item:tubesreloaded:gray_tube>);
craftingTable.remove(<item:tubesreloaded:light_gray_tube>);
craftingTable.remove(<item:tubesreloaded:cyan_tube>);
craftingTable.remove(<item:tubesreloaded:purple_tube>);
craftingTable.remove(<item:tubesreloaded:blue_tube>);
craftingTable.remove(<item:tubesreloaded:brown_tube>);
craftingTable.remove(<item:tubesreloaded:green_tube>);
craftingTable.remove(<item:tubesreloaded:red_tube>);
craftingTable.remove(<item:tubesreloaded:black_tube>);
craftingTable.remove(<item:tubesreloaded:tubing_pliers>);
craftingTable.remove(<item:tubesreloaded:tube>);
craftingTable.remove(<item:tubesreloaded:osmosis_filter>);

//#--> Adding Crafts...

craftingTable.addShaped("tube0", <item:tubesreloaded:tube> * 4, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:gold_block>, <tag:items:forge:glass>, <item:minecraft:gold_block>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("tube1", <item:tubesreloaded:tube> * 4, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:copper_block>, <tag:items:forge:glass>, <item:minecraft:copper_block>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("osmosis_filter0", <item:tubesreloaded:osmosis_filter> * 1, [
    [<item:tubesreloaded:tube>, <item:prettypipes:blank_module>, <item:tubesreloaded:tube>],
    [<item:minecraft:air>, <item:minecraft:slime_ball>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>]
]);





//============================== MORE RED ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:jumbofurnace:jumbo_furnace>);
craftingTable.remove(<item:morered:soldering_table>);
craftingTable.remove(<item:morered:stone_plate>);
craftingTable.remove(<item:morered:latch>);
craftingTable.remove(<item:morered:pulse_gate>);
craftingTable.remove(<item:morered:redwire_post_plate>);
craftingTable.remove(<item:morered:hexidecrubrometer>);
craftingTable.remove(<item:morered:bundled_cable_post>);
craftingTable.remove(<item:morered:bundled_cable_relay_plate>);
craftingTable.remove(<item:morered:red_alloy_wire>);
craftingTable.remove(<item:morered:white_network_cable>);
craftingTable.remove(<item:morered:orange_network_cable>);
craftingTable.remove(<item:morered:magenta_network_cable>);
craftingTable.remove(<item:morered:light_blue_network_cable>);
craftingTable.remove(<item:morered:yellow_network_cable>);
craftingTable.remove(<item:morered:lime_network_cable>);
craftingTable.remove(<item:morered:pink_network_cable>);
craftingTable.remove(<item:morered:gray_network_cable>);
craftingTable.remove(<item:morered:light_gray_network_cable>);
craftingTable.remove(<item:morered:cyan_network_cable>);
craftingTable.remove(<item:morered:purple_network_cable>);
craftingTable.remove(<item:morered:blue_network_cable>);
craftingTable.remove(<item:morered:brown_network_cable>);
craftingTable.remove(<item:morered:green_network_cable>);
craftingTable.remove(<item:morered:red_network_cable>);
craftingTable.remove(<item:morered:black_network_cable>);
craftingTable.remove(<item:morered:bundled_network_cable>);
craftingTable.remove(<item:morered:diode>);
craftingTable.remove(<item:morered:not_gate>);
craftingTable.remove(<item:morered:nor_gate>);
craftingTable.remove(<item:morered:nand_gate>);
craftingTable.remove(<item:morered:or_gate>);
craftingTable.remove(<item:morered:and_gate>);
craftingTable.remove(<item:morered:xor_gate>);
craftingTable.remove(<item:morered:xnor_gate>);
craftingTable.remove(<item:morered:multiplexer>);
craftingTable.remove(<item:morered:and_2_gate>);
craftingTable.remove(<item:morered:nand_2_gate>);
craftingTable.remove(<item:morered:bitwise_diode>);
craftingTable.remove(<item:morered:bitwise_not_gate>);
craftingTable.remove(<item:morered:bitwise_or_gate>);
craftingTable.remove(<item:morered:bitwise_and_gate>);
craftingTable.remove(<item:morered:bitwise_xor_gate>);
craftingTable.remove(<item:morered:bitwise_xnor_gate>);
craftingTable.remove(<item:morered:bundled_cable_spool>);
craftingTable.remove(<item:morered:redwire_post>);
craftingTable.remove(<item:morered:redwire_post_relay_plate>);
craftingTable.remove(<item:morered:redwire_spool>);
craftingTable.remove(<item:morered:red_alloy_ingot>);

//#--> Adding Crafts...

craftingTable.addShapeless("redwire_post0", <item:morered:redwire_post> * 1, [<item:minecraft:copper_ingot>, <item:morered:red_alloy_ingot>]);
craftingTable.addShaped("redwire_post1", <item:morered:redwire_post_relay_plate> * 2, [
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
    [<item:minecraft:redstone>, <item:morered:red_alloy_ingot>, <item:minecraft:redstone>],
    [<item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>, <item:minecraft:smooth_stone_slab>]
]);
craftingTable.addShaped("redwire_spool0", <item:morered:redwire_spool> * 1, [
    [<item:morered:red_alloy_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:stick>],
    [<item:minecraft:copper_ingot>, <item:morered:red_alloy_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:stick>, <item:minecraft:copper_ingot>, <item:morered:red_alloy_ingot>]
]);
craftingTable.addShaped("redwire_alloy0", <item:morered:red_alloy_ingot> * 1, [
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>],
    [<item:minecraft:redstone>, <item:minecraft:copper_ingot>, <item:minecraft:redstone>],
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);





//============================== RANGED WIRELESS REDSTONE ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:rangedwirelessredstone:redstone_transmitter>);
craftingTable.remove(<item:rangedwirelessredstone:redstone_receiver>);

//#--> Adding Crafts...

craftingTable.addShaped("redstone_transmitter0", <item:rangedwirelessredstone:redstone_transmitter> * 1, [
    [<item:minecraft:air>, <item:morered:redwire_spool>, <item:minecraft:air>],
    [<item:minecraft:smooth_stone_slab>, <item:prettypipes:redstone_module>, <item:minecraft:smooth_stone_slab>],
    [<item:minecraft:smooth_stone_slab>, <item:minecraft:diamond>, <item:minecraft:smooth_stone_slab>]
]);
craftingTable.addShaped("redstone_receiver", <item:rangedwirelessredstone:redstone_receiver> * 1, [
    [<item:minecraft:redstone_torch>, <item:minecraft:air>, <item:minecraft:redstone_torch>],
    [<item:morered:redwire_spool>, <item:minecraft:smooth_stone_slab>, <item:morered:redwire_spool>],
    [<item:minecraft:smooth_stone_slab>, <item:prettypipes:blank_module>, <item:minecraft:smooth_stone_slab>]
]);





//============================== WIRELESS-REDSTONE ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:gircredstone:emitter>);
craftingTable.remove(<item:gircredstone:multiemitter>);
craftingTable.remove(<item:gircredstone:linker>);
craftingTable.remove(<item:gircredstone:multilinker>);
craftingTable.remove(<item:gircredstone:acceptor>);
craftingTable.remove(<item:gircredstone:activator>);

//#--> Adding Crafts...

craftingTable.addShaped("acceptor0", <item:gircredstone:acceptor> * 1, [
    [<item:minecraft:redstone_block>, <item:minecraft:redstone_torch>, <item:minecraft:redstone_block>],
    [<item:minecraft:white_concrete>, <item:prettypipes:redstone_module>, <item:minecraft:white_concrete>],
    [<item:minecraft:redstone_block>, <item:minecraft:diamond>, <item:minecraft:redstone_block>]
]);
craftingTable.addShaped("activator0", <item:gircredstone:activator> * 1, [
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:prettypipes:blank_module>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:lever>, <item:minecraft:air>]
]);





//============================== REDSTONE PEN ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:redstonepen:bistable_relay>);
craftingTable.remove(<item:redstonepen:basic_pulse_button>);
craftingTable.remove(<item:redstonepen:inverted_relay>);
craftingTable.remove(<item:redstonepen:pulse_relay>);
craftingTable.remove(<item:redstonepen:pen>);
craftingTable.remove(<item:redstonepen:basic_lever>);
craftingTable.remove(<item:redstonepen:bridge_relay>);
craftingTable.remove(<item:redstonepen:control_box>);
craftingTable.remove(<item:redstonepen:relay>);
craftingTable.remove(<item:redstonepen:quill>);

//#--> Adding Crafts...

craftingTable.addShaped("redstone_plc0", <item:redstonepen:control_box> * 1, [
    [<item:minecraft:quartz>, <item:morered:redwire_spool>, <item:minecraft:quartz>],
    [<item:minecraft:emerald>, <item:prettypipes:redstone_module>, <item:minecraft:diamond>],
    [<item:minecraft:quartz>, <item:minecraft:gold_ingot>, <item:minecraft:quartz>]
]);
craftingTable.addShaped("redstone_relay0", <item:redstonepen:relay> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:redstone_torch>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:redstone>]
]);
craftingTable.addShaped("redstone_quill0", <item:redstonepen:quill> * 1, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:feather>],
    [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>],
    [<item:minecraft:redstone>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);





//============================== BETTER MINECARTS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:betterminecarts:crafting_minecart_item>);
craftingTable.remove(<item:betterminecarts:steam_locomotive>);
craftingTable.remove(<item:betterminecarts:signal_rail>);
craftingTable.remove(<item:betterminecarts:crossed_rail>);

//#--> Adding Crafts...

craftingTable.addShaped("signal_rail3", <item:betterminecarts:signal_rail> * 16, [
    [<item:minecraft:iron_ingot>, <item:minecraft:stone_pressure_plate>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:stone_pressure_plate>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("crossed_rail0", <item:betterminecarts:crossed_rail> * 16, [
    [<item:minecraft:iron_ingot>, <item:minecraft:stick>, <item:minecraft:iron_ingot>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:iron_ingot>, <item:minecraft:stick>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShapeless("biodiesel0", <item:betterminecarts:bio_diesel_fuel> * 1, [<item:minecraft:glass_bottle>, <item:minecraft:sugar_cane>, <item:minecraft:sugar_cane>]);





//============================== USEFUL RAILROADS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:usefulrailroads:highspeed_rail>);
craftingTable.remove(<item:usefulrailroads:clamp_rail>);
craftingTable.remove(<item:usefulrailroads:intersection_rail>);
craftingTable.remove(<item:usefulrailroads:teleport_rail>);
craftingTable.remove(<item:usefulrailroads:buffer_stop>);
craftingTable.remove(<item:usefulrailroads:single_track_builder>);
craftingTable.remove(<item:usefulrailroads:double_track_builder>);
craftingTable.remove(<item:usefulrailroads:direction_rail>);

//#--> Adding Crafts...

craftingTable.addShaped("directional_rail0", <item:usefulrailroads:direction_rail> * 16, [
    [<item:minecraft:iron_ingot>, <item:minecraft:repeater>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gold_block>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]
]);





//============================== NATURE COMPASS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:naturescompass:naturescompass>);

//#--> Adding Crafts...

craftingTable.addShaped("nature_compass0", <item:naturescompass:naturescompass> * 1, [
    [<tag:items:minecraft:saplings>, <item:minecraft:redstone_torch>, <tag:items:minecraft:saplings>],
    [<tag:items:minecraft:planks>, <item:prettypipes:redstone_module>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:saplings>, <tag:items:minecraft:planks>, <tag:items:minecraft:saplings>]
]);





//============================== SMALL SHIPS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:smallships:jungle_cog>);
craftingTable.remove(<item:smallships:jungle_brigg>);
craftingTable.remove(<item:smallships:jungle_galley>);
craftingTable.remove(<item:smallships:jungle_drakkar>);
craftingTable.remove(<item:smallships:acacia_cog>);
craftingTable.remove(<item:smallships:acacia_brigg>);
craftingTable.remove(<item:smallships:acacia_galley>);
craftingTable.remove(<item:smallships:acacia_drakkar>);
craftingTable.remove(<item:smallships:cherry_cog>);
craftingTable.remove(<item:smallships:cherry_brigg>);
craftingTable.remove(<item:smallships:cherry_galley>);
craftingTable.remove(<item:smallships:cherry_drakkar>);
craftingTable.remove(<item:smallships:dark_oak_cog>);
craftingTable.remove(<item:smallships:dark_oak_brigg>);
craftingTable.remove(<item:smallships:dark_oak_galley>);
craftingTable.remove(<item:smallships:dark_oak_drakkar>);
craftingTable.remove(<item:smallships:mangrove_cog>);
craftingTable.remove(<item:smallships:mangrove_brigg>);
craftingTable.remove(<item:smallships:mangrove_galley>);
craftingTable.remove(<item:smallships:mangrove_drakkar>);
craftingTable.remove(<item:smallships:bamboo_cog>);
craftingTable.remove(<item:smallships:bamboo_brigg>);
craftingTable.remove(<item:smallships:bamboo_galley>);
craftingTable.remove(<item:smallships:bamboo_drakkar>);
craftingTable.remove(<item:smallships:cannon_ball>);

//#--> Adding Crafts...

craftingTable.addShaped("cannon_ball0", <item:smallships:cannon_ball> * 8, [
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:gunpowder>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]
]);





//============================== SIMPLE HATS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:simplehats:hatbag_common>);
craftingTable.remove(<item:simplehats:hatbag_uncommon>);
craftingTable.remove(<item:simplehats:hatbag_rare>);
craftingTable.remove(<item:simplehats:hatbag_epic>);
craftingTable.remove(<item:simplehats:hatbag_easter>);
craftingTable.remove(<item:simplehats:hatbag_summer>);
craftingTable.remove(<item:simplehats:hatbag_halloween>);
craftingTable.remove(<item:simplehats:hatbag_festive>);
craftingTable.remove(<item:simplehats:hatscraps_common>);
craftingTable.remove(<item:simplehats:hatscraps_uncommon>);
craftingTable.remove(<item:simplehats:hatscraps_rare>);
craftingTable.remove(<item:simplehats:hatscraps_easter>);
craftingTable.remove(<item:simplehats:hatscraps_summer>);
craftingTable.remove(<item:simplehats:hatscraps_halloween>);
craftingTable.remove(<item:simplehats:hatscraps_festive>);





//============================== TOUGH AS NAILS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:toughasnails:chorus_fruit_juice>);
craftingTable.remove(<item:toughasnails:wool_helmet>);
craftingTable.remove(<item:toughasnails:wool_chestplate>);
craftingTable.remove(<item:toughasnails:wool_leggings>);
craftingTable.remove(<item:toughasnails:wool_boots>);
craftingTable.remove(<item:toughasnails:leaf_helmet>);
craftingTable.remove(<item:toughasnails:leaf_chestplate>);
craftingTable.remove(<item:toughasnails:leaf_leggings>);
craftingTable.remove(<item:toughasnails:leaf_boots>);





//============================== COLD SWEAT ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:cold_sweat:waterskin>);
craftingTable.remove(<item:cold_sweat:filled_waterskin>);
craftingTable.remove(<item:cold_sweat:minecart_insulation>);
craftingTable.remove(<item:cold_sweat:insulated_minecart>);
craftingTable.remove(<item:cold_sweat:soulspring_lamp>);
craftingTable.remove(<item:cold_sweat:soul_sprout>);
craftingTable.remove(<item:cold_sweat:thermometer>);
craftingTable.remove(<item:cold_sweat:boiler>);
craftingTable.remove(<item:cold_sweat:icebox>);
craftingTable.remove(<item:cold_sweat:hoglin_headpiece>);
craftingTable.remove(<item:cold_sweat:hoglin_tunic>);
craftingTable.remove(<item:cold_sweat:hoglin_trousers>);
craftingTable.remove(<item:cold_sweat:hoglin_hooves>);
craftingTable.remove(<item:cold_sweat:fur_cap>);
craftingTable.remove(<item:cold_sweat:fur_parka>);
craftingTable.remove(<item:cold_sweat:fur_pants>);
craftingTable.remove(<item:cold_sweat:fur_boots>);
craftingTable.remove(<item:cold_sweat:hearth>);

//#--> Adding Crafts...

craftingTable.addShaped("hearth0", <item:cold_sweat:hearth> * 1, [
    [<item:minecraft:air>, <item:cold_sweat:smokestack>, <item:minecraft:air>],
    [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>],
    [<item:minecraft:bricks>, <item:minecraft:cobblestone>, <item:minecraft:bricks>]
]);





//============================== HAEMORRHAGE ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:imbleeding:sticky_bandage>);
craftingTable.remove(<item:imbleeding:herbal_balm>);
craftingTable.remove(<item:imbleeding:soaked_bandage>);





//============================== HEALING 101 ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:healing:health_elixir>);
craftingTable.remove(<item:healing:bandage>);
craftingTable.remove(<item:healing:super_health_elixir>);

//#--> Adding Crafts...

craftingTable.addShaped("health_elixir0", <item:healing:super_health_elixir> * 5, [
    [<item:minecraft:air>, <item:healing:athelas>, <item:minecraft:air>],
    [<item:imbleeding:honey_bandage>, <item:healing:athelas>, <item:imbleeding:honey_bandage>],
    [<item:minecraft:air>, <item:toughasnails:sweet_berry_juice>, <item:minecraft:air>]
]);
craftingTable.addShaped("health_elixir1", <item:healing:super_health_elixir> * 1, [
    [<item:minecraft:air>, <item:minecraft:lily_of_the_valley>, <item:minecraft:air>],
    [<item:imbleeding:honey_bandage>, <item:minecraft:azure_bluet>, <item:imbleeding:honey_bandage>],
    [<item:minecraft:air>, <item:toughasnails:sweet_berry_juice>, <item:minecraft:air>]
]);
craftingTable.addShaped("health_elixir2", <item:healing:bandage> * 16, [
    [<item:minecraft:air>, <item:minecraft:kelp>, <item:minecraft:air>],
    [<item:imbleeding:honey_bandage>, <item:healing:athelas>, <item:imbleeding:honey_bandage>],
    [<item:minecraft:air>, <item:toughasnails:cactus_juice>, <item:minecraft:air>]
]);
craftingTable.addShaped("health_elixir3", <item:healing:bandage> * 4, [
    [<item:minecraft:air>, <item:minecraft:lily_of_the_valley>, <item:minecraft:air>],
    [<item:imbleeding:honey_bandage>, <item:minecraft:cornflower>, <item:imbleeding:honey_bandage>],
    [<item:minecraft:air>, <item:toughasnails:cactus_juice>, <item:minecraft:air>]
]);





//============================== SIMPLY SWORDS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:simplyswords:runic_tablet>);
craftingTable.remove(<item:simplyswords:runefused_gem>);
craftingTable.remove(<item:simplyswords:netherfused_gem>);
craftingTable.remove(<item:simplyswords:empowered_remnant>);
craftingTable.remove(<item:simplyswords:contained_remnant>);
craftingTable.remove(<item:simplyswords:tampered_remnant>);
craftingTable.remove(<item:simplyswords:iron_longsword>);
craftingTable.remove(<item:simplyswords:iron_rapier>);
craftingTable.remove(<item:simplyswords:iron_warglaive>);
craftingTable.remove(<item:simplyswords:iron_cutlass>);
craftingTable.remove(<item:simplyswords:iron_claymore>);
craftingTable.remove(<item:simplyswords:iron_greathammer>);
craftingTable.remove(<item:simplyswords:iron_chakram>);
craftingTable.remove(<item:simplyswords:iron_scythe>);
craftingTable.remove(<item:simplyswords:iron_halberd>);
craftingTable.remove(<item:simplyswords:gold_longsword>);
craftingTable.remove(<item:simplyswords:gold_rapier>);
craftingTable.remove(<item:simplyswords:gold_warglaive>);
craftingTable.remove(<item:simplyswords:gold_cutlass>);
craftingTable.remove(<item:simplyswords:gold_claymore>);
craftingTable.remove(<item:simplyswords:gold_greathammer>);
craftingTable.remove(<item:simplyswords:gold_chakram>);
craftingTable.remove(<item:simplyswords:gold_scythe>);
craftingTable.remove(<item:simplyswords:gold_halberd>);
craftingTable.remove(<item:simplyswords:diamond_longsword>);
craftingTable.remove(<item:simplyswords:diamond_rapier>);
craftingTable.remove(<item:simplyswords:diamond_warglaive>);
craftingTable.remove(<item:simplyswords:diamond_cutlass>);
craftingTable.remove(<item:simplyswords:diamond_claymore>);
craftingTable.remove(<item:simplyswords:diamond_greathammer>);
craftingTable.remove(<item:simplyswords:diamond_chakram>);
craftingTable.remove(<item:simplyswords:diamond_scythe>);
craftingTable.remove(<item:simplyswords:diamond_halberd>);
craftingTable.remove(<item:simplyswords:runic_longsword>);
craftingTable.remove(<item:simplyswords:runic_twinblade>);
craftingTable.remove(<item:simplyswords:runic_rapier>);
craftingTable.remove(<item:simplyswords:runic_sai>);
craftingTable.remove(<item:simplyswords:runic_spear>);
craftingTable.remove(<item:simplyswords:runic_glaive>);
craftingTable.remove(<item:simplyswords:runic_warglaive>);
craftingTable.remove(<item:simplyswords:runic_cutlass>);
craftingTable.remove(<item:simplyswords:runic_claymore>);
craftingTable.remove(<item:simplyswords:runic_greathammer>);
craftingTable.remove(<item:simplyswords:runic_greataxe>);
craftingTable.remove(<item:simplyswords:runic_chakram>);
craftingTable.remove(<item:simplyswords:runic_scythe>);
craftingTable.remove(<item:simplyswords:runic_halberd>);
craftingTable.remove(<item:simplyswords:runic_katana>);
craftingTable.remove(<item:simplyswords:sword_on_a_stick>);
furnace.remove(<item:simplyswords:empowered_remnant>);





//============================== MOB GRINDING UTILS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:mob_grinding_utils:fan>);
craftingTable.remove(<item:mob_grinding_utils:saw>);
craftingTable.remove(<item:mob_grinding_utils:spikes>);
craftingTable.remove(<item:mob_grinding_utils:absorption_hopper>);
craftingTable.remove(<item:mob_grinding_utils:tank>);
craftingTable.remove(<item:mob_grinding_utils:tank_sink>);
craftingTable.remove(<item:mob_grinding_utils:jumbo_tank>);
craftingTable.remove(<item:mob_grinding_utils:wither_muffler>);
craftingTable.remove(<item:mob_grinding_utils:dragon_muffler>);
craftingTable.remove(<item:mob_grinding_utils:dark_oak_stone>);
craftingTable.remove(<item:mob_grinding_utils:entity_conveyor>);
craftingTable.remove(<item:mob_grinding_utils:entity_spawner>);
craftingTable.remove(<item:mob_grinding_utils:ender_inhibitor_on>);
craftingTable.remove(<item:mob_grinding_utils:ender_inhibitor_off>);
craftingTable.remove(<item:mob_grinding_utils:tinted_glass>);
craftingTable.remove(<item:mob_grinding_utils:dreadful_dirt>);
craftingTable.remove(<item:mob_grinding_utils:delightful_dirt>);
craftingTable.remove(<item:mob_grinding_utils:xpsolidifier>);
craftingTable.remove(<item:mob_grinding_utils:solid_xp_block>);
craftingTable.remove(<item:mob_grinding_utils:fan_upgrade_height>);
craftingTable.remove(<item:mob_grinding_utils:fan_upgrade_width>);
craftingTable.remove(<item:mob_grinding_utils:fan_upgrade_speed>);
craftingTable.remove(<item:mob_grinding_utils:saw_upgrade_fire>);
craftingTable.remove(<item:mob_grinding_utils:saw_upgrade_smite>);
craftingTable.remove(<item:mob_grinding_utils:saw_upgrade_arthropod>);
craftingTable.remove(<item:mob_grinding_utils:saw_upgrade_beheading>);
craftingTable.remove(<item:mob_grinding_utils:saw_upgrade_looting>);
craftingTable.remove(<item:mob_grinding_utils:saw_upgrade_sharpness>);
craftingTable.remove(<item:mob_grinding_utils:absorption_upgrade>);
craftingTable.remove(<item:mob_grinding_utils:mob_swab>);
craftingTable.remove(<item:mob_grinding_utils:mob_swab_used>);
craftingTable.remove(<item:mob_grinding_utils:rotten_egg>);
craftingTable.remove(<item:mob_grinding_utils:golden_egg>);
craftingTable.remove(<item:mob_grinding_utils:solid_xp_mould_blank>);
craftingTable.remove(<item:mob_grinding_utils:solid_xp_mould_baby>);
craftingTable.remove(<item:mob_grinding_utils:solid_xp_baby>);
craftingTable.remove(<item:mob_grinding_utils:xp_solidifier_upgrade>);
craftingTable.remove(<item:mob_grinding_utils:spawner_upgrade_height>);
craftingTable.remove(<item:mob_grinding_utils:spawner_upgrade_width>);
craftingTable.remove(<item:mob_grinding_utils:monocle>);
craftingTable.remove(<item:mob_grinding_utils:nutritious_chicken_feed>);
craftingTable.remove(<item:mob_grinding_utils:gm_chicken_feed>);
craftingTable.remove(<item:mob_grinding_utils:gm_chicken_feed_cursed>);

//#--> Adding Crafts...

craftingTable.addShaped("absorption_hopper0", <item:mob_grinding_utils:absorption_hopper> * 1, [
    [<item:minecraft:diamond>, <item:minecraft:obsidian>, <item:minecraft:diamond>],
    [<item:minecraft:obsidian>, <item:minecraft:hopper>, <item:minecraft:obsidian>],
    [<item:minecraft:diamond>, <item:minecraft:obsidian>, <item:minecraft:diamond>]
]);
craftingTable.addShaped("absorption_upgrade0", <item:mob_grinding_utils:absorption_upgrade> * 1, [
    [<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>],
    [<item:minecraft:copper_block>, <item:prettypipes:redstone_module>, <item:minecraft:copper_block>],
    [<item:minecraft:obsidian>, <item:minecraft:hopper>, <item:minecraft:obsidian>]
]);
craftingTable.addShapeless("tank0", <item:mob_grinding_utils:tank> * 1, [<item:fluidtank:tank_wood>, <item:fluidtank:tank_wood>, <item:fluidtank:tank_wood>, <item:fluidtank:tank_wood>]);





//============================== ADDITIONAL BANNERS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:additionalbanners:prismarine>);
craftingTable.remove(<item:additionalbanners:dragon>);
craftingTable.remove(<item:additionalbanners:phantom>);

//#--> Adding Crafts...

craftingTable.addShaped("banner_prismarine0", <item:additionalbanners:prismarine> * 1, [
    [<item:minecraft:shears>, <item:minecraft:paper>, <item:minecraft:air>],
    [<item:minecraft:prismarine_shard>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("banner_dragon0", <item:additionalbanners:dragon> * 1, [
    [<item:minecraft:shears>, <item:minecraft:paper>, <item:minecraft:air>],
    [<item:minecraft:glow_ink_sac>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("banner_phantom0", <item:additionalbanners:phantom> * 1, [
    [<item:minecraft:shears>, <item:minecraft:paper>, <item:minecraft:air>],
    [<item:cold_sweat:chameleon_molt>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);





//============================== LUCKY SPELUNKER CHARM ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:spelunkers_charm:encased_geyser>);
craftingTable.remove(<item:spelunkers_charm:mining_helmet>);
craftingTable.remove(<item:spelunkers_charm:candle_helmet>);





//============================== OVERWORLD NETHERITE ========================================//

//#--> Removing Crafts...

furnace.remove(<item:overworld_netherite_ore:ancientdebrispiece>);
furnace.remove(<item:overworld_netherite_ore:large_ancient_shard>);





//============================== CYCLIC ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:cyclic:apple_ender>);
craftingTable.remove(<item:cyclic:apple_lofty_stature>);
craftingTable.remove(<item:cyclic:apple_honey>);
craftingTable.remove(<item:cyclic:apple_chorus>);
craftingTable.remove(<item:cyclic:apple_bone>);
craftingTable.remove(<item:cyclic:apple_prismarine>);
craftingTable.remove(<item:cyclic:apple_lapis>);
craftingTable.remove(<item:cyclic:apple_iron>);
craftingTable.remove(<item:cyclic:apple_diamond>);
craftingTable.remove(<item:cyclic:apple_emerald>);
craftingTable.remove(<item:cyclic:apple_chocolate>);
craftingTable.remove(<item:cyclic:glowing_helmet>);
craftingTable.remove(<item:cyclic:blockstate_data>);
craftingTable.remove(<item:cyclic:chorus_flight>);
craftingTable.remove(<item:cyclic:chorus_spectral>);
craftingTable.remove(<item:cyclic:charm_longfall>);
craftingTable.remove(<item:cyclic:charm_creeper>);
craftingTable.remove(<item:cyclic:charm_stone>);
craftingTable.remove(<item:cyclic:charm_antipotion>);
craftingTable.remove(<item:cyclic:charm_stealthpotion>);
craftingTable.remove(<item:cyclic:charm_boostpotion>);
craftingTable.remove(<item:cyclic:charm_crit>);
craftingTable.remove(<item:cyclic:quiver_damage>);
craftingTable.remove(<item:cyclic:quiver_lightning>);
craftingTable.remove(<item:cyclic:charm_invisible>);
craftingTable.remove(<item:cyclic:charm_magicdefense>);
craftingTable.remove(<item:cyclic:charm_starvation>);
craftingTable.remove(<item:cyclic:charm_venom>);
craftingTable.remove(<item:cyclic:charm_water>);
craftingTable.remove(<item:cyclic:charm_speed>);
craftingTable.remove(<item:cyclic:charm_knockback_resistance>);
craftingTable.remove(<item:cyclic:charm_luck>);
craftingTable.remove(<item:cyclic:charm_attack_speed>);
craftingTable.remove(<item:cyclic:charm_xp_speed>);
craftingTable.remove(<item:cyclic:charm_xp_blocker>);
craftingTable.remove(<item:cyclic:prospector>);
craftingTable.remove(<item:cyclic:ender_book>);
craftingTable.remove(<item:cyclic:build_scepter>);
craftingTable.remove(<item:cyclic:replace_scepter>);
craftingTable.remove(<item:cyclic:offset_scepter>);
craftingTable.remove(<item:cyclic:randomize_scepter>);
craftingTable.remove(<item:cyclic:spawn_inspector>);
craftingTable.remove(<item:cyclic:charm_wing>);
craftingTable.remove(<item:cyclic:soulstone>);
craftingTable.remove(<item:cyclic:inventory_cake>);
craftingTable.remove(<item:cyclic:sound_data>);
craftingTable.remove(<item:cyclic:gem_obsidian>);
craftingTable.remove(<item:cyclic:gem_amber>);
craftingTable.remove(<item:cyclic:location_data>);
craftingTable.remove(<item:cyclic:settings_data>);
craftingTable.remove(<item:cyclic:shape_data>);
craftingTable.remove(<item:cyclic:filter_data>);
craftingTable.remove(<item:cyclic:copper_nugget>);
craftingTable.remove(<item:cyclic:netherite_nugget>);
craftingTable.remove(<item:cyclic:storage_bag>);
craftingTable.remove(<item:cyclic:crafting_bag>);
craftingTable.remove(<item:cyclic:crafting_stick>);
craftingTable.remove(<item:cyclic:mob_container>);
craftingTable.remove(<item:cyclic:tile_transporter_empty>);
craftingTable.remove(<item:cyclic:tile_transporter>);
craftingTable.remove(<item:cyclic:magic_net>);
craftingTable.remove(<item:cyclic:boomerang_carry>);
craftingTable.remove(<item:cyclic:boomerang_damage>);
craftingTable.remove(<item:cyclic:spawner_seeker>);
craftingTable.remove(<item:cyclic:glove_climb>);
craftingTable.remove(<item:cyclic:flippers>);
craftingTable.remove(<item:cyclic:antigravity>);
craftingTable.remove(<item:cyclic:charm_void>);
craftingTable.remove(<item:cyclic:charm_antidote>);
craftingTable.remove(<item:cyclic:charm_fire>);
craftingTable.remove(<item:cyclic:charm_wither>);
craftingTable.remove(<item:cyclic:charm_ultimate>);
craftingTable.remove(<item:cyclic:heart>);
craftingTable.remove(<item:cyclic:heart_empty>);
craftingTable.remove(<item:cyclic:carbon_paper>);
craftingTable.remove(<item:cyclic:ice_scepter>);
craftingTable.remove(<item:cyclic:fire_scepter>);
craftingTable.remove(<item:cyclic:lightning_scepter>);
craftingTable.remove(<item:cyclic:ender_bag>);
craftingTable.remove(<item:cyclic:spell_water>);
craftingTable.remove(<item:cyclic:torch_launcher>);
craftingTable.remove(<item:cyclic:charm_torch>);
craftingTable.remove(<item:cyclic:charm_torch_cave>);
craftingTable.remove(<item:cyclic:charm_home>);
craftingTable.remove(<item:cyclic:charm_world>);
craftingTable.remove(<item:cyclic:evoker_fang>);
craftingTable.remove(<item:cyclic:ender_eye_reuse>);
craftingTable.remove(<item:cyclic:ender_pearl_reuse>);
craftingTable.remove(<item:cyclic:ender_pearl_mounted>);
craftingTable.remove(<item:cyclic:spelunker>);
craftingTable.remove(<item:cyclic:elevation_wand>);
craftingTable.remove(<item:cyclic:teleport_wand>);
craftingTable.remove(<item:cyclic:scythe_harvest>);
craftingTable.remove(<item:cyclic:antimatter_wand>);
craftingTable.remove(<item:cyclic:shears_flint>);
craftingTable.remove(<item:cyclic:rotation_wand>);
craftingTable.remove(<item:cyclic:scythe_brush>);
craftingTable.remove(<item:cyclic:scythe_forage>);
craftingTable.remove(<item:cyclic:scythe_leaves>);
craftingTable.remove(<item:cyclic:stirrups>);
craftingTable.remove(<item:cyclic:stirrups_reverse>);
craftingTable.remove(<item:cyclic:lever_remote>);
craftingTable.remove(<item:cyclic:experience_food>);
craftingTable.remove(<item:cyclic:mattock>);
craftingTable.remove(<item:cyclic:mattock_nether>);
craftingTable.remove(<item:cyclic:mattock_stone>);
craftingTable.remove(<item:cyclic:sleeping_mat>);
craftingTable.remove(<item:cyclic:shears_obsidian>);
craftingTable.remove(<item:cyclic:cable_wrench>);
craftingTable.remove(<item:cyclic:carrot_ender>);
craftingTable.remove(<item:cyclic:diamond_carrot_health>);
craftingTable.remove(<item:cyclic:redstone_carrot_speed>);
craftingTable.remove(<item:cyclic:emerald_carrot_jump>);
craftingTable.remove(<item:cyclic:lapis_carrot_variant>);
craftingTable.remove(<item:cyclic:toxic_carrot>);
craftingTable.remove(<item:cyclic:crystal_boots>);
craftingTable.remove(<item:cyclic:crystal_helmet>);
craftingTable.remove(<item:cyclic:crystal_chestplate>);
craftingTable.remove(<item:cyclic:crystal_leggings>);
craftingTable.remove(<item:cyclic:emerald_boots>);
craftingTable.remove(<item:cyclic:emerald_helmet>);
craftingTable.remove(<item:cyclic:emerald_chestplate>);
craftingTable.remove(<item:cyclic:emerald_leggings>);
craftingTable.remove(<item:cyclic:amethyst_pickaxe>);
craftingTable.remove(<item:cyclic:copper_pickaxe>);
craftingTable.remove(<item:cyclic:emerald_pickaxe>);
craftingTable.remove(<item:cyclic:crystal_pickaxe>);
craftingTable.remove(<item:cyclic:sandstone_pickaxe>);
craftingTable.remove(<item:cyclic:netherbrick_pickaxe>);
craftingTable.remove(<item:cyclic:amethyst_axe>);
craftingTable.remove(<item:cyclic:copper_axe>);
craftingTable.remove(<item:cyclic:emerald_axe>);
craftingTable.remove(<item:cyclic:crystal_axe>);
craftingTable.remove(<item:cyclic:sandstone_axe>);
craftingTable.remove(<item:cyclic:netherbrick_axe>);
craftingTable.remove(<item:cyclic:amethyst_hoe>);
craftingTable.remove(<item:cyclic:copper_hoe>);
craftingTable.remove(<item:cyclic:emerald_hoe>);
craftingTable.remove(<item:cyclic:crystal_hoe>);
craftingTable.remove(<item:cyclic:sandstone_hoe>);
craftingTable.remove(<item:cyclic:netherbrick_hoe>);
craftingTable.remove(<item:cyclic:amethyst_shovel>);
craftingTable.remove(<item:cyclic:copper_shovel>);
craftingTable.remove(<item:cyclic:emerald_shovel>);
craftingTable.remove(<item:cyclic:crystal_shovel>);
craftingTable.remove(<item:cyclic:sandstone_shovel>);
craftingTable.remove(<item:cyclic:netherbrick_shovel>);
craftingTable.remove(<item:cyclic:amethyst_sword>);
craftingTable.remove(<item:cyclic:copper_sword>);
craftingTable.remove(<item:cyclic:emerald_sword>);
craftingTable.remove(<item:cyclic:crystal_sword>);
craftingTable.remove(<item:cyclic:sandstone_sword>);
craftingTable.remove(<item:cyclic:netherbrick_sword>);
craftingTable.remove(<item:cyclic:shield_wood>);
craftingTable.remove(<item:cyclic:shield_leather>);
craftingTable.remove(<item:cyclic:shield_flint>);
craftingTable.remove(<item:cyclic:shield_obsidian>);
craftingTable.remove(<item:cyclic:shield_bone>);
craftingTable.remove(<item:cyclic:wand_hypno>);
craftingTable.remove(<item:cyclic:wand_missile>);
craftingTable.remove(<item:cyclic:fire_killer>);
craftingTable.remove(<item:cyclic:fireball>);
craftingTable.remove(<item:cyclic:laser_cannon>);
craftingTable.remove(<item:cyclic:flute_summoning>);
craftingTable.remove(<item:cyclic:entity_data>);
craftingTable.remove(<item:cyclic:spark>);
craftingTable.remove(<item:cyclic:fireball_dark>);
craftingTable.remove(<item:cyclic:lunchbox>);
craftingTable.remove(<item:cyclic:ender_fishing>);
craftingTable.remove(<item:cyclic:ender_torch>);
craftingTable.remove(<item:cyclic:xpjuice_bucket>);
craftingTable.remove(<item:cyclic:spikes_iron>);
craftingTable.remove(<item:cyclic:spikes_fire>);
craftingTable.remove(<item:cyclic:spikes_curse>);
craftingTable.remove(<item:cyclic:spikes_diamond>);
craftingTable.remove(<item:cyclic:hopper_fluid>);
craftingTable.remove(<item:cyclic:hopper>);
craftingTable.remove(<item:cyclic:hopper_gold>);
craftingTable.remove(<item:cyclic:anvil_void>);
craftingTable.remove(<item:cyclic:terra_glass>);
craftingTable.remove(<item:cyclic:dark_glass_connected>);
craftingTable.remove(<item:cyclic:glass_connected>);
craftingTable.remove(<item:cyclic:ender_item_shelf>);
craftingTable.remove(<item:cyclic:doorbell>);
craftingTable.remove(<item:cyclic:wireless_energy>);
craftingTable.remove(<item:cyclic:wireless_item>);
craftingTable.remove(<item:cyclic:wireless_fluid>);
craftingTable.remove(<item:cyclic:sound_recorder>);
craftingTable.remove(<item:cyclic:sound_player>);
craftingTable.remove(<item:cyclic:generator_food>);
craftingTable.remove(<item:cyclic:packager>);
craftingTable.remove(<item:cyclic:terra_preta>);
craftingTable.remove(<item:cyclic:light_camo>);
craftingTable.remove(<item:cyclic:laser>);
craftingTable.remove(<item:cyclic:flower_cyan>);
craftingTable.remove(<item:cyclic:flower_purple_tulip>);
craftingTable.remove(<item:cyclic:flower_lime_carnation>);
craftingTable.remove(<item:cyclic:flower_absalon_tulip>);
craftingTable.remove(<item:cyclic:membrane>);
craftingTable.remove(<item:cyclic:lamp>);
craftingTable.remove(<item:cyclic:soil>);
craftingTable.remove(<item:cyclic:cloud>);
craftingTable.remove(<item:cyclic:cloud_membrane>);
craftingTable.remove(<item:cyclic:ghost>);
craftingTable.remove(<item:cyclic:ghost_phantom>);
craftingTable.remove(<item:cyclic:workbench>);
craftingTable.remove(<item:cyclic:obsidian_pressure_plate>);
craftingTable.remove(<item:cyclic:gold_bars>);
craftingTable.remove(<item:cyclic:gold_chain>);
craftingTable.remove(<item:cyclic:gold_lantern>);
craftingTable.remove(<item:cyclic:gold_soul_lantern>);
craftingTable.remove(<item:cyclic:copper_bars>);
craftingTable.remove(<item:cyclic:copper_chain>);
craftingTable.remove(<item:cyclic:copper_lantern>);
craftingTable.remove(<item:cyclic:copper_soul_lantern>);
craftingTable.remove(<item:cyclic:copper_pressure_plate>);
craftingTable.remove(<item:cyclic:netherite_bars>);
craftingTable.remove(<item:cyclic:netherite_chain>);
craftingTable.remove(<item:cyclic:netherite_lantern>);
craftingTable.remove(<item:cyclic:netherite_pressure_plate>);
craftingTable.remove(<item:cyclic:sponge_lava>);
craftingTable.remove(<item:cyclic:sponge_milk>);
craftingTable.remove(<item:cyclic:crusher>);
craftingTable.remove(<item:cyclic:peat_fuel_enriched>);
craftingTable.remove(<item:cyclic:water_candle>);
craftingTable.remove(<item:cyclic:teleport>);
craftingTable.remove(<item:cyclic:apple_sprout_emerald>);
craftingTable.remove(<item:cyclic:apple_sprout_diamond>);
craftingTable.remove(<item:cyclic:apple_sprout>);
craftingTable.remove(<item:cyclic:computer_shape>);
craftingTable.remove(<item:cyclic:scaffold_fragile>);
craftingTable.remove(<item:cyclic:scaffold_responsive>);
craftingTable.remove(<item:cyclic:scaffold_replace>);
craftingTable.remove(<item:cyclic:dark_glass>);
craftingTable.remove(<item:cyclic:peat_farm>);
craftingTable.remove(<item:cyclic:battery>);
craftingTable.remove(<item:cyclic:cask>);
craftingTable.remove(<item:cyclic:crate>);
craftingTable.remove(<item:cyclic:crate_mini>);
craftingTable.remove(<item:cyclic:eye_teleport>);
craftingTable.remove(<item:cyclic:placer>);
craftingTable.remove(<item:cyclic:breaker>);
craftingTable.remove(<item:cyclic:forester>);
craftingTable.remove(<item:cyclic:harvester>);
craftingTable.remove(<item:cyclic:placer_fluid>);
craftingTable.remove(<item:cyclic:collector_fluid>);
craftingTable.remove(<item:cyclic:structure>);
craftingTable.remove(<item:cyclic:uncrafter>);
craftingTable.remove(<item:cyclic:crafter>);
craftingTable.remove(<item:cyclic:conveyor>);
craftingTable.remove(<item:cyclic:tank>);
craftingTable.remove(<item:cyclic:beacon>);
craftingTable.remove(<item:cyclic:beacon_redstone>);
craftingTable.remove(<item:cyclic:anti_beacon>);
craftingTable.remove(<item:cyclic:soundproofing_ghost>);
craftingTable.remove(<item:cyclic:soundproofing>);
craftingTable.remove(<item:cyclic:clock>);
craftingTable.remove(<item:cyclic:wireless_receiver>);
craftingTable.remove(<item:cyclic:wireless_transmitter>);
craftingTable.remove(<item:cyclic:disenchanter>);
craftingTable.remove(<item:cyclic:experience_pylon>);
craftingTable.remove(<item:cyclic:fan>);
craftingTable.remove(<item:cyclic:dice>);
craftingTable.remove(<item:cyclic:screen>);
craftingTable.remove(<item:cyclic:item_pipe>);
craftingTable.remove(<item:cyclic:fluid_pipe>);
craftingTable.remove(<item:cyclic:plate_launch>);
craftingTable.remove(<item:cyclic:plate_launch_redstone>);
craftingTable.remove(<item:cyclic:battery_infinite>);
craftingTable.remove(<item:cyclic:item_infinite>);
craftingTable.remove(<item:cyclic:shearing>);
craftingTable.remove(<item:cyclic:unbreakable_block>);
craftingTable.remove(<item:cyclic:unbreakable_reactive>);
craftingTable.remove(<item:cyclic:ender_shelf>);
craftingTable.remove(<item:cyclic:ender_controller>);
craftingTable.remove(<item:cyclic:magnet_block>);
craftingTable.remove(<item:cyclic:button_basalt>);
craftingTable.remove(<item:cyclic:button_blackstone>);
craftingTable.remove(<item:cyclic:no_soliciting>);
craftingTable.remove(<item:cyclic:altar_destruction>);
craftingTable.remove(<item:cyclic:waxed_redstone>);
craftingTable.remove(<item:cyclic:slingshot>);
craftingTable.remove(<item:cyclic:boomerang_stun>);
craftingTable.remove(<item:cyclic:spell_ice>);
craftingTable.remove(<item:cyclic:milk_bottle>);
craftingTable.remove(<item:cyclic:fan_slab>);
craftingTable.remove(<item:cyclic:rotator>);
craftingTable.remove(<item:cyclic:sprinkler>);
craftingTable.remove(<item:cyclic:generator_fuel>);
craftingTable.remove(<item:cyclic:generator_fluid>);
craftingTable.remove(<item:cyclic:generator_item>);
craftingTable.remove(<item:cyclic:peace_candle>);
craftingTable.remove(<item:cyclic:solidifier>);
craftingTable.remove(<item:cyclic:melter>);
craftingTable.remove(<item:cyclic:eye_redstone>);
craftingTable.remove(<item:cyclic:dropper>);
craftingTable.remove(<item:cyclic:miner>);
craftingTable.remove(<item:cyclic:user>);
craftingTable.remove(<item:cyclic:collector>);
craftingTable.remove(<item:cyclic:anvil>);
craftingTable.remove(<item:cyclic:anvil_magma>);
craftingTable.remove(<item:cyclic:fisher>);
craftingTable.remove(<item:cyclic:trash>);
craftingTable.remove(<item:cyclic:detector_item>);
craftingTable.remove(<item:cyclic:detector_entity>);
craftingTable.remove(<item:cyclic:energy_pipe>);
craftingTable.remove(<item:cyclic:fireplace>);
craftingTable.remove(<item:cyclic:battery_clay>);
craftingTable.remove(<item:cyclic:generator_solar>);
furnace.remove(<item:cyclic:fireball>);
furnace.removeByInput(<item:cyclic:glass_connected>);
furnace.remove(<item:cyclic:glass_connected>);

//#--> Adding Crafts...

craftingTable.addShaped("slingshot0", <item:cyclic:slingshot> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:minecraft:stick>, <item:minecraft:string>],
    [<item:cyclic:compressed_cobblestone>, <item:minecraft:leather>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:cyclic:compressed_cobblestone>, <item:cyclic:compressed_cobblestone>]
]);
craftingTable.addShaped("spell_ice0", <item:cyclic:spell_ice> * 1, [
    [<item:minecraft:ice>, <item:minecraft:obsidian>, <item:minecraft:ice>],
    [<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:cyclic:battery_clay>, <item:minecraft:air>]
]);
craftingTable.addShapeless("milk_bucket1", <item:minecraft:milk_bucket> * 1, [<item:cyclic:milk_bottle>, <item:cyclic:milk_bottle>, <item:cyclic:milk_bottle>]);
craftingTable.addShapeless("milk_bottle1", <item:cyclic:milk_bottle> * 3, [<item:minecraft:milk_bucket>]);
craftingTable.addShaped("fan_slab0", <item:cyclic:fan_slab> * 1, [
    [<item:minecraft:air>, <item:minecraft:lever>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:redstone_block>, <item:minecraft:air>],
    [<item:cyclic:compressed_cobblestone>, <item:supplementaries:bellows>, <item:cyclic:compressed_cobblestone>]
]);
craftingTable.addShaped("rotator0", <item:cyclic:rotator> * 1, [
    [<item:minecraft:air>, <item:cyclic:compressed_cobblestone>, <item:minecraft:air>],
    [<item:cyclic:compressed_cobblestone>, <item:supplementaries:turn_table>, <item:cyclic:compressed_cobblestone>],
    [<item:minecraft:air>, <item:cyclic:compressed_cobblestone>, <item:minecraft:air>]
]);
craftingTable.addShaped("generator_fuel0", <item:cyclic:generator_fuel> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:rftoolspower:cell2>, <item:rftoolsbase:machine_frame>, <item:rftoolspower:cell2>],
    [<item:minecraft:diamond_block>, <item:minecraft:coal_block>, <item:minecraft:diamond_block>]
]);
craftingTable.addShaped("generator_fluid0", <item:cyclic:generator_fluid> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:rftoolspower:cell2>, <item:rftoolsbase:machine_frame>, <item:rftoolspower:cell2>],
    [<item:minecraft:diamond_block>, <item:minecraft:magma_block>, <item:minecraft:diamond_block>]
]);
craftingTable.addShaped("generator_item0", <item:cyclic:generator_item> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:rftoolspower:cell2>, <item:rftoolsbase:machine_frame>, <item:rftoolspower:cell2>],
    [<item:minecraft:diamond_block>, <item:minecraft:piston>, <item:minecraft:diamond_block>]
]);
craftingTable.addShaped("peace_candle0", <item:cyclic:peace_candle> * 1, [
    [<item:minecraft:air>, <tag:items:minecraft:candles>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:emerald_block>, <item:minecraft:air>],
    [<item:minecraft:bone_block>, <item:minecraft:bone_block>, <item:minecraft:bone_block>]
]);
craftingTable.addShaped("solidifier0", <item:cyclic:solidifier> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:minecraft:glass>, <item:rftoolsbase:machine_frame>, <item:minecraft:bucket>],
    [<item:rftoolspower:cell1>, <item:minecraft:piston>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("melter0", <item:cyclic:melter> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:blank_module>, <item:cyclic:compressed_cobblestone>],
    [<item:minecraft:glass>, <item:rftoolsbase:machine_frame>, <item:minecraft:glass>],
    [<item:rftoolspower:cell1>, <item:minecraft:piston>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("eye_redstone0", <item:cyclic:eye_redstone> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:minecraft:green_dye>, <item:cyclic:compressed_cobblestone>],
    [<item:minecraft:green_dye>, <item:minecraft:observer>, <item:minecraft:green_dye>],
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:blank_module>, <item:cyclic:compressed_cobblestone>]
]);
craftingTable.addShaped("dropper0", <item:cyclic:dropper> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:cyclic:compressed_cobblestone>, <item:rftoolsbase:machine_frame>, <item:minecraft:dropper>],
    [<item:rftoolspower:cell1>, <item:cyclic:compressed_cobblestone>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("miner0", <item:cyclic:miner> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:cyclic:compressed_cobblestone>, <item:rftoolsbase:machine_frame>, <item:quark:iron_rod>],
    [<item:rftoolspower:cell1>, <item:minecraft:piston>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("user0", <item:cyclic:user> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:cyclic:compressed_cobblestone>, <item:rftoolsbase:machine_frame>, <item:minecraft:dispenser>],
    [<item:rftoolspower:cell2>, <item:cyclic:compressed_cobblestone>, <item:rftoolspower:cell2>]
]);
craftingTable.addShaped("collector0", <item:cyclic:collector> * 1, [
    [<item:cyclic:compressed_cobblestone>, <item:prettypipes:redstone_module>, <item:cyclic:compressed_cobblestone>],
    [<item:mob_grinding_utils:absorption_hopper>, <item:mob_grinding_utils:absorption_hopper>, <item:mob_grinding_utils:absorption_hopper>],
    [<item:cyclic:compressed_cobblestone>, <item:mob_grinding_utils:absorption_hopper>, <item:cyclic:compressed_cobblestone>]
]);
craftingTable.addShapeless("collector1", <item:mob_grinding_utils:absorption_hopper> * 4, [<item:cyclic:collector>]);
craftingTable.addShaped("anvil_magma0", <item:cyclic:anvil_magma> * 1, [
    [<item:minecraft:magma_block>, <item:minecraft:magma_block>, <item:minecraft:magma_block>],
    [<item:minecraft:air>, <item:minecraft:obsidian>, <item:minecraft:air>],
    [<item:minecraft:obsidian>, <item:prettypipes:redstone_module>, <item:minecraft:obsidian>]
]);
craftingTable.addShaped("fisher0", <item:cyclic:fisher> * 1, [
    [<item:minecraft:oak_planks>, <item:minecraft:diamond>, <item:minecraft:oak_planks>],
    [<item:minecraft:cobweb>, <item:minecraft:chest>, <item:minecraft:cobweb>],
    [<item:minecraft:oak_planks>, <item:prettypipes:redstone_module>, <item:minecraft:oak_planks>]
]);
craftingTable.addShaped("trash0", <item:cyclic:trash> * 1, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:lava_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("detector_item0", <item:cyclic:detector_item> * 1, [
    [<item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>],
    [<item:minecraft:air>, <item:minecraft:observer>, <item:minecraft:air>],
    [<item:minecraft:redstone_block>, <item:minecraft:quartz_block>, <item:minecraft:redstone_block>]
]);
craftingTable.addShaped("detector_entity0", <item:cyclic:detector_entity> * 1, [
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<item:minecraft:air>, <item:minecraft:observer>, <item:minecraft:air>],
    [<item:minecraft:redstone_block>, <item:minecraft:quartz_block>, <item:minecraft:redstone_block>]
]);
craftingTable.addShaped("energy_pipe0", <item:cyclic:energy_pipe> * 16, [
    [<item:minecraft:air>, <item:minecraft:stone_brick_stairs>, <item:minecraft:air>],
    [<item:minecraft:stone_brick_stairs>, <item:morered:redwire_spool>, <item:minecraft:stone_brick_stairs>],
    [<item:minecraft:air>, <item:minecraft:stone_brick_stairs>, <item:minecraft:air>]
]);
craftingTable.addShaped("fireplace0", <item:cyclic:fireplace> * 1, [
    [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>],
    [<item:minecraft:bricks>, <item:prettypipes:blank_module>, <item:minecraft:flint_and_steel>],
    [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]
]);
craftingTable.addShaped("generator_solar0", <item:cyclic:generator_solar> * 2, [
    [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:glass>],
    [<item:prettypipes:redstone_module>, <item:minecraft:daylight_detector>, <item:minecraft:diamond>],
    [<item:rftoolspower:cell1>, <item:cyclic:compressed_cobblestone>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("generator_solar1", <item:cyclic:generator_solar> * 2, [
    [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:glass>],
    [<item:prettypipes:redstone_module>, <item:minecraft:daylight_detector>, <item:minecraft:emerald>],
    [<item:rftoolspower:cell1>, <item:cyclic:compressed_cobblestone>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("generator_solar2", <item:cyclic:generator_solar> * 4, [
    [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:glass>],
    [<item:prettypipes:redstone_module>, <item:minecraft:daylight_detector>, <item:minecraft:netherite_ingot>],
    [<item:cyclic:compressed_cobblestone>, <item:rftoolspower:cell2>, <item:cyclic:compressed_cobblestone>]
]);
craftingTable.addShaped("cable_pliers0", <item:cyclic:cable_wrench> * 1, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:copper_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]
]);
craftingTable.addShaped("blockstate_card0", <item:cyclic:blockstate_data> * 1, [
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>],
    [<item:minecraft:gold_ingot>, <item:prettypipes:blank_module>, <item:minecraft:gold_ingot>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>]
]);
craftingTable.addShaped("filter_card0", <item:cyclic:filter_data> * 1, [
    [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>],
    [<item:minecraft:amethyst_shard>, <item:prettypipes:blank_module>, <item:minecraft:amethyst_shard>],
    [<item:minecraft:air>, <item:minecraft:amethyst_shard>, <item:minecraft:air>]
]);
craftingTable.addShaped("opaque_tank0", <item:cyclic:cask> * 1, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:fluidtank:tank_wood>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);
craftingTable.addShaped("redstone_block0", <item:cyclic:clock> * 1, [
    [<item:minecraft:quartz>, <item:minecraft:iron_ingot>, <item:minecraft:quartz>],
    [<item:minecraft:iron_ingot>, <item:prettypipes:blank_module>, <item:minecraft:iron_ingot>],
    [<item:minecraft:quartz>, <item:minecraft:iron_ingot>, <item:minecraft:quartz>]
]);





//============================== RF TOOLS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:rftoolsbase:crafting_card>);
craftingTable.remove(<item:rftoolsbase:filter_module>);
craftingTable.remove(<item:rftoolsbase:machine_infuser>);
craftingTable.remove(<item:rftoolsbase:tablet>);
craftingTable.remove(<item:rftoolsbase:smartwrench>);
craftingTable.remove(<item:rftoolsbase:smartwrench_select>);
craftingTable.remove(<item:rftoolsbase:dimensionalshard>);
craftingTable.remove(<item:rftoolsbase:infused_diamond>);
craftingTable.remove(<item:rftoolsbase:infused_enderpearl>);
craftingTable.remove(<item:rftoolsbase:manual>);
craftingTable.remove(<item:rftoolspower:blazing_generator>);
craftingTable.remove(<item:rftoolspower:blazing_agitator>);
craftingTable.remove(<item:rftoolspower:blazing_infuser>);
craftingTable.remove(<item:rftoolspower:blazing_rod>);
craftingTable.remove(<item:rftoolspower:dimensionalcell>);
craftingTable.remove(<item:rftoolspower:dimensionalcell_advanced>);
craftingTable.remove(<item:rftoolspower:dimensionalcell_simple>);
craftingTable.remove(<item:rftoolspower:dimensionalcell_creative>);
craftingTable.remove(<item:rftoolspower:powercell_card>);
craftingTable.remove(<item:rftoolspower:ender_monitor>);
craftingTable.remove(<item:rftoolspower:pearl_injector>);
craftingTable.remove(<item:rftoolspower:endergenic>);
craftingTable.remove(<item:rftoolspower:coalgenerator>);
craftingTable.remove(<item:rftoolspower:power_monitor>);
craftingTable.remove(<item:rftoolspower:power_level>);
craftingTable.remove(<item:rftoolspower:cell2>);
craftingTable.remove(<item:rftoolspower:cell3>);
craftingTable.remove(<item:rftoolspower:power_core2>);
craftingTable.remove(<item:rftoolspower:power_core3>);
craftingTable.remove(<item:rftoolsbase:information_screen>);
craftingTable.remove(<item:rftoolsbase:machine_frame>);
craftingTable.remove(<item:rftoolsbase:machine_base>);
craftingTable.remove(<item:rftoolspower:cell1>);
craftingTable.remove(<item:rftoolspower:power_core1>);

//#--> Adding Crafts...

craftingTable.addShaped("info_screen0", <item:rftoolsbase:information_screen> * 1, [
    [<item:minecraft:glass_pane>, <item:minecraft:glass_pane>, <item:minecraft:glass_pane>],
    [<item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>],
    [<item:rftoolsbase:machine_base>, <item:prettypipes:blank_module>, <item:rftoolsbase:machine_base>]
]);
craftingTable.addShaped("machine_frame0", <item:rftoolsbase:machine_frame> * 1, [
    [<item:minecraft:iron_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:copper_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("machine_base0", <item:rftoolsbase:machine_base> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:smooth_stone_slab>, <item:minecraft:iron_ingot>, <item:minecraft:smooth_stone_slab>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("battery_cell1_0", <item:rftoolspower:power_core1> * 1, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:clay>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("cell1_0", <item:rftoolspower:cell1> * 1, [
    [<item:minecraft:copper_ingot>, <item:rftoolspower:power_core1>, <item:minecraft:copper_ingot>],
    [<item:rftoolspower:power_core1>, <item:rftoolsbase:machine_frame>, <item:rftoolspower:power_core1>],
    [<item:minecraft:copper_ingot>, <item:rftoolspower:power_core1>, <item:minecraft:copper_ingot>]
]);
craftingTable.addShaped("cell2_0", <item:rftoolspower:cell2> * 1, [
    [<item:rftoolsbase:machine_frame>, <item:rftoolspower:cell1>, <item:rftoolsbase:machine_frame>],
    [<item:rftoolspower:cell1>, <item:rftoolspower:cell1>, <item:rftoolspower:cell1>],
    [<item:rftoolsbase:machine_frame>, <item:rftoolspower:cell1>, <item:rftoolsbase:machine_frame>]
]);





//============================== VOID ORE MINER ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:voidminer:voidoreminer>);
craftingTable.remove(<item:voidminer:upgradebase>);
craftingTable.remove(<item:voidminer:upgrade_speed>);
craftingTable.remove(<item:voidminer:upgrade_efficiency>);
craftingTable.remove(<item:voidminer:upgrade_fortune>);

//#--> Adding Crafts...

craftingTable.addShaped("void_miner0", <item:voidminer:voidoreminer> * 1, [
    [<item:minecraft:diamond_block>, <item:rftoolspower:cell2>, <item:minecraft:netherite_pickaxe>],
    [<item:rftoolspower:cell2>, <item:cyclic:miner>, <item:minecraft:netherite_pickaxe>],
    [<item:minecraft:diamond_block>, <item:rftoolspower:cell2>, <item:minecraft:netherite_pickaxe>]
]);





//============================== HYDRO MACHINES ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:futuregenerators:turbine>);
craftingTable.remove(<item:futuregenerators:turbine_controller>);
craftingTable.remove(<item:futuregenerators:turbine_casing>);
craftingTable.remove(<item:futuregenerators:lightning_generator>);
craftingTable.remove(<item:futuregenerators:lightning_dynamo>);
craftingTable.remove(<item:futuregenerators:tank>);
craftingTable.remove(<item:futuregenerators:pump>);
craftingTable.remove(<item:futuregenerators:fluid_pipe>);
craftingTable.remove(<item:futuregenerators:lightning_charge>);
craftingTable.remove(<item:futuregenerators:washer>);
craftingTable.remove(<item:futuregenerators:boiler>);

//#--> Adding Crafts...

craftingTable.addShaped("washer0", <item:futuregenerators:washer> * 1, [
    [<item:minecraft:diamond_block>, <item:rftoolsbase:machine_frame>, <item:minecraft:diamond_block>],
    [<item:rftoolsbase:machine_frame>, <item:cyclic:miner>, <item:rftoolsbase:machine_frame>],
    [<item:rftoolspower:cell2>, <item:rftoolsbase:machine_frame>, <item:rftoolspower:cell2>]
]);
craftingTable.addShaped("boiler0", <item:futuregenerators:boiler> * 1, [
    [<item:minecraft:air>, <item:rftoolsbase:machine_frame>, <item:minecraft:air>],
    [<item:rftoolsbase:machine_frame>, <item:minecraft:blast_furnace>, <item:rftoolsbase:machine_frame>],
    [<item:rftoolsbase:machine_base>, <item:rftoolsbase:machine_base>, <item:rftoolsbase:machine_base>]
]);





//============================== MORE MINECART AND RAILS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:moreminecarts:cross_rail>);
craftingTable.remove(<item:moreminecarts:projector_rail>);
craftingTable.remove(<item:moreminecarts:wooden_rail>);
craftingTable.remove(<item:moreminecarts:wooden_rail_turn>);
craftingTable.remove(<item:moreminecarts:wooden_parallel_rail>);
craftingTable.remove(<item:moreminecarts:wooden_cross_rail>);
craftingTable.remove(<item:moreminecarts:wooden_projector_rail>);
craftingTable.remove(<item:moreminecarts:maglev_rail>);
craftingTable.remove(<item:moreminecarts:maglev_rail_turn>);
craftingTable.remove(<item:moreminecarts:maglev_parallel_rail>);
craftingTable.remove(<item:moreminecarts:maglev_cross_rail>);
craftingTable.remove(<item:moreminecarts:maglev_projector_rail>);
craftingTable.remove(<item:moreminecarts:maglev_powered_rail>);
craftingTable.remove(<item:moreminecarts:lightspeed_rail>);
craftingTable.remove(<item:moreminecarts:lightspeed_cross_rail>);
craftingTable.remove(<item:moreminecarts:lightspeed_powered_rail>);
craftingTable.remove(<item:moreminecarts:bioluminescent_rail>);
craftingTable.remove(<item:moreminecarts:arithmetic_rail>);
craftingTable.remove(<item:moreminecarts:pearl_stasis_minecart>);
craftingTable.remove(<item:moreminecarts:flag_cart>);
craftingTable.remove(<item:moreminecarts:campfire_cart>);
craftingTable.remove(<item:moreminecarts:soulfire_cart>);
craftingTable.remove(<item:moreminecarts:wooden_pushcart>);
craftingTable.remove(<item:moreminecarts:iron_pushcart>);
craftingTable.remove(<item:moreminecarts:silica_steel_block>);
craftingTable.remove(<item:moreminecarts:chunkrodite_block>);
craftingTable.remove(<item:moreminecarts:corrugated_silica_steel>);
craftingTable.remove(<item:moreminecarts:silica_steel_pillar>);
craftingTable.remove(<item:moreminecarts:organic_glass>);
craftingTable.remove(<item:moreminecarts:organic_glass_pane>);
craftingTable.remove(<item:moreminecarts:chiseled_organic_glass>);
craftingTable.remove(<item:moreminecarts:chiseled_organic_glass_pane>);
craftingTable.remove(<item:moreminecarts:glass_cactus>);
craftingTable.remove(<item:moreminecarts:holo_scaffold_generator>);
craftingTable.remove(<item:moreminecarts:pearl_stasis_chamber>);
craftingTable.remove(<item:moreminecarts:coupler>);
craftingTable.remove(<item:moreminecarts:high_speed_upgrade>);
craftingTable.remove(<item:moreminecarts:holo_remote>);
craftingTable.remove(<item:moreminecarts:backwards_holo_remote>);
craftingTable.remove(<item:moreminecarts:simple_holo_remote>);
craftingTable.remove(<item:moreminecarts:broken_holo_remote>);
craftingTable.remove(<item:moreminecarts:rail_signal_white>);
craftingTable.remove(<item:moreminecarts:rail_signal_light_gray>);
craftingTable.remove(<item:moreminecarts:rail_signal_gray>);
craftingTable.remove(<item:moreminecarts:rail_signal_black>);
craftingTable.remove(<item:moreminecarts:rail_signal_brown>);
craftingTable.remove(<item:moreminecarts:rail_signal_red>);
craftingTable.remove(<item:moreminecarts:rail_signal_orange>);
craftingTable.remove(<item:moreminecarts:rail_signal_yellow>);
craftingTable.remove(<item:moreminecarts:rail_signal_lime>);
craftingTable.remove(<item:moreminecarts:rail_signal_green>);
craftingTable.remove(<item:moreminecarts:rail_signal_cyan>);
craftingTable.remove(<item:moreminecarts:rail_signal_light_blue>);
craftingTable.remove(<item:moreminecarts:rail_signal_blue>);
craftingTable.remove(<item:moreminecarts:rail_signal_purple>);
craftingTable.remove(<item:moreminecarts:rail_signal_magenta>);
craftingTable.remove(<item:moreminecarts:rail_signal_pink>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_white>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_gray>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_gray>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_black>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_brown>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_red>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_orange>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_yellow>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_lime>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_green>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_cyan>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_light_blue>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_blue>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_purple>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_magenta>);
craftingTable.remove(<item:moreminecarts:color_detector_rail_pink>);
craftingTable.remove(<item:moreminecarts:levitation_powder>);
craftingTable.remove(<item:moreminecarts:silica_steel_mix>);
craftingTable.remove(<item:moreminecarts:silica_steel>);
craftingTable.remove(<item:moreminecarts:chunkrodite>);
craftingTable.remove(<item:moreminecarts:hard_light_lens>);
craftingTable.remove(<item:moreminecarts:glass_spines>);
craftingTable.remove(<item:moreminecarts:locking_rail>);
craftingTable.remove(<item:moreminecarts:powered_locking_rail>);
craftingTable.remove(<item:moreminecarts:piston_lifter_rail>);
craftingTable.remove(<item:moreminecarts:minecart_with_net>);
craftingTable.remove(<item:moreminecarts:piston_pushcart>);
craftingTable.remove(<item:moreminecarts:sticky_piston_pushcart>);
craftingTable.remove(<item:moreminecarts:piston_lifter_rail>);
craftingTable.remove(<item:moreminecarts:chunk_loader>);
craftingTable.remove(<item:moreminecarts:minecart_loader>);
craftingTable.remove(<item:moreminecarts:minecart_unloader>);
craftingTable.remove(<item:moreminecarts:filter_unloader>);
craftingTable.remove(<item:moreminecarts:transport_tank>);
craftingTable.remove(<item:moreminecarts:transport_battery>);
furnace.remove(<item:moreminecarts:silica_steel>);
furnace.remove(<item:moreminecarts:glass_spines>);
furnace.removeByInput(<item:moreminecarts:glass_spines>);
furnace.remove(<item:moreminecarts:chiseled_organic_glass>);

//#--> Adding Crafts...

craftingTable.addShaped("locking_rail0", <item:moreminecarts:locking_rail> * 1, [
    [<item:minecraft:air>, <item:minecraft:comparator>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:powered_rail>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>]
]);
craftingTable.addShaped("minecart_net0", <item:moreminecarts:minecart_with_net> * 1, [
    [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>],
    [<item:minecraft:string>, <item:minecraft:hopper>, <item:minecraft:string>],
    [<item:minecraft:string>, <item:minecraft:minecart>, <item:minecraft:string>]
]);
craftingTable.addShaped("chunk_loader20", <item:moreminecarts:chunk_loader> * 1, [
    [<item:minecraft:obsidian>, <item:minecraft:glass>, <item:minecraft:obsidian>],
    [<item:minecraft:glass>, <item:chunkymcchunkface:chunk_loader>, <item:minecraft:glass>],
    [<item:minecraft:obsidian>, <item:minecraft:glass>, <item:minecraft:obsidian>]
]);
craftingTable.addShaped("minecart_loader0", <item:moreminecarts:minecart_loader> * 1, [
    [<item:minecraft:iron_ingot>, <item:prettypipes:redstone_module>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:rftoolsbase:machine_frame>, <item:minecraft:iron_ingot>],
    [<item:rftoolspower:power_core1>, <item:minecraft:chest>, <item:minecraft:bucket>]
]);
craftingTable.addShaped("minecart_unloader0", <item:moreminecarts:minecart_unloader> * 1, [
    [<item:minecraft:copper_ingot>, <item:minecraft:redstone_block>, <item:minecraft:copper_ingot>],
    [<item:minecraft:iron_ingot>, <item:rftoolsbase:machine_frame>, <item:minecraft:iron_ingot>],
    [<item:rftoolspower:power_core1>, <item:minecraft:chest>, <item:minecraft:bucket>]
]);
craftingTable.addShapeless("minecart_filter_unloader0", <item:moreminecarts:filter_unloader> * 1, [<item:moreminecarts:minecart_unloader>, <item:prettypipes:redstone_module>]);
craftingTable.addShaped("transport_tank0", <item:moreminecarts:transport_tank> * 1, [
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>],
    [<item:minecraft:copper_block>, <item:mob_grinding_utils:tank>, <item:minecraft:copper_block>],
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>]
]);
craftingTable.addShaped("transport_battery0", <item:moreminecarts:transport_battery> * 1, [
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>],
    [<item:minecraft:copper_block>, <item:rftoolspower:cell1>, <item:minecraft:copper_block>],
    [<item:minecraft:copper_block>, <item:minecraft:copper_block>, <item:minecraft:copper_block>]
]);





//============================== ENERGIZED POWER ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:energizedpower:energized_power_book>);
craftingTable.remove(<item:energizedpower:energy_analyzer>);
craftingTable.remove(<item:energizedpower:fluid_analyzer>);
craftingTable.remove(<item:energizedpower:wooden_hammer>);
craftingTable.remove(<item:energizedpower:stone_hammer>);
craftingTable.remove(<item:energizedpower:iron_hammer>);
craftingTable.remove(<item:energizedpower:golden_hammer>);
craftingTable.remove(<item:energizedpower:diamond_hammer>);
craftingTable.remove(<item:energizedpower:netherite_hammer>);
craftingTable.remove(<item:energizedpower:cutter>);
craftingTable.remove(<item:energizedpower:wrench>);
craftingTable.remove(<item:energizedpower:item_conveyor_belt>);
craftingTable.remove(<item:energizedpower:item_conveyor_belt_loader>);
craftingTable.remove(<item:energizedpower:item_conveyor_belt_sorter>);
craftingTable.remove(<item:energizedpower:item_conveyor_belt_switch>);
craftingTable.remove(<item:energizedpower:item_conveyor_belt_splitter>);
craftingTable.remove(<item:energizedpower:item_conveyor_belt_merger>);
craftingTable.remove(<item:energizedpower:fluid_pipe>);
craftingTable.remove(<item:energizedpower:golden_fluid_pipe>);
craftingTable.remove(<item:energizedpower:tin_cable>);
craftingTable.remove(<item:energizedpower:copper_cable>);
craftingTable.remove(<item:energizedpower:gold_cable>);
craftingTable.remove(<item:energizedpower:energized_copper_cable>);
craftingTable.remove(<item:energizedpower:energized_gold_cable>);
craftingTable.remove(<item:energizedpower:energized_crystal_matrix_cable>);
craftingTable.remove(<item:energizedpower:lv_transformer_1_to_n>);
craftingTable.remove(<item:energizedpower:lv_transformer_3_to_3>);
craftingTable.remove(<item:energizedpower:lv_transformer_n_to_1>);
craftingTable.remove(<item:energizedpower:transformer_1_to_n>);
craftingTable.remove(<item:energizedpower:transformer_3_to_3>);
craftingTable.remove(<item:energizedpower:transformer_n_to_1>);
craftingTable.remove(<item:energizedpower:hv_transformer_1_to_n>);
craftingTable.remove(<item:energizedpower:hv_transformer_3_to_3>);
craftingTable.remove(<item:energizedpower:hv_transformer_n_to_1>);
craftingTable.remove(<item:energizedpower:ehv_transformer_1_to_n>);
craftingTable.remove(<item:energizedpower:ehv_transformer_3_to_3>);
craftingTable.remove(<item:energizedpower:ehv_transformer_n_to_1>);
craftingTable.remove(<item:energizedpower:press_mold_maker>);
craftingTable.remove(<item:energizedpower:coal_engine>);
craftingTable.remove(<item:energizedpower:heat_generator>);
craftingTable.remove(<item:energizedpower:thermal_generator>);
craftingTable.remove(<item:energizedpower:solar_panel_1>);
craftingTable.remove(<item:energizedpower:solar_panel_2>);
craftingTable.remove(<item:energizedpower:solar_panel_3>);
craftingTable.remove(<item:energizedpower:solar_panel_4>);
craftingTable.remove(<item:energizedpower:solar_panel_5>);
craftingTable.remove(<item:energizedpower:solar_panel_6>);
craftingTable.remove(<item:energizedpower:battery_box>);
craftingTable.remove(<item:energizedpower:advanced_battery_box>);
craftingTable.remove(<item:energizedpower:creative_battery_box>);
craftingTable.remove(<item:energizedpower:powered_furnace>);
craftingTable.remove(<item:energizedpower:auto_crafter>);
craftingTable.remove(<item:energizedpower:advanced_auto_crafter>);
craftingTable.remove(<item:energizedpower:crusher>);
craftingTable.remove(<item:energizedpower:pulverizer>);
craftingTable.remove(<item:energizedpower:compressor>);
craftingTable.remove(<item:energizedpower:metal_press>);
craftingTable.remove(<item:energizedpower:auto_press_mold_maker>);
craftingTable.remove(<item:energizedpower:auto_stonecutter>);
craftingTable.remove(<item:energizedpower:assembling_machine>);
craftingTable.remove(<item:energizedpower:plant_growth_chamber>);
craftingTable.remove(<item:energizedpower:filtration_plant>);
craftingTable.remove(<item:energizedpower:block_placer>);
craftingTable.remove(<item:energizedpower:fluid_transposer>);
craftingTable.remove(<item:energizedpower:fluid_tank_small>);
craftingTable.remove(<item:energizedpower:fluid_tank_medium>);
craftingTable.remove(<item:energizedpower:fluid_tank_large>);
craftingTable.remove(<item:energizedpower:fluid_filler>);
craftingTable.remove(<item:energizedpower:fluid_pump>);
craftingTable.remove(<item:energizedpower:drain>);
craftingTable.remove(<item:energizedpower:charger>);
craftingTable.remove(<item:energizedpower:advanced_charger>);
craftingTable.remove(<item:energizedpower:uncharger>);
craftingTable.remove(<item:energizedpower:advanced_uncharger>);
craftingTable.remove(<item:energizedpower:minecart_charger>);
craftingTable.remove(<item:energizedpower:advanced_minecart_charger>);
craftingTable.remove(<item:energizedpower:minecart_uncharger>);
craftingTable.remove(<item:energizedpower:advanced_minecart_uncharger>);
craftingTable.remove(<item:energizedpower:energizer>);
craftingTable.remove(<item:energizedpower:charging_station>);
craftingTable.remove(<item:energizedpower:crystal_growth_chamber>);
craftingTable.remove(<item:energizedpower:weather_controller>);
craftingTable.remove(<item:energizedpower:time_controller>);
craftingTable.remove(<item:energizedpower:teleporter>);
craftingTable.remove(<item:energizedpower:inventory_coal_engine>);
craftingTable.remove(<item:energizedpower:inventory_charger>);
craftingTable.remove(<item:energizedpower:inventory_teleporter>);
craftingTable.remove(<item:energizedpower:battery_1>);
craftingTable.remove(<item:energizedpower:battery_2>);
craftingTable.remove(<item:energizedpower:battery_3>);
craftingTable.remove(<item:energizedpower:battery_4>);
craftingTable.remove(<item:energizedpower:battery_5>);
craftingTable.remove(<item:energizedpower:battery_6>);
craftingTable.remove(<item:energizedpower:battery_7>);
craftingTable.remove(<item:energizedpower:battery_8>);
craftingTable.remove(<item:energizedpower:creative_battery>);
craftingTable.remove(<item:energizedpower:battery_box_minecart>);
craftingTable.remove(<item:energizedpower:advanced_battery_box_minecart>);
craftingTable.remove(<item:energizedpower:basic_machine_frame>);
craftingTable.remove(<item:energizedpower:hardened_machine_frame>);
craftingTable.remove(<item:energizedpower:advanced_machine_frame>);
craftingTable.remove(<item:energizedpower:reinforced_advanced_machine_frame>);
craftingTable.remove(<item:energizedpower:basic_solar_cell>);
craftingTable.remove(<item:energizedpower:advanced_solar_cell>);
craftingTable.remove(<item:energizedpower:reinforced_advanced_solar_cell>);
craftingTable.remove(<item:energizedpower:basic_circuit>);
craftingTable.remove(<item:energizedpower:advanced_circuit>);
craftingTable.remove(<item:energizedpower:processing_unit>);
craftingTable.remove(<item:energizedpower:teleporter_processing_unit>);
craftingTable.remove(<item:energizedpower:teleporter_matrix>);
craftingTable.remove(<item:energizedpower:basic_upgrade_module>);
craftingTable.remove(<item:energizedpower:advanced_upgrade_module>);
craftingTable.remove(<item:energizedpower:reinforced_advanced_upgrade_module>);
craftingTable.remove(<item:energizedpower:speed_upgrade_module_1>);
craftingTable.remove(<item:energizedpower:speed_upgrade_module_2>);
craftingTable.remove(<item:energizedpower:speed_upgrade_module_3>);
craftingTable.remove(<item:energizedpower:speed_upgrade_module_4>);
craftingTable.remove(<item:energizedpower:speed_upgrade_module_5>);
craftingTable.remove(<item:energizedpower:energy_efficiency_upgrade_module_1>);
craftingTable.remove(<item:energizedpower:energy_efficiency_upgrade_module_2>);
craftingTable.remove(<item:energizedpower:energy_efficiency_upgrade_module_3>);
craftingTable.remove(<item:energizedpower:energy_efficiency_upgrade_module_4>);
craftingTable.remove(<item:energizedpower:energy_efficiency_upgrade_module_5>);
craftingTable.remove(<item:energizedpower:energy_capacity_upgrade_module_1>);
craftingTable.remove(<item:energizedpower:energy_capacity_upgrade_module_2>);
craftingTable.remove(<item:energizedpower:energy_capacity_upgrade_module_3>);
craftingTable.remove(<item:energizedpower:energy_capacity_upgrade_module_4>);
craftingTable.remove(<item:energizedpower:energy_capacity_upgrade_module_5>);
craftingTable.remove(<item:energizedpower:duration_upgrade_module_1>);
craftingTable.remove(<item:energizedpower:duration_upgrade_module_2>);
craftingTable.remove(<item:energizedpower:duration_upgrade_module_3>);
craftingTable.remove(<item:energizedpower:duration_upgrade_module_4>);
craftingTable.remove(<item:energizedpower:duration_upgrade_module_5>);
craftingTable.remove(<item:energizedpower:duration_upgrade_module_6>);
craftingTable.remove(<item:energizedpower:range_upgrade_module_1>);
craftingTable.remove(<item:energizedpower:range_upgrade_module_2>);
craftingTable.remove(<item:energizedpower:range_upgrade_module_3>);
craftingTable.remove(<item:energizedpower:extraction_depth_upgrade_module_1>);
craftingTable.remove(<item:energizedpower:extraction_depth_upgrade_module_2>);
craftingTable.remove(<item:energizedpower:extraction_depth_upgrade_module_3>);
craftingTable.remove(<item:energizedpower:extraction_depth_upgrade_module_4>);
craftingTable.remove(<item:energizedpower:extraction_depth_upgrade_module_5>);
craftingTable.remove(<item:energizedpower:blast_furnace_upgrade_module>);
craftingTable.remove(<item:energizedpower:smoker_upgrade_module>);
craftingTable.remove(<item:energizedpower:moon_light_upgrade_module_1>);
craftingTable.remove(<item:energizedpower:moon_light_upgrade_module_2>);
craftingTable.remove(<item:energizedpower:moon_light_upgrade_module_3>);
craftingTable.remove(<item:energizedpower:silicon_block>);
craftingTable.remove(<item:energizedpower:tin_block>);
craftingTable.remove(<item:energizedpower:cable_insulator>);
craftingTable.remove(<item:energizedpower:crystal_matrix>);
craftingTable.remove(<item:energizedpower:charcoal_filter>);
craftingTable.remove(<item:energizedpower:basic_fertilizer>);
craftingTable.remove(<item:energizedpower:good_fertilizer>);
craftingTable.remove(<item:energizedpower:advanced_fertilizer>);
craftingTable.remove(<item:energizedpower:tin_nugget>);
craftingTable.remove(<item:energizedpower:tin_ingot>);
craftingTable.remove(<item:energizedpower:tin_plate>);
craftingTable.remove(<item:energizedpower:copper_plate>);
craftingTable.remove(<item:energizedpower:iron_plate>);
craftingTable.remove(<item:energizedpower:gold_plate>);
craftingTable.remove(<item:energizedpower:tin_wire>);
craftingTable.remove(<item:energizedpower:copper_wire>);
craftingTable.remove(<item:energizedpower:gold_wire>);
craftingTable.remove(<item:energizedpower:raw_tin>);
craftingTable.remove(<item:energizedpower:raw_tin_block>);
craftingTable.remove(<item:energizedpower:lightning_generator>);
craftingTable.remove(<item:energizedpower:powered_lamp>);
craftingTable.remove(<item:energizedpower:advanced_powered_furnace>);
craftingTable.remove(<item:energizedpower:advanced_crusher>);
craftingTable.remove(<item:energizedpower:advanced_pulverizer>);
craftingTable.remove(<item:energizedpower:sawmill>);
craftingTable.remove(<item:energizedpower:stone_solidifier>);
craftingTable.remove(<item:energizedpower:fluid_drainer>);
craftingTable.remove(<item:energizedpower:silicon>);
furnace.remove(<item:energizedpower:tin_ingot>);
furnace.remove(<item:energizedpower:gear_press_mold>);
furnace.remove(<item:energizedpower:rod_press_mold>);
furnace.remove(<item:energizedpower:wire_press_mold>);
smithing.remove(<item:energizedpower:charcoal_filter>);

//#--> Adding Crafts...

craftingTable.addShaped("lightning_generator0", <item:energizedpower:lightning_generator> * 1, [
    [<item:minecraft:redstone>, <item:minecraft:gold_block>, <item:minecraft:redstone>],
    [<item:minecraft:copper_block>, <item:rftoolsbase:machine_frame>, <item:minecraft:copper_block>],
    [<item:minecraft:diamond_block>, <item:rftoolspower:cell1>, <item:minecraft:diamond_block>]
]);
craftingTable.addShaped("simple_battery0", <item:energizedpower:battery_box> * 1, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:rftoolspower:power_core1>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);
craftingTable.addShapeless("rf_lamp0", <item:energizedpower:powered_lamp> * 1, [<item:minecraft:redstone_lamp>]);
craftingTable.addShapeless("rf_lamp1", <item:minecraft:redstone_lamp> * 1, [<item:energizedpower:powered_lamp>]);
craftingTable.addShaped("rf_furnace0", <item:energizedpower:advanced_powered_furnace> * 1, [
    [<item:minecraft:copper_block>, <item:prettypipes:redstone_module>, <item:minecraft:copper_block>],
    [<item:minecraft:iron_block>, <item:rftoolsbase:machine_frame>, <item:minecraft:iron_block>],
    [<item:rftoolspower:cell1>, <item:minecraft:iron_block>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("crusher0", <item:energizedpower:advanced_crusher> * 1, [
    [<item:minecraft:iron_block>, <item:prettypipes:redstone_module>, <item:minecraft:iron_block>],
    [<item:minecraft:bucket>, <item:rftoolsbase:machine_frame>, <item:minecraft:bucket>],
    [<item:rftoolspower:cell1>, <item:minecraft:iron_pickaxe>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("pulverizer0", <item:energizedpower:advanced_pulverizer> * 1, [
    [<item:minecraft:iron_block>, <item:prettypipes:redstone_module>, <item:minecraft:iron_block>],
    [<item:minecraft:bucket>, <item:rftoolsbase:machine_frame>, <item:minecraft:bucket>],
    [<item:rftoolspower:cell1>, <item:travelersbackpack:hose>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("sawmill0", <item:energizedpower:sawmill> * 1, [
    [<item:minecraft:iron_block>, <item:prettypipes:redstone_module>, <item:minecraft:iron_block>],
    [<item:minecraft:air>, <item:rftoolsbase:machine_frame>, <item:minecraft:air>],
    [<item:rftoolspower:cell1>, <item:energizedpower:saw_blade>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("solidifier1", <item:energizedpower:stone_solidifier> * 1, [
    [<item:minecraft:iron_block>, <item:prettypipes:redstone_module>, <item:minecraft:iron_block>],
    [<item:minecraft:bucket>, <item:rftoolsbase:machine_frame>, <item:minecraft:bucket>],
    [<item:rftoolspower:cell1>, <item:cyclic:fan_slab>, <item:rftoolspower:cell1>]
]);
craftingTable.addShaped("drainer0", <item:energizedpower:fluid_drainer> * 1, [
    [<item:minecraft:iron_block>, <item:travelersbackpack:hose>, <item:minecraft:iron_block>],
    [<item:minecraft:bucket>, <item:rftoolsbase:machine_frame>, <item:minecraft:bucket>],
    [<item:rftoolspower:cell1>, <item:prettypipes:redstone_module>, <item:rftoolspower:cell1>]
]);





//============================== CHROMATIC ARSENAL ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:chromaticarsenal:chroma_shard>);
craftingTable.remove(<item:chromaticarsenal:ascension_essence>);
craftingTable.remove(<item:chromaticarsenal:champion_catalyst>);
craftingTable.remove(<item:chromaticarsenal:chromatic_upgrade_smithing_template>);
craftingTable.remove(<item:chromaticarsenal:golden_heart>);
craftingTable.remove(<item:chromaticarsenal:glass_shield>);
craftingTable.remove(<item:chromaticarsenal:ward_crystal>);
craftingTable.remove(<item:chromaticarsenal:shadow_treads>);
craftingTable.remove(<item:chromaticarsenal:duality_rings>);
craftingTable.remove(<item:chromaticarsenal:friendly_fire_flower>);
craftingTable.remove(<item:chromaticarsenal:lunar_crystal>);
craftingTable.remove(<item:chromaticarsenal:cryo_ring>);
craftingTable.remove(<item:chromaticarsenal:bubble_amulet>);
craftingTable.remove(<item:chromaticarsenal:momentum_stone>);
craftingTable.remove(<item:chromaticarsenal:advancing_heart>);
craftingTable.remove(<item:chromaticarsenal:thunderguard>);
craftingTable.remove(<item:chromaticarsenal:super_golden_heart>);
craftingTable.remove(<item:chromaticarsenal:super_glass_shield>);
craftingTable.remove(<item:chromaticarsenal:super_ward_crystal>);
craftingTable.remove(<item:chromaticarsenal:super_shadow_treads>);
craftingTable.remove(<item:chromaticarsenal:super_friendly_fire_flower>);
craftingTable.remove(<item:chromaticarsenal:super_lunar_crystal>);
craftingTable.remove(<item:chromaticarsenal:super_harpy_feather>);
craftingTable.remove(<item:chromaticarsenal:super_glow_ring>);
craftingTable.remove(<item:chromaticarsenal:ascended_star>);
craftingTable.remove(<item:chromaticarsenal:world_anchor>);
craftingTable.remove(<item:chromaticarsenal:cursed_totem>);
craftingTable.remove(<item:chromaticarsenal:gravity_stone>);
craftingTable.remove(<item:chromaticarsenal:vertical_stasis_stone>);
craftingTable.remove(<item:chromaticarsenal:harpy_feather>);
craftingTable.remove(<item:chromaticarsenal:blahaj>);
craftingTable.remove(<item:chromaticarsenal:anonymity_umbrella>);
craftingTable.remove(<item:chromaticarsenal:amethyst_ring>);
craftingTable.remove(<item:chromaticarsenal:copper_ring>);
craftingTable.remove(<item:chromaticarsenal:vital_stone>);
craftingTable.remove(<item:chromaticarsenal:magic_garlic_bread>);
craftingTable.remove(<item:chromaticarsenal:cosmicola>);
craftingTable.remove(<item:chromaticarsenal:chroma_salvager>);
craftingTable.remove(<item:chromaticarsenal:viewer_item>);
craftingTable.remove(<item:chromaticarsenal:chroma_block>);
smithing.remove(<item:chromaticarsenal:chroma_shard>);
smithing.remove(<item:chromaticarsenal:ascension_essence>);
smithing.remove(<item:chromaticarsenal:champion_catalyst>);
smithing.remove(<item:chromaticarsenal:chromatic_upgrade_smithing_template>);
smithing.remove(<item:chromaticarsenal:golden_heart>);
smithing.remove(<item:chromaticarsenal:glass_shield>);
smithing.remove(<item:chromaticarsenal:ward_crystal>);
smithing.remove(<item:chromaticarsenal:shadow_treads>);
smithing.remove(<item:chromaticarsenal:duality_rings>);
smithing.remove(<item:chromaticarsenal:friendly_fire_flower>);
smithing.remove(<item:chromaticarsenal:lunar_crystal>);
smithing.remove(<item:chromaticarsenal:cryo_ring>);
smithing.remove(<item:chromaticarsenal:bubble_amulet>);
smithing.remove(<item:chromaticarsenal:momentum_stone>);
smithing.remove(<item:chromaticarsenal:advancing_heart>);
smithing.remove(<item:chromaticarsenal:thunderguard>);
smithing.remove(<item:chromaticarsenal:super_golden_heart>);
smithing.remove(<item:chromaticarsenal:super_glass_shield>);
smithing.remove(<item:chromaticarsenal:super_ward_crystal>);
smithing.remove(<item:chromaticarsenal:super_shadow_treads>);
smithing.remove(<item:chromaticarsenal:super_friendly_fire_flower>);
smithing.remove(<item:chromaticarsenal:super_lunar_crystal>);
smithing.remove(<item:chromaticarsenal:super_harpy_feather>);
smithing.remove(<item:chromaticarsenal:super_glow_ring>);
smithing.remove(<item:chromaticarsenal:ascended_star>);
smithing.remove(<item:chromaticarsenal:world_anchor>);
smithing.remove(<item:chromaticarsenal:cursed_totem>);
smithing.remove(<item:chromaticarsenal:gravity_stone>);
smithing.remove(<item:chromaticarsenal:vertical_stasis_stone>);
smithing.remove(<item:chromaticarsenal:harpy_feather>);
smithing.remove(<item:chromaticarsenal:blahaj>);
smithing.remove(<item:chromaticarsenal:anonymity_umbrella>);
smithing.remove(<item:chromaticarsenal:amethyst_ring>);
smithing.remove(<item:chromaticarsenal:copper_ring>);
smithing.remove(<item:chromaticarsenal:vital_stone>);
smithing.remove(<item:chromaticarsenal:magic_garlic_bread>);
smithing.remove(<item:chromaticarsenal:cosmicola>);
smithing.remove(<item:chromaticarsenal:chroma_salvager>);
smithing.remove(<item:chromaticarsenal:viewer_item>);
smithing.remove(<item:chromaticarsenal:chroma_block>);





//============================== PASSIVE SKILL TREE ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:skilltree:gem>);
craftingTable.remove(<item:skilltree:copper_ring>);
craftingTable.remove(<item:skilltree:iron_ring>);
craftingTable.remove(<item:skilltree:golden_ring>);
craftingTable.remove(<item:skilltree:simple_necklace>);
craftingTable.remove(<item:skilltree:traveler_necklace>);
craftingTable.remove(<item:skilltree:fisherman_necklace>);
craftingTable.remove(<item:skilltree:assassin_necklace>);
craftingTable.remove(<item:skilltree:healer_necklace>);
craftingTable.remove(<item:skilltree:scholar_necklace>);
craftingTable.remove(<item:skilltree:arsonist_necklace>);
craftingTable.remove(<item:skilltree:quiver>);
craftingTable.remove(<item:skilltree:fiery_quiver>);
craftingTable.remove(<item:skilltree:armored_quiver>);
craftingTable.remove(<item:skilltree:gilded_quiver>);
craftingTable.remove(<item:skilltree:toxic_quiver>);
craftingTable.remove(<item:skilltree:diamond_quiver>);
craftingTable.remove(<item:skilltree:healing_quiver>);
craftingTable.remove(<item:skilltree:silent_quiver>);
craftingTable.remove(<item:skilltree:bone_quiver>);
craftingTable.remove(<item:skilltree:copper_nugget>);
smithing.remove(<item:skilltree:gem>);
smithing.remove(<item:skilltree:copper_ring>);
smithing.remove(<item:skilltree:iron_ring>);
smithing.remove(<item:skilltree:golden_ring>);
smithing.remove(<item:skilltree:simple_necklace>);
smithing.remove(<item:skilltree:traveler_necklace>);
smithing.remove(<item:skilltree:fisherman_necklace>);
smithing.remove(<item:skilltree:assassin_necklace>);
smithing.remove(<item:skilltree:healer_necklace>);
smithing.remove(<item:skilltree:scholar_necklace>);
smithing.remove(<item:skilltree:arsonist_necklace>);
smithing.remove(<item:skilltree:quiver>);
smithing.remove(<item:skilltree:fiery_quiver>);
smithing.remove(<item:skilltree:armored_quiver>);
smithing.remove(<item:skilltree:gilded_quiver>);
smithing.remove(<item:skilltree:toxic_quiver>);
smithing.remove(<item:skilltree:diamond_quiver>);
smithing.remove(<item:skilltree:healing_quiver>);
smithing.remove(<item:skilltree:silent_quiver>);
smithing.remove(<item:skilltree:bone_quiver>);
smithing.remove(<item:skilltree:copper_nugget>);





//============================== GRAPPLING HOOK ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:grapplemod:grapplinghook>);
craftingTable.remove(<item:grapplemod:launcheritem>);
craftingTable.remove(<item:grapplemod:repeller>);
craftingTable.remove(<item:grapplemod:baseupgradeitem>);
craftingTable.remove(<item:grapplemod:doubleupgradeitem>);
craftingTable.remove(<item:grapplemod:forcefieldupgradeitem>);
craftingTable.remove(<item:grapplemod:magnetupgradeitem>);
craftingTable.remove(<item:grapplemod:motorupgradeitem>);
craftingTable.remove(<item:grapplemod:ropeupgradeitem>);
craftingTable.remove(<item:grapplemod:staffupgradeitem>);
craftingTable.remove(<item:grapplemod:swingupgradeitem>);
craftingTable.remove(<item:grapplemod:throwupgradeitem>);
craftingTable.remove(<item:grapplemod:limitsupgradeitem>);
craftingTable.remove(<item:grapplemod:rocketupgradeitem>);
craftingTable.remove(<item:grapplemod:longfallboots>);
craftingTable.remove(<item:grapplemod:block_grapple_modifier>);
smithing.remove(<item:grapplemod:grapplinghook>);
smithing.remove(<item:grapplemod:launcheritem>);
smithing.remove(<item:grapplemod:repeller>);
smithing.remove(<item:grapplemod:baseupgradeitem>);
smithing.remove(<item:grapplemod:doubleupgradeitem>);
smithing.remove(<item:grapplemod:forcefieldupgradeitem>);
smithing.remove(<item:grapplemod:magnetupgradeitem>);
smithing.remove(<item:grapplemod:motorupgradeitem>);
smithing.remove(<item:grapplemod:ropeupgradeitem>);
smithing.remove(<item:grapplemod:staffupgradeitem>);
smithing.remove(<item:grapplemod:swingupgradeitem>);
smithing.remove(<item:grapplemod:throwupgradeitem>);
smithing.remove(<item:grapplemod:limitsupgradeitem>);
smithing.remove(<item:grapplemod:rocketupgradeitem>);
smithing.remove(<item:grapplemod:longfallboots>);
smithing.remove(<item:grapplemod:block_grapple_modifier>);

//#--> Adding Crafts...

craftingTable.addShapeless("motor_grappling_hook0", <item:grapplemod:grapplinghook>.withTag({custom: {smartmotor: 1, playermovementmult: 2, throwspeed: 3.5, maxlen: 64, motor: 1}}) * 1, [<item:grapplemod:grapplinghook>.withoutTag().anyDamage(), <item:grapplemod:motorupgradeitem>.withoutTag(), <item:minecraft:netherite_upgrade_smithing_template>]);
craftingTable.addShapeless("explorer_class_hook0", <item:grapplemod:grapplinghook>.withTag({exclusivefor: "explorer_class", custom: {smartmotor: 1, detachonkeyrelease: 0, rocket_force: 1.0, doublehook: 0, angle: 20.05181347150259, playermovementmult: 1.9818652849740934, motorwhennotcrouching: 1, throwspeed: 11.968911917098445, motordampener: 0, sticky: 1, rocket_vertical_angle: 0.0, attractradius: 1.0103626943005182, repelforce: 1.0233160621761659, reelin: 0, phaserope: 0, attract: 0, motoracceleration: 0.37823834196891193, hookgravity: 0.2590673575129534, verticalthrowangle: 0.0, crc32: 1022723780, maxlen: 30.05181347150259, motormaxspeed: 0.5958549222797928, repel: 1, sneakingangle: 0.0, motorwhencrouching: 0, pullbackwards: 1, smartdoublemotor: 1, sneakingverticalthrowangle: 0.0, rocket_refuel_ratio: 15.0, rocket_active_time: 0.5, oneropepull: 0, enderstaff: 0, motor: 1, rocket: 0}})* 1, 
    [<item:minecraft:stone_sword>, <item:quark:rope>]);





//============================== MACAW'S DOORS ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:mcwdoors:print_oak>);
craftingTable.remove(<item:mcwdoors:print_spruce>);
craftingTable.remove(<item:mcwdoors:print_birch>);
craftingTable.remove(<item:mcwdoors:print_jungle>);
craftingTable.remove(<item:mcwdoors:print_acacia>);
craftingTable.remove(<item:mcwdoors:print_dark_oak>);
craftingTable.remove(<item:mcwdoors:print_mystic>);
craftingTable.remove(<item:mcwdoors:print_nether>);
craftingTable.remove(<item:mcwdoors:print_swamp>);
craftingTable.remove(<item:mcwdoors:print_bamboo>);
craftingTable.remove(<item:mcwdoors:print_waffle>);
craftingTable.remove(<item:mcwdoors:crimson_japanese_door>);
craftingTable.remove(<item:mcwdoors:warped_japanese_door>);
craftingTable.remove(<item:mcwdoors:oak_japanese2_door>);
craftingTable.remove(<item:mcwdoors:spruce_japanese2_door>);
craftingTable.remove(<item:mcwdoors:birch_japanese2_door>);
craftingTable.remove(<item:mcwdoors:jungle_japanese2_door>);
craftingTable.remove(<item:mcwdoors:acacia_japanese2_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_japanese2_door>);
craftingTable.remove(<item:mcwdoors:crimson_japanese2_door>);
craftingTable.remove(<item:mcwdoors:warped_japanese2_door>);
craftingTable.remove(<item:mcwdoors:mangrove_japanese2_door>);
craftingTable.remove(<item:mcwdoors:bamboo_japanese2_door>);
craftingTable.remove(<item:mcwdoors:oak_barn_door>);
craftingTable.remove(<item:mcwdoors:spruce_barn_door>);
craftingTable.remove(<item:mcwdoors:birch_barn_door>);
craftingTable.remove(<item:mcwdoors:jungle_barn_door>);
craftingTable.remove(<item:mcwdoors:acacia_barn_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_barn_door>);
craftingTable.remove(<item:mcwdoors:crimson_barn_door>);
craftingTable.remove(<item:mcwdoors:warped_barn_door>);
craftingTable.remove(<item:mcwdoors:mangrove_barn_door>);
craftingTable.remove(<item:mcwdoors:bamboo_barn_door>);
craftingTable.remove(<item:mcwdoors:oak_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:spruce_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:birch_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:jungle_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:acacia_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:crimson_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:warped_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:mangrove_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:bamboo_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:oak_modern_door>);
craftingTable.remove(<item:mcwdoors:spruce_modern_door>);
craftingTable.remove(<item:mcwdoors:birch_modern_door>);
craftingTable.remove(<item:mcwdoors:jungle_modern_door>);
craftingTable.remove(<item:mcwdoors:acacia_modern_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_modern_door>);
craftingTable.remove(<item:mcwdoors:crimson_modern_door>);
craftingTable.remove(<item:mcwdoors:warped_modern_door>);
craftingTable.remove(<item:mcwdoors:mangrove_modern_door>);
craftingTable.remove(<item:mcwdoors:bamboo_modern_door>);
craftingTable.remove(<item:mcwdoors:oak_cottage_door>);
craftingTable.remove(<item:mcwdoors:birch_cottage_door>);
craftingTable.remove(<item:mcwdoors:jungle_cottage_door>);
craftingTable.remove(<item:mcwdoors:acacia_cottage_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_cottage_door>);
craftingTable.remove(<item:mcwdoors:crimson_cottage_door>);
craftingTable.remove(<item:mcwdoors:warped_cottage_door>);
craftingTable.remove(<item:mcwdoors:mangrove_cottage_door>);
craftingTable.remove(<item:mcwdoors:bamboo_cottage_door>);
craftingTable.remove(<item:mcwdoors:spruce_classic_door>);
craftingTable.remove(<item:mcwdoors:birch_classic_door>);
craftingTable.remove(<item:mcwdoors:jungle_classic_door>);
craftingTable.remove(<item:mcwdoors:acacia_classic_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_classic_door>);
craftingTable.remove(<item:mcwdoors:crimson_classic_door>);
craftingTable.remove(<item:mcwdoors:warped_classic_door>);
craftingTable.remove(<item:mcwdoors:mangrove_classic_door>);
craftingTable.remove(<item:mcwdoors:bamboo_classic_door>);
craftingTable.remove(<item:mcwdoors:oak_beach_door>);
craftingTable.remove(<item:mcwdoors:spruce_beach_door>);
craftingTable.remove(<item:mcwdoors:birch_beach_door>);
craftingTable.remove(<item:mcwdoors:acacia_beach_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_beach_door>);
craftingTable.remove(<item:mcwdoors:crimson_beach_door>);
craftingTable.remove(<item:mcwdoors:warped_beach_door>);
craftingTable.remove(<item:mcwdoors:mangrove_beach_door>);
craftingTable.remove(<item:mcwdoors:bamboo_beach_door>);
craftingTable.remove(<item:mcwdoors:oak_paper_door>);
craftingTable.remove(<item:mcwdoors:spruce_paper_door>);
craftingTable.remove(<item:mcwdoors:jungle_paper_door>);
craftingTable.remove(<item:mcwdoors:acacia_paper_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_paper_door>);
craftingTable.remove(<item:mcwdoors:crimson_paper_door>);
craftingTable.remove(<item:mcwdoors:warped_paper_door>);
craftingTable.remove(<item:mcwdoors:mangrove_paper_door>);
craftingTable.remove(<item:mcwdoors:bamboo_paper_door>);
craftingTable.remove(<item:mcwdoors:oak_four_panel_door>);
craftingTable.remove(<item:mcwdoors:spruce_four_panel_door>);
craftingTable.remove(<item:mcwdoors:birch_four_panel_door>);
craftingTable.remove(<item:mcwdoors:jungle_four_panel_door>);
craftingTable.remove(<item:mcwdoors:acacia_four_panel_door>);
craftingTable.remove(<item:mcwdoors:crimson_four_panel_door>);
craftingTable.remove(<item:mcwdoors:warped_four_panel_door>);
craftingTable.remove(<item:mcwdoors:mangrove_four_panel_door>);
craftingTable.remove(<item:mcwdoors:bamboo_four_panel_door>);
craftingTable.remove(<item:mcwdoors:oak_tropical_door>);
craftingTable.remove(<item:mcwdoors:spruce_tropical_door>);
craftingTable.remove(<item:mcwdoors:birch_tropical_door>);
craftingTable.remove(<item:mcwdoors:jungle_tropical_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_tropical_door>);
craftingTable.remove(<item:mcwdoors:crimson_tropical_door>);
craftingTable.remove(<item:mcwdoors:warped_tropical_door>);
craftingTable.remove(<item:mcwdoors:mangrove_tropical_door>);
craftingTable.remove(<item:mcwdoors:bamboo_tropical_door>);
craftingTable.remove(<item:mcwdoors:crimson_stable_door>);
craftingTable.remove(<item:mcwdoors:warped_stable_door>);
craftingTable.remove(<item:mcwdoors:oak_stable_head_door>);
craftingTable.remove(<item:mcwdoors:spruce_stable_head_door>);
craftingTable.remove(<item:mcwdoors:birch_stable_head_door>);
craftingTable.remove(<item:mcwdoors:jungle_stable_head_door>);
craftingTable.remove(<item:mcwdoors:acacia_stable_head_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_stable_head_door>);
craftingTable.remove(<item:mcwdoors:crimson_stable_head_door>);
craftingTable.remove(<item:mcwdoors:warped_stable_head_door>);
craftingTable.remove(<item:mcwdoors:mangrove_stable_head_door>);
craftingTable.remove(<item:mcwdoors:bamboo_stable_head_door>);
craftingTable.remove(<item:mcwdoors:crimson_western_door>);
craftingTable.remove(<item:mcwdoors:warped_western_door>);
craftingTable.remove(<item:mcwdoors:oak_mystic_door>);
craftingTable.remove(<item:mcwdoors:spruce_mystic_door>);
craftingTable.remove(<item:mcwdoors:birch_mystic_door>);
craftingTable.remove(<item:mcwdoors:jungle_mystic_door>);
craftingTable.remove(<item:mcwdoors:acacia_mystic_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_mystic_door>);
craftingTable.remove(<item:mcwdoors:crimson_mystic_door>);
craftingTable.remove(<item:mcwdoors:mangrove_mystic_door>);
craftingTable.remove(<item:mcwdoors:bamboo_mystic_door>);
craftingTable.remove(<item:mcwdoors:oak_nether_door>);
craftingTable.remove(<item:mcwdoors:spruce_nether_door>);
craftingTable.remove(<item:mcwdoors:birch_nether_door>);
craftingTable.remove(<item:mcwdoors:jungle_nether_door>);
craftingTable.remove(<item:mcwdoors:acacia_nether_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_nether_door>);
craftingTable.remove(<item:mcwdoors:warped_nether_door>);
craftingTable.remove(<item:mcwdoors:mangrove_nether_door>);
craftingTable.remove(<item:mcwdoors:bamboo_nether_door>);
craftingTable.remove(<item:mcwdoors:oak_swamp_door>);
craftingTable.remove(<item:mcwdoors:spruce_swamp_door>);
craftingTable.remove(<item:mcwdoors:birch_swamp_door>);
craftingTable.remove(<item:mcwdoors:jungle_swamp_door>);
craftingTable.remove(<item:mcwdoors:acacia_swamp_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_swamp_door>);
craftingTable.remove(<item:mcwdoors:crimson_swamp_door>);
craftingTable.remove(<item:mcwdoors:warped_swamp_door>);
craftingTable.remove(<item:mcwdoors:bamboo_swamp_door>);
craftingTable.remove(<item:mcwdoors:oak_bamboo_door>);
craftingTable.remove(<item:mcwdoors:spruce_bamboo_door>);
craftingTable.remove(<item:mcwdoors:birch_bamboo_door>);
craftingTable.remove(<item:mcwdoors:jungle_bamboo_door>);
craftingTable.remove(<item:mcwdoors:acacia_bamboo_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_bamboo_door>);
craftingTable.remove(<item:mcwdoors:crimson_bamboo_door>);
craftingTable.remove(<item:mcwdoors:warped_bamboo_door>);
craftingTable.remove(<item:mcwdoors:mangrove_bamboo_door>);
craftingTable.remove(<item:mcwdoors:oak_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:spruce_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:birch_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:jungle_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:acacia_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:crimson_stem_glass_door>);
craftingTable.remove(<item:mcwdoors:warped_stem_glass_door>);
craftingTable.remove(<item:mcwdoors:mangrove_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:bamboo_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:oak_waffle_door>);
craftingTable.remove(<item:mcwdoors:spruce_waffle_door>);
craftingTable.remove(<item:mcwdoors:birch_waffle_door>);
craftingTable.remove(<item:mcwdoors:jungle_waffle_door>);
craftingTable.remove(<item:mcwdoors:acacia_waffle_door>);
craftingTable.remove(<item:mcwdoors:dark_oak_waffle_door>);
craftingTable.remove(<item:mcwdoors:crimson_waffle_door>);
craftingTable.remove(<item:mcwdoors:warped_waffle_door>);
craftingTable.remove(<item:mcwdoors:bamboo_waffle_door>);
craftingTable.remove(<item:mcwdoors:mangrove_waffle_door>);
craftingTable.remove(<item:mcwdoors:cherry_japanese2_door>);
craftingTable.remove(<item:mcwdoors:cherry_barn_door>);
craftingTable.remove(<item:mcwdoors:cherry_barn_glass_door>);
craftingTable.remove(<item:mcwdoors:cherry_modern_door>);
craftingTable.remove(<item:mcwdoors:cherry_cottage_door>);
craftingTable.remove(<item:mcwdoors:cherry_classic_door>);
craftingTable.remove(<item:mcwdoors:cherry_beach_door>);
craftingTable.remove(<item:mcwdoors:cherry_paper_door>);
craftingTable.remove(<item:mcwdoors:cherry_four_panel_door>);
craftingTable.remove(<item:mcwdoors:cherry_tropical_door>);
craftingTable.remove(<item:mcwdoors:cherry_stable_head_door>);
craftingTable.remove(<item:mcwdoors:cherry_mystic_door>);
craftingTable.remove(<item:mcwdoors:cherry_nether_door>);
craftingTable.remove(<item:mcwdoors:cherry_swamp_door>);
craftingTable.remove(<item:mcwdoors:cherry_bamboo_door>);
craftingTable.remove(<item:mcwdoors:cherry_bark_glass_door>);
craftingTable.remove(<item:mcwdoors:crimson_glass_door>);
craftingTable.remove(<item:mcwdoors:warped_glass_door>);