//============================== IRON'S SPELLBOOKS  ========================================//

//#--> Removing Crafts...

craftingTable.removeByModid("irons_spellbooks");
furnace.removeByModid("irons_spellbooks");
blastFurnace.removeByModid("irons_spellbooks");
smoker.removeByModid("irons_spellbooks");
campfire.removeByModid("irons_spellbooks");
stoneCutter.removeByModid("irons_spellbooks");
smithing.removeByModid("irons_spellbooks");

//#--> Adding Crafts...

craftingTable.addShaped("spell_soldering_table0", <item:irons_spellbooks:inscription_table> * 1, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:book>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>]
]);
craftingTable.addShaped("spell_mage_controller0", <item:irons_spellbooks:iron_spell_book>.withTag({ISB_Spells: {spellWheel: 1, mustEquip: 1, data: [], maxSpells: 9}}) * 1, [
    [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:glass>],
    [<item:minecraft:lightning_rod>, <item:prettypipes:redstone_module>, <item:minecraft:gold_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("spell_support_controller0", <item:irons_spellbooks:copper_spell_book>.withTag({ISB_Spells: {spellWheel: 1, mustEquip: 1, maxSpells: 6, data: []}}) * 1, [
    [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:copper_ingot>],
    [<item:minecraft:lightning_rod>, <item:prettypipes:redstone_module>, <item:minecraft:gold_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("spell_empty_command_chip0", <item:irons_spellbooks:blank_rune> * 1, [
    [<item:minecraft:iron_nugget>, <item:minecraft:gold_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:prettypipes:blank_module>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]
]);
craftingTable.addShapeless("spell_infernal_dash_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:burning_dash", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:iron_boots>]);
craftingTable.addShapeless("spell_fire_bolt_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:iron_nugget>]);
craftingTable.addShapeless("spell_fire_bolt_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:flint_and_steel>]);
craftingTable.addShapeless("spell_fire_bolt_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:firebolt", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:lava_bucket>]);
craftingTable.addShapeless("spell_quantic_bolt_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:gold_ingot>]);
craftingTable.addShapeless("spell_quantic_bolt_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:gold_ingot>]);
craftingTable.addShapeless("spell_quantic_bolt_lvl10", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:magic_missile", index: 0, locked: 1}], maxSpells: 1}}), <item:k_turrets:gauss_bullet>]);
craftingTable.addShapeless("spell_acupuncture_lvl8", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 8, id: "irons_spellbooks:acupuncture", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>]);
craftingTable.addShapeless("spell_gust_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 1}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:cyclic:fan_slab>]);
craftingTable.addShapeless("spell_gust_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 6}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 1}]}}), <item:cyclic:fan_slab>, <item:minecraft:redstone_block>]);
craftingTable.addShapeless("spell_gust_lvl10", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 10}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:gust", level: 6}]}}), <item:cyclic:fan_slab>, <item:minecraft:redstone_block>, <item:minecraft:redstone_block>]);
craftingTable.addShapeless("spell_slow_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:slow", level: 3}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:slime_ball>]);
craftingTable.addShapeless("spell_slow_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:slow", level: 6}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:slow", level: 3}]}}), <item:minecraft:slime_block>]);
craftingTable.addShapeless("spell_fang_strike_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:iron_nugget>, <item:minecraft:heavy_weighted_pressure_plate>,<item:minecraft:iron_nugget>]);
craftingTable.addShapeless("spell_fang_strike_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}),
                            <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>, <item:minecraft:heavy_weighted_pressure_plate>,<item:minecraft:iron_nugget>]);
craftingTable.addShapeless("spell_fang_strike_lvl9", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 9, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:fang_strike", index: 0, locked: 1}], maxSpells: 1}}),
                            <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:iron_nugget>, <item:minecraft:heavy_weighted_pressure_plate>,<item:minecraft:iron_nugget>]);
craftingTable.addShapeless("spell_blood_slash_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blood_slash", level: 1}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:golden_sword>]);
craftingTable.addShapeless("spell_earthquake_lvl4", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:morered:redwire_spool>, <item:minecraft:iron_block>]);
craftingTable.addShapeless("spell_earthquake_lvl7", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 7, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:copper_block>]);
craftingTable.addShapeless("spell_earthquake_lvl9", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 9, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 7, id: "irons_spellbooks:earthquake", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:copper_block>, <item:minecraft:copper_block>]);
craftingTable.addShapeless("spell_star_fall_lvl10", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:starfall", level: 10}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, 
                            <item:k_turrets:gauss_bullet>, <item:k_turrets:gauss_bullet>, <item:k_turrets:gauss_bullet>, <item:k_turrets:gauss_bullet>, <item:k_turrets:gauss_bullet>, <item:k_turrets:gauss_bullet>, <item:k_turrets:gauss_bullet>, <item:k_turrets:gauss_bullet>]);
craftingTable.addShapeless("spell_scorch_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:flint_and_steel>, <item:minecraft:dispenser>]);
craftingTable.addShapeless("spell_scorch_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:flint_and_steel>, <item:minecraft:dispenser>, <item:minecraft:flint_and_steel>]);
craftingTable.addShapeless("spell_scorch_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:scorch", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:flint_and_steel>, <item:minecraft:dispenser>, <item:minecraft:coal_block>]);
craftingTable.addShapeless("spell_magma_bomb_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:coal_block>, <item:minecraft:lava_bucket>]);
craftingTable.addShapeless("spell_magma_bomb_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}), <item:minecraft:flint_and_steel>, <item:minecraft:lava_bucket>]);
craftingTable.addShapeless("spell_magma_bomb_lvl8", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 8, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, index: 0, id: "irons_spellbooks:magma_bomb", locked: 1}], maxSpells: 1}}), <item:minecraft:stone>, <item:minecraft:lava_bucket>]);
craftingTable.addShapeless("spell_flaming_strike_lvl4", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, index: 0, id: "irons_spellbooks:flaming_strike", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:flint_and_steel>, <item:minecraft:iron_sword>]);
craftingTable.addShapeless("spell_thunder_lvl10", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, id: "irons_spellbooks:lightning_bolt", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:gold_block>, <item:minecraft:lightning_rod>]);
craftingTable.addShapeless("spell_counter_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, index: 0, id: "irons_spellbooks:counterspell", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:prettypipes:blank_module>]);
craftingTable.addShapeless("spell_shield_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:shield", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:golden_chestplate>]);
craftingTable.addShapeless("spell_echo_strikes_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:echoing_strikes", level: 1}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:gunpowder>]);
craftingTable.addShapeless("spell_thunderstorm_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:thunderstorm", level: 1}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, 
                            <item:minecraft:lightning_rod>, <item:minecraft:lightning_rod>, <item:minecraft:lightning_rod>, <item:minecraft:lightning_rod>, <item:minecraft:lightning_rod>, <item:minecraft:lightning_rod>, <item:minecraft:lightning_rod>, <item:minecraft:lightning_rod>]);
craftingTable.addShapeless("spell_black_hole_lvl4", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:black_hole", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]);
craftingTable.addShapeless("spell_summon_dead_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:rotten_flesh>, <item:minecraft:bone>, <item:minecraft:iron_block>]);
craftingTable.addShapeless("spell_summon_dead_lvl2", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:raise_dead", level: 2}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:minecraft:rotten_flesh>, <item:minecraft:bone>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]);
craftingTable.addShapeless("spell_summon_dead_lvl4", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:raise_dead", level: 2}]}}), 
                            <item:minecraft:rotten_flesh>, <item:minecraft:bone>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]);
craftingTable.addShapeless("spell_summon_dead_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:raise_dead", level: 6}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:raise_dead", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:minecraft:rotten_flesh>, <item:minecraft:bone>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]);
craftingTable.addShapeless("spell_sacrifice_lvl10", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, index: 0, id: "irons_spellbooks:sacrifice", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:rotten_flesh>, <item:minecraft:bone>, <item:minecraft:gunpowder>]);
craftingTable.addShapeless("spell_venom_arrow_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:poison_arrow", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:arrow>, <item:minecraft:spider_eye>]);
craftingTable.addShapeless("spell_venom_arrow_lvl10", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, id: "irons_spellbooks:poison_arrow", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:poison_arrow", index: 0, locked: 1}], maxSpells: 1}}), <item:minecraft:arrow>, <item:minecraft:fermented_spider_eye>]);
craftingTable.addShapeless("spell_firefly_swar_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:firefly_swarm", level: 6}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:glowstone_dust>, <item:minecraft:spider_eye>]);
craftingTable.addShapeless("spell_poison_splash_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:poison_splash", level: 5}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:gunpowder>, <item:minecraft:spider_eye>]);
craftingTable.addShapeless("spell_poison_splash_lvl10", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 10, id: "irons_spellbooks:poison_splash", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:poison_splash", level: 5}]}}), <item:minecraft:gunpowder>, <item:minecraft:fermented_spider_eye>]);
craftingTable.addShapeless("spell_frost_step_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, index: 0, id: "irons_spellbooks:frost_step", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:golden_boots>]);
craftingTable.addShapeless("spell_guiding_bolt_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:guiding_bolt", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:k_turrets:gauss_bullet>, <item:minecraft:glowstone_dust>]);
craftingTable.addShapeless("spell_icicle_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, index: 0, id: "irons_spellbooks:icicle", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:k_turrets:gauss_bullet>, <item:minecraft:potion>.withTag({Potion: "minecraft:water"})]);
craftingTable.addShapeless("spell_icicle_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, index: 0, id: "irons_spellbooks:icicle", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, index: 0, id: "irons_spellbooks:icicle", locked: 1}], maxSpells: 1}}), 
                            <item:k_turrets:gauss_bullet>, <item:minecraft:potion>.withTag({Potion: "minecraft:water"}), <item:minecraft:potion>.withTag({Potion: "minecraft:water"})]);
craftingTable.addShapeless("spell_icicle_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, index: 0, id: "irons_spellbooks:icicle", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, index: 0, id: "irons_spellbooks:icicle", locked: 1}], maxSpells: 1}}), <item:k_turrets:gauss_bullet>, <item:minecraft:water_bucket>]);
craftingTable.addShapeless("spell_ray_of_frost_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:ray_of_frost", level: 5}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:k_turrets:gauss_bullet>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>]);
craftingTable.addShapeless("spell_magic_arrow_lvl2", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:k_turrets:gauss_bullet>, <item:minecraft:arrow>]);
craftingTable.addShapeless("spell_magic_arrow_lvl4", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:k_turrets:gauss_bullet>, <item:minecraft:arrow>, <item:minecraft:arrow>]);
craftingTable.addShapeless("spell_magic_arrow_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:magic_arrow", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:k_turrets:gauss_bullet>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>]);
craftingTable.addShapeless("spell_arrow_volley_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, index: 0, id: "irons_spellbooks:arrow_volley", locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:dispenser>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>, <item:minecraft:arrow>]);
craftingTable.addShapeless("spell_blessing_of_life_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 1}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:toughasnails:apple_juice>]);
craftingTable.addShapeless("spell_blessing_of_life_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 3}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 1}]}}), <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>]);
craftingTable.addShapeless("spell_blessing_of_life_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 5}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:blessing_of_life", level: 3}]}}), 
                            <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>]);
craftingTable.addShapeless("spell_healing_circle_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:gunpowder>, <item:toughasnails:apple_juice>]);
craftingTable.addShapeless("spell_healing_circle_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:minecraft:gunpowder>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>]);
craftingTable.addShapeless("spell_healing_circle_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 5, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:healing_circle", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:minecraft:gunpowder>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>]);
craftingTable.addShapeless("spell_acid_orb_lvl8", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:acid_orb", level: 8}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:slime_ball>, <item:minecraft:water_bucket>]);
craftingTable.addShapeless("spell_blight_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:blight", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:slime_ball>, <item:minecraft:water_bucket>, <item:minecraft:spider_eye>]);
craftingTable.addShapeless("spell_fortify_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 3, id: "irons_spellbooks:fortify", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, 
                            <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>, <item:toughasnails:apple_juice>]);
craftingTable.addShapeless("spell_root_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:root", level: 6}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:slime_block>, <item:minecraft:oak_sapling>]);
craftingTable.addShapeless("spell_infernal_dash_lvl2", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:burning_dash", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:iron_boots>, <item:minecraft:firework_rocket>]);
craftingTable.addShapeless("spell_angel_wing_lvl5", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:angel_wing", level: 5}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:redstone_block>, <item:energizedpower:silicon>]);
craftingTable.addShapeless("spell_summon_vex_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 1}]}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:leather>, <item:minecraft:iron_sword>]);
craftingTable.addShapeless("spell_summon_vex_lvl2", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 2}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 1}]}}), 
                            <item:minecraft:leather>, <item:minecraft:iron_sword>, <item:minecraft:iron_sword>]);
craftingTable.addShapeless("spell_summon_vex_lvl3", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 3}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 2}]}}), 
                            <item:minecraft:leather>, <item:minecraft:iron_sword>, <item:minecraft:iron_sword>, <item:minecraft:iron_sword>]);
craftingTable.addShapeless("spell_summon_vex_lvl4", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 4}]}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, maxSpells: 1, data: [{locked: 1, index: 0, id: "irons_spellbooks:summon_vex", level: 3}]}}), 
                            <item:minecraft:leather>, <item:minecraft:iron_sword>, <item:minecraft:iron_sword>, <item:minecraft:iron_sword>, <item:minecraft:iron_sword>]);
craftingTable.addShapeless("spell_ray_of_siphoning_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:ray_of_siphoning", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:k_turrets:gauss_bullet>, <item:minecraft:lava_bucket>, <item:minecraft:lava_bucket>, <item:minecraft:lava_bucket>]);
craftingTable.addShapeless("spell_ice_block_lvl1", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:blank_rune>, <item:minecraft:stone>, <item:minecraft:water_bucket>]);
craftingTable.addShapeless("spell_ice_block_lvl2", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 1, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:minecraft:stone>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>]);
craftingTable.addShapeless("spell_ice_block_lvl4", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 2, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:minecraft:stone>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>]);
craftingTable.addShapeless("spell_ice_block_lvl6", 
                           <item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 6, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}) * 1, 
                           [<item:irons_spellbooks:scroll>.withTag({ISB_Spells: {spellWheel: 0, mustEquip: 0, data: [{level: 4, id: "irons_spellbooks:ice_block", index: 0, locked: 1}], maxSpells: 1}}), 
                            <item:minecraft:stone>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>]);





//============================== MR CRAYFISH GUNS MOD ========================================//

//#--> Removing Crafts...

craftingTable.remove(<item:cgm:workbench>);

//#--> Adding Crafts...

craftingTable.addShaped("basic_bullet0", <item:cgm:basic_bullet> * 32, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gunpowder>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("advanced_bullet0", <item:cgm:advanced_bullet> * 12, [
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gunpowder>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("shotgun_shell0", <item:cgm:shell> * 24, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gunpowder>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("missile0", <item:cgm:missile> * 1, [
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gunpowder>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gunpowder>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("hand_grenade0", <item:cgm:grenade> * 1, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gunpowder>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("hand_flashbang0", <item:cgm:stun_grenade> * 1, [
    [<item:minecraft:glowstone_dust>, <item:minecraft:copper_ingot>, <item:minecraft:glowstone_dust>],
    [<item:minecraft:iron_ingot>, <item:minecraft:gunpowder>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("guns_workbench0", <item:cgm:workbench> * 1, [
    [<item:minecraft:light_gray_concrete>, <item:minecraft:light_gray_concrete>, <item:minecraft:light_gray_concrete>],
    [<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>],
    [<item:minecraft:iron_block>, <item:minecraft:air>, <item:minecraft:iron_block>]
]);
craftingTable.addShapeless("collateral0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:collateral", lvl: 1}]}) * 1, [<item:minecraft:book>, <item:cgm:basic_bullet>, <item:minecraft:diamond>]);
craftingTable.addShapeless("over_capacity0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:over_capacity", lvl: 1}]}) * 1, [<item:minecraft:book>, <item:cgm:basic_bullet>, <item:minecraft:iron_block>]);
craftingTable.addShapeless("over_capacity1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:over_capacity", lvl: 2}]}) * 1, [
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:over_capacity", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:over_capacity", lvl: 1}]})]);
craftingTable.addShapeless("over_capacity2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:over_capacity", lvl: 3}]}) * 1, [
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:over_capacity", lvl: 2}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:over_capacity", lvl: 2}]})]);
craftingTable.addShapeless("reclaimed0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:reclaimed", lvl: 1}]}) * 1, [<item:minecraft:book>, <item:cgm:basic_bullet>, <item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>]);
craftingTable.addShapeless("reclaimed1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:reclaimed", lvl: 2}]}) * 1, [
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:reclaimed", lvl: 1}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "cgm:reclaimed", lvl: 1}]})]);





//============================== BRASS ARMORY  ========================================//

//#--> Removing Crafts...

craftingTable.removeByModid("brass_armory");
furnace.removeByModid("brass_armory");
blastFurnace.removeByModid("brass_armory");
smoker.removeByModid("brass_armory");
campfire.removeByModid("brass_armory");
stoneCutter.removeByModid("brass_armory");
smithing.removeByModid("brass_armory");

//#--> Adding Crafts...

craftingTable.addShaped("boomerang_weapon0", <item:brass_armory:iron_boomerang> * 1, [
    [<item:minecraft:stick>, <item:farmersdelight:iron_knife>.withoutTag(), <item:minecraft:air>],
    [<item:farmersdelight:iron_knife>.withoutTag(), <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShapeless("boomerang_weapon0_loyalty", <item:brass_armory:iron_boomerang>.withTag({RepairCost: 3, Enchantments: [{id: "minecraft:loyalty", lvl: 1}, {id: "minecraft:unbreaking", lvl: 3}]}) * 1, [<item:brass_armory:iron_boomerang>, <item:minecraft:diamond>, <item:morered:redwire_spool>]);
craftingTable.addShaped("spear_weapon0", <item:brass_armory:iron_spear> * 1, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:farmersdelight:iron_knife>.withoutTag()],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShapeless("spear_weapon0_loyalty", <item:brass_armory:iron_spear>.withTag({RepairCost: 3, Enchantments: [{id: "minecraft:loyalty", lvl: 1}, {id: "minecraft:unbreaking", lvl: 3}]}) * 1, [<item:brass_armory:iron_spear>, <item:minecraft:diamond>, <item:morered:redwire_spool>]);





//============================== ALLOY TOOLS  ========================================//

//#--> Removing Crafts...

craftingTable.removeByModid("alloy_tools");
furnace.removeByModid("alloy_tools");
blastFurnace.removeByModid("alloy_tools");
smoker.removeByModid("alloy_tools");
campfire.removeByModid("alloy_tools");
stoneCutter.removeByModid("alloy_tools");
smithing.removeByModid("alloy_tools");

//#--> Adding Crafts...

craftingTable.addShapeless("wood_multitool0", <item:alloy_tools:multitool_1> * 1, [<item:minecraft:wooden_shovel>, <item:minecraft:wooden_pickaxe>, <item:minecraft:wooden_axe>, <item:minecraft:wooden_hoe>]);
craftingTable.addShapeless("stone_multitool0", <item:alloy_tools:multitool_2> * 1, [<item:minecraft:stone_shovel>, <item:minecraft:stone_pickaxe>, <item:minecraft:stone_axe>, <item:minecraft:stone_hoe>]);
craftingTable.addShapeless("iron_multitool0", <item:alloy_tools:multitool_4> * 1, [<item:minecraft:iron_shovel>, <item:minecraft:iron_pickaxe>, <item:minecraft:iron_axe>, <item:minecraft:iron_hoe>]);
craftingTable.addShapeless("diamond_multitool0", <item:alloy_tools:multitool_5> * 1, [<item:minecraft:diamond_shovel>, <item:minecraft:diamond_pickaxe>, <item:minecraft:diamond_axe>, <item:minecraft:diamond_hoe>]);
craftingTable.addShapeless("netherite_multitool0", <item:alloy_tools:multitool_6> * 1, [<item:minecraft:netherite_shovel>, <item:minecraft:netherite_pickaxe>, <item:minecraft:netherite_axe>, <item:minecraft:netherite_hoe>]);





//============================== METAL BUNDLES  ========================================//

//#--> Removing Crafts...

craftingTable.removeByModid("metalbundles");
furnace.removeByModid("metalbundles");
blastFurnace.removeByModid("metalbundles");
smoker.removeByModid("metalbundles");
campfire.removeByModid("metalbundles");
stoneCutter.removeByModid("metalbundles");
smithing.removeByModid("metalbundles");

//#--> Adding Crafts...

craftingTable.addShaped("bundle0", <item:metalbundles:copper_bundle> * 1, [
    [<item:minecraft:string>, <item:minecraft:leather>, <item:minecraft:string>],
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);
craftingTable.addShaped("bundle1", <item:metalbundles:copper_bundle> * 1, [
    [<item:minecraft:string>, <item:cold_sweat:hoglin_hide>, <item:minecraft:string>],
    [<item:cold_sweat:hoglin_hide>, <item:minecraft:air>, <item:cold_sweat:hoglin_hide>],
    [<item:cold_sweat:hoglin_hide>, <item:cold_sweat:hoglin_hide>, <item:cold_sweat:hoglin_hide>]
]);
craftingTable.addShaped("bundle2", <item:metalbundles:copper_bundle> * 1, [
    [<item:minecraft:string>, <item:minecraft:rabbit_hide>, <item:minecraft:string>],
    [<item:minecraft:rabbit_hide>, <item:minecraft:air>, <item:minecraft:rabbit_hide>],
    [<item:minecraft:rabbit_hide>, <item:minecraft:rabbit_hide>, <item:minecraft:rabbit_hide>]
]);





//============================== MUCH MORE ENCHANTS  ========================================//

//#--> Removing Crafts...

craftingTable.removeByModid("mmenchants");
furnace.removeByModid("mmenchants");
blastFurnace.removeByModid("mmenchants");
smoker.removeByModid("mmenchants");
campfire.removeByModid("mmenchants");
stoneCutter.removeByModid("mmenchants");
smithing.removeByModid("mmenchants");

//#--> Adding Crafts...

craftingTable.addShapeless("enchant_backstab0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:backstab", lvl: 1}]}) * 1, [
        <item:minecraft:book>, <item:simplyswords:iron_sai>.withoutTag()]);
craftingTable.addShapeless("enchant_assasination0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:assasination", lvl: 1}]}) * 1, [
        <item:minecraft:book>, <item:minecraft:leather_helmet>, <item:minecraft:glistering_melon_slice>]);
craftingTable.addShapeless("enchant_assasination1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:assasination", lvl: 2}]}) * 1, [
        <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:assasination", lvl: 1}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:assasination", lvl: 1}]})]);
craftingTable.addShapeless("enchant_nitrogenic0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:nitrogenic", lvl: 1}]}) * 1, [
        <item:minecraft:book>, <item:minecraft:spider_eye>]);
craftingTable.addShapeless("enchant_rejuvenating0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:rejuvenating", lvl: 1}]}) * 1, [
        <item:minecraft:book>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]);
craftingTable.addShapeless("enchant_rejuvenating1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:rejuvenating", lvl: 2}]}) * 1, [
        <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:rejuvenating", lvl: 1}]}), <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:rejuvenating", lvl: 1}]})]);
craftingTable.addShapeless("enchant_frenzy0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "mmenchants:frenzy", lvl: 1}]}) * 1, [
        <item:minecraft:book>, <item:minecraft:dandelion>]);





//============================== WUDRUS ENCHANTMENT RESTORE  ========================================//

//#--> Removing Crafts...

craftingTable.removeByModid("wudrus_restore_enchantment");
furnace.removeByModid("wudrus_restore_enchantment");
blastFurnace.removeByModid("wudrus_restore_enchantment");
smoker.removeByModid("wudrus_restore_enchantment");
campfire.removeByModid("wudrus_restore_enchantment");
stoneCutter.removeByModid("wudrus_restore_enchantment");
smithing.removeByModid("wudrus_restore_enchantment");

//#--> Adding Crafts...

craftingTable.addShapeless("enchant_auto_repair0", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "wudrus_restore_enchantment:wre_restore", lvl: 1}]}) * 1, [
        <item:minecraft:book>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]);
craftingTable.addShapeless("enchant_auto_repair1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "wudrus_restore_enchantment:wre_restore", lvl: 2}]}) * 1, [
        <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "wudrus_restore_enchantment:wre_restore", lvl: 1}]}), <item:minecraft:diamond>]);
craftingTable.addShapeless("enchant_auto_repair2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "wudrus_restore_enchantment:wre_restore", lvl: 3}]}) * 1, [
        <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "wudrus_restore_enchantment:wre_restore", lvl: 2}]}), <item:minecraft:diamond>, <item:minecraft:diamond>]);
craftingTable.addShapeless("enchant_auto_repair3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "wudrus_restore_enchantment:wre_restore", lvl: 4}]}) * 1, [
        <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: "wudrus_restore_enchantment:wre_restore", lvl: 3}]}), <item:minecraft:netherite_ingot>]);