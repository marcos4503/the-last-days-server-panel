import stdlib.List;
import crafttweaker.api.util.collection.Collection;
import crafttweaker.api.villager.trade.ItemListing;
import crafttweaker.api.villager.MerchantOffer;
import crafttweaker.api.villager.trade.type.TreasureMapForEmeralds;



//Remove all Vanilla trades
villagerTrades.removeAllWanderingTrades(1);
villagerTrades.removeAllWanderingTrades(2);





//---------------- SELL ----------------//

//Add the new Common Reworked Trades
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:podzol> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:mycelium> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:coarse_dirt> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:rooted_dirt> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:clay> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:ice> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:snow_block> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:minecraft:pointed_dripstone> * 16, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:oak_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:spruce_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:birch_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:jungle_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:acacia_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:dark_oak_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:mangrove_propagule> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:cherry_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:brown_mushroom> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:red_mushroom> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:quark:glow_shroom> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:tangerine_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:lime_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:citron_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 16, <item:fruitfulfun:pomelo_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 16, <item:fruitfulfun:orange_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 16, <item:fruitfulfun:lemon_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 16, <item:fruitfulfun:grapefruit_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:apple_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 16, <item:fruitfulfun:cherry_sapling> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:bamboo> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:cactus> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:sunflower> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:glow_berries> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:sweet_berries> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:minecraft:sea_pickle> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:kelp> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:seagrass> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:sponge> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:minecraft:ochre_froglight> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:minecraft:verdant_froglight> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:minecraft:pearlescent_froglight> * 64, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:cobweb> * 32, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:melon_seeds> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:pumpkin_seeds> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:wheat_seeds> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:beetroot_seeds> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:carrot> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:potato> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:cocoa_beans> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:sugar_cane> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:doggytalents:soy_beans> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:doggytalents:rice_grains> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:farmersdelight:cabbage_seeds> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:farmersdelight:tomato_seeds> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:farmersdelight:onion> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:corn_delight:corn_seeds> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:farmersdelight:rice> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:white> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:orange> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:magenta> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:light_blue> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:yellow> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:pink> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:light_gray> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:blue> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:red> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:black> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:red_tulip> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:azure_bluet> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:finallyfarmabledyes:oxeye_daisy> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:skeleton_skull> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:minecraft:wither_skeleton_skull> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:zombie_head> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:minecraft:creeper_head> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:cod_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:salmon_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:tropical_fish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:pufferfish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 12, <item:minecraft:axolotl_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:minecraft:tadpole_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 7, <item:minecraft:spyglass> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:gold_ingot> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, 5, <item:minecraft:amethyst_shard> * 8, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:minecraft:globe_banner_pattern> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:minecraft:piglin_banner_pattern> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 20, <item:minecraft:netherite_upgrade_smithing_template> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:quark:crab_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 10, <item:supplementaries:jar>.withTag({BlockEntityTag: {Items: [], MobHolder: {Name: "Abelha", FishTexture: 0, EntityData: {CanUpdate: 1, DeathTime: 0, LeftHanded: 0, OnGround: 1, AbsorptionAmount: 0.0, LeashingEntities: [], Attributes: [{Name: "minecraft:generic.movement_speed", Base: 0.30000001192092896}, {Name: "minecraft:generic.flying_speed", Base: 0.6000000238418579}, {Name: "minecraft:generic.attack_damage", Base: 2.0}, {Name: "minecraft:generic.max_health", Base: 10.0}, {Name: "forge:entity_gravity", Base: 0.08}, {Name: "forge:step_height_addition", Base: 0.0}, {Name: "reach-entity-attributes:reach", Base: 0.0}, {Name: "minecraft:generic.follow_range", Modifiers: [{Amount: -0.02590896954962719, Operation: 1, UUID: [2034020135, -1066513693, -1213371768, 696807866], Name: "Random spawn bonus"}], Base: 48.0}], Invulnerable: 0, Brain: {memories: {}}, ForcedAge: 0, ForgeCaps: {"curios:inventory": {Curios: []}, "cyclic:living_entity_data": {}}, Age: 0, HandDropChances: [0.085, 0.085], ArmorDropChances: [0.085, 0.085, 0.085, 0.085], Rotation: [0.0, 0.0], HurtByTimestamp: 0, HasStung: 0, LeashedByEntities: [], RainCapable: 0, AngerTime: 0, CitadelData: {}, ArmorItems: [{}, {}, {}, {}], TicksSincePollination: 21, HandItems: [{}, {}], Air: 300, FruitfulFun: {Genes: {FT2: 0, RC: 0, FC: 32, FT1: 1}}, ForgeData: {}, InLove: 0, HasNectar: 0, CropsGrownSincePollination: 0, PersistenceRequired: 0, FallDistance: 0.0, id: "minecraft:bee", Motion: [0.0, -0.0784000015258789, 0.0], Pos: [0.5, 0.19318036565780639, 0.5], CannotEnterHiveTicks: 0, CanPickUpLoot: 0, Health: 10.0, HurtTime: 0, FallFlying: 0, Fire: 0, PortalCooldown: 0, "forge:spawn_type": "SPAWN_EGG"}, UUID: [1739984879, -855883694, -1706480869, -2098876633], Scale: 0.53571427}, FluidHolder: {id: "moonlight:empty", count: 0}, ForgeCaps: {}}}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 16, <item:supplementaries:jar>.withTag({BlockEntityTag: {MobHolder: {Name: "Beija-Flor", EntityData: {CanUpdate: 1, DeathTime: 0, OnGround: 0, LeftHanded: 0, AbsorptionAmount: 0.0, LeashingEntities: [], Attributes: [{Name: "forge:entity_gravity", Base: 0.08}, {Name: "forge:step_height_addition", Base: 0.0}, {Name: "reach-entity-attributes:reach", Base: 0.0}, {Name: "minecraft:generic.follow_range", Base: 16.0, Modifiers: [{Amount: 0.05586768054657578, Operation: 1, UUID: [-966650414, 1784300266, -1476125610, -1229254044], Name: "Random spawn bonus"}]}, {Name: "minecraft:generic.movement_speed", Base: 0.44999998807907104}, {Name: "minecraft:generic.max_health", Base: 10.0}], Invulnerable: 0, Brain: {memories: {}}, ForgeCaps: {"cyclic:living_entity_data": {}, "curios:inventory": {Curios: []}}, Age: 0, HurtByTimestamp: 0, Rotation: [0.0, 0.0], ArmorDropChances: [0.085, 0.085, 0.085, 0.085], HandDropChances: [0.085, 0.085], LeashedByEntities: [], ForcedAge: 0, PollinateCooldown: 0, CitadelData: {}, ArmorItems: [{}, {}, {}, {}], Tags: ["ctrlHealthS40"], Air: 300, HandItems: [{}, {}], ForgeData: {}, Fire: 0, FallFlying: 0, Motion: [0.0, 0.0, 0.0], NoGravity: 1, FallDistance: 0.0, Variant: 2, id: "alexsmobs:hummingbird", HurtTime: 0, CanPickUpLoot: 0, CropsPollinated: 0, Health: 10.0, Pos: [0.5, 0.2501, 0.5], PersistenceRequired: 0, InLove: 0, PortalCooldown: 0, "forge:spawn_type": "SPAWN_EGG"}, UUID: [2050583434, 2091926664, -1158178141, 670943537], Scale: 0.8333334}}}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:doggytalents:training_treat> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 10, <item:doggytalents:super_treat> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 14, <item:doggytalents:master_treat> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 18, <item:doggytalents:kami_treat> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 3, <item:doggytalents:bandaid> * 24, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:k_turrets:titanium_ingot> * 16, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:syp:golden_pet_bandage> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:simplehats:hatbag_common> * 16, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:simplehats:hatbag_uncommon> * 16, 99999, 16);
villagerTrades.addWanderingTrade(1, 16, <item:simplehats:hatbag_rare> * 10, 99999, 16);
villagerTrades.addWanderingTrade(1, 20, <item:simplehats:hatbag_epic> * 6, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:imbleeding:honey_bandage> * 8, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:imbleeding:splint> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, 12, <item:healing:super_health_elixir> * 16, 99999, 16);
villagerTrades.addWanderingTrade(1, 5, <item:cgm:basic_bullet> * 32, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:cgm:advanced_bullet> * 16, 99999, 16);
villagerTrades.addWanderingTrade(1, 5, <item:cgm:shell> * 32, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:cgm:missile> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 3, <item:cgm:grenade> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:cgm:stun_grenade> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:balance> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:steps> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:waterfall> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:starburst> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:scales> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:clubs> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:diamond> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:heart> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:spades> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:moon> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 8, <item:additionalbanners:squares> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 1, <item:furnish:letter>.withTag({Author: "Player", Text: "Faz o L."}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:chalk:chalk_box>.withTag({Items: [{id: "chalk:white_chalk", tag: {Damage: 0}, Count: 1}, {id: "chalk:white_chalk", tag: {Damage: 0}, Count: 1}, {id: "chalk:yellow_chalk", Count: 1, tag: {Damage: 0}}, {id: "chalk:yellow_chalk", Count: 1, tag: {Damage: 0}}, {id: "chalk:yellow_chalk", Count: 1, tag: {Damage: 0}}, {id: "chalk:red_chalk", tag: {Damage: 0}, Count: 1}, {id: "chalk:red_chalk", tag: {Damage: 0}, Count: 1}, {id: "chalk:red_chalk", tag: {Damage: 0}, Count: 1}, {id: "minecraft:air", Count: 0}], GlowUses: 32}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:mutagen>.withTag({Type: "I", Color: 2010843}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:mutagen>.withTag({Type: "O", Color: 14376222}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:mutagen>.withTag({Type: "U", Color: 2022198}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 6, <item:fruitfulfun:mutagen>.withTag({Type: "N", Color: 13573851}) * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:blobfish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:platypus_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:frilled_shark_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:mimic_octopus_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:terrapin_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:comb_jelly_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:small_catfish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:medium_catfish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:large_catfish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:flying_fish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:mudskipper_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:alexsmobs:triops_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:crittersandcompanions:dumbo_octopus_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:crittersandcompanions:koi_fish_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 4, <item:crittersandcompanions:sea_bunny_bucket> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 5, <item:k_turrets:gauss_bullet> * 16, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:minecraft:gunpowder> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, 2, <item:k_turrets:explosive_powder> * 1, 99999, 16);

//Add the new Rare Reworked Trades
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:frogspawn> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 26, <item:minecraft:turtle_egg> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 80, <item:minecraft:sniffer_egg> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:bee_nest>.withTag({BlockStateTag: {honey_level: 0}, BlockEntityTag: {Bees: [{EntityData: {CanUpdate: 1, AbsorptionAmount: 0.0, FlowerPos: {Z: -7, X: -17, Y: 66}, FruitfulFun: {Pollens: ["poppy"], Genes: {FT2: 0, RC: 0, FC: 2, FT1: 0}}, LeashingEntities: [], Attributes: [{Name: "minecraft:generic.flying_speed", Base: 0.6000000238418579}, {Name: "reach-entity-attributes:reach", Base: 0.0}, {Name: "minecraft:generic.max_health", Base: 10.0}, {Name: "minecraft:generic.attack_damage", Base: 2.0}, {Name: "minecraft:generic.follow_range", Modifiers: [{Amount: -0.030896225244954785, Operation: 1, UUID: [221040735, 2101104194, -1289972725, 1813304511], Name: "Random spawn bonus"}], Base: 48.0}, {Name: "minecraft:generic.movement_speed", Base: 0.30000001192092896}, {Name: "forge:step_height_addition", Base: 0.0}, {Name: "forge:entity_gravity", Base: 0.08}], UUID: [-67664513, 435703595, -1491372554, 1220965312], ForgeData: {}, Invulnerable: 0, HasNectar: 1, Age: 0, ForgeCaps: {"curios:inventory": {Curios: []}, "cyclic:living_entity_data": {}}, id: "minecraft:bee", RainCapable: 0, ForcedAge: 0, HasStung: 0, LeashedByEntities: [], InLove: 0, Health: 10.0, PersistenceRequired: 0, AngerTime: 0, CitadelData: {}, "forge:spawn_type": "SPAWN_EGG"}, MinOccupationTicks: 2400, TicksInHive: 1315}, {EntityData: {CanUpdate: 1, AbsorptionAmount: 0.0, FlowerPos: {Z: -8, X: -17, Y: 66}, FruitfulFun: {Pollens: ["poppy"], Genes: {FT2: 0, RC: 0, FC: 33, FT1: 0}}, LeashingEntities: [], Attributes: [{Name: "minecraft:generic.flying_speed", Base: 0.6000000238418579}, {Name: "reach-entity-attributes:reach", Base: 0.0}, {Name: "minecraft:generic.max_health", Base: 10.0}, {Name: "minecraft:generic.attack_damage", Base: 2.0}, {Name: "minecraft:generic.follow_range", Modifiers: [{Amount: -0.004050256762974033, Operation: 1, UUID: [1341237930, -531347005, -1794261531, -810491300], Name: "Random spawn bonus"}], Base: 48.0}, {Name: "minecraft:generic.movement_speed", Base: 0.30000001192092896}, {Name: "forge:step_height_addition", Base: 0.0}, {Name: "forge:entity_gravity", Base: 0.08}], UUID: [-140393852, 997605679, -1989354353, -1222002602], ForgeData: {}, Invulnerable: 0, HasNectar: 1, Age: 0, ForgeCaps: {"curios:inventory": {Curios: []}, "cyclic:living_entity_data": {}}, id: "minecraft:bee", RainCapable: 0, ForcedAge: 0, HasStung: 0, LeashedByEntities: [], InLove: 0, Health: 10.0, PersistenceRequired: 0, AngerTime: 0, CitadelData: {}, "forge:spawn_type": "SPAWN_EGG"}, MinOccupationTicks: 2400, TicksInHive: 1311}, {EntityData: {CanUpdate: 1, AbsorptionAmount: 0.0, FlowerPos: {Z: -7, X: -16, Y: 66}, FruitfulFun: {Pollens: ["poppy"], Genes: {FT2: 0, RC: 0, FC: 32, FT1: 2}}, LeashingEntities: [], Attributes: [{Name: "minecraft:generic.flying_speed", Modifiers: [{Amount: 0.15, Operation: 0, UUID: [-769856092, 421480423, -1480067601, -150918179], Name: "Genetic speed bonus"}], Base: 0.6000000238418579}, {Name: "reach-entity-attributes:reach", Base: 0.0}, {Name: "minecraft:generic.max_health", Modifiers: [{Amount: 10.0, Operation: 0, UUID: [-1438650641, -1103213307, -1181980517, -1368513817], Name: "Genetic health bonus"}], Base: 10.0}, {Name: "minecraft:generic.attack_damage", Modifiers: [{Amount: 2.0, Operation: 0, UUID: [378402558, -91405713, -2120689510, 1539314583], Name: "Genetic damage bonus"}], Base: 2.0}, {Name: "minecraft:generic.follow_range", Modifiers: [{Amount: -0.03559506948941165, Operation: 1, UUID: [259624668, 797199189, -1317681910, 859281975], Name: "Random spawn bonus"}], Base: 48.0}, {Name: "minecraft:generic.movement_speed", Base: 0.30000001192092896}, {Name: "forge:step_height_addition", Base: 0.0}, {Name: "forge:entity_gravity", Base: 0.08}], UUID: [25779312, 1836597694, -1656227137, 215000106], ForgeData: {}, Invulnerable: 0, HasNectar: 1, Age: 0, ForgeCaps: {"curios:inventory": {Curios: []}, "cyclic:living_entity_data": {}}, id: "minecraft:bee", RainCapable: 0, ForcedAge: 0, HasStung: 0, LeashedByEntities: [], InLove: 0, Health: 20.0, PersistenceRequired: 0, AngerTime: 0, CitadelData: {}, "forge:spawn_type": "SPAWN_EGG"}, MinOccupationTicks: 2400, TicksInHive: 1251}], id: "minecraft:beehive"}}) * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 28, <item:fruitfulfun:pomegranate_sapling> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 28, <item:fruitfulfun:redlove_sapling> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 32, <item:minecraft:conduit> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_13> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_cat> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_blocks> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_chirp> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_far> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_mall> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_mellohi> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_stal> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_strad> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_ward> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_11> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_wait> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:minecraft:music_disc_otherside> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 20, <item:minecraft:music_disc_5> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 20, <item:minecraft:music_disc_pigstep> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 20, <item:minecraft:music_disc_relic> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:doggytalents:disc_bwv_1080_fugue_11> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:doggytalents:disc_bwv_849_fugue> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:doggytalents:disc_okami_ryoshima_coast_arr> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:doggytalents:disc_chopin_op64_no1> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:alexsmobs:music_disc_thime> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:alexsmobs:music_disc_daze> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 15, <item:minecraft:trident> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 20, <item:minecraft:totem_of_undying> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:minecraft:emerald_block> * 8, <item:minecraft:splash_potion>.withTag({Potion: "minecraft:weakness"}) * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 12, <item:minecraft:diamond> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 32, <item:minecraft:netherite_ingot> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:sentry_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:vex_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:wild_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:coast_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:dune_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:wayfinder_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:raiser_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:shaper_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:host_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:ward_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:silence_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 24, <item:minecraft:tide_armor_trim_smithing_template> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 40, <item:supplementaries:cage>.withTag({BlockEntityTag: {MobHolder: {Name: "Florante", EntityData: {CanUpdate: 1, DeathTime: 0, LeftHanded: 0, OnGround: 1, AbsorptionAmount: 0.0, LeashingEntities: [], Attributes: [{Name: "forge:entity_gravity", Base: 0.08}, {Name: "forge:step_height_addition", Base: 0.0}, {Name: "reach-entity-attributes:reach", Base: 0.0}, {Name: "minecraft:generic.follow_range", Modifiers: [{Amount: 0.07924450768260347, Operation: 1, UUID: [442759529, 327634800, -1560584472, 1758989387], Name: "Random spawn bonus"}], Base: 32.0}, {Name: "minecraft:generic.movement_speed", Base: 0.20999999344348907}], Invulnerable: 0, Brain: {memories: {}}, HandDropChances: [0.085, 0.085], ArmorDropChances: [0.085, 0.085, 0.085, 0.085], ForgeCaps: {"curios:inventory": {Curios: []}, "cyclic:living_entity_data": {}}, Age: 0, Sitting: 0, FlutterCommand: 0, Rotation: [0.0, 0.0], HurtByTimestamp: 0, ForcedAge: 0, LeashedByEntities: [], CitadelData: {}, ArmorItems: [{}, {}, {}, {}], HandItems: [{}, {}], Air: 300, ForgeData: {}, Potted: 0, InLove: 0, Flying: 0, PersistenceRequired: 0, FallDistance: 0.0, id: "alexsmobs:flutter", Motion: [0.0, -0.0784000015258789, 0.0], FlowersEaten: 0, Pos: [0.5, 0.15010000596046447, 0.5], CanPickUpLoot: 0, Health: 8.0, HurtTime: 0, FallFlying: 0, Fire: 0, PortalCooldown: 0, FlutterSitting: 0, "forge:spawn_type": "SPAWN_EGG"}, UUID: [-201015658, -583512883, -1796225202, 1912427110], Scale: 1.0}, ForgeCaps: {}}}) * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 40, <item:chunkymcchunkface:chunk_loader> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 16, <item:spelunkers_charm:old_miners_bundle> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, 80, <item:skilltree:amnesia_scroll> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:minecraft:emerald_block> * 52, <item:minecraft:bow>.withTag({RepairCost: 1, Enchantments: [{id: "minecraft:infinity", lvl: 1}]}) * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:minecraft:emerald_block> * 54, <item:minecraft:crossbow>.withTag({RepairCost: 1, Enchantments: [{id: "minecraft:infinity", lvl: 1}]}) * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, TreasureMapForEmeralds.create(4, <resource:minecraft:village>, "Mapa para o Vilarejo mais próximo", <constant:minecraft:world/map/decorationtype:mansion>, 1, 72));
villagerTrades.addWanderingTrade(2, TreasureMapForEmeralds.create(4, <resource:minecraft:igloo>, "Mapa para o Iglu mais próximo", <constant:minecraft:world/map/decorationtype:mansion>, 1, 72));
villagerTrades.addWanderingTrade(2, TreasureMapForEmeralds.create(4, <resource:minecraft:mineshaft>, "Mapa para a Mina Abandonada mais próxima", <constant:minecraft:world/map/decorationtype:mansion>, 1, 72));
villagerTrades.addWanderingTrade(2, TreasureMapForEmeralds.create(4, <resource:minecraft:pillager_outpost>, "Mapa para o Posto Avançado dos Saqueadores mais próximo", <constant:minecraft:world/map/decorationtype:mansion>, 1, 72));
villagerTrades.addWanderingTrade(2, TreasureMapForEmeralds.create(4, <resource:minecraft:on_ocean_explorer_maps>, "Mapa para o Ponto de Interesse Marítimo mais próximo", <constant:minecraft:world/map/decorationtype:mansion>, 1, 72));
villagerTrades.addWanderingTrade(2, TreasureMapForEmeralds.create(4, <resource:minecraft:on_treasure_maps>, "Mapa para o Tesouro mais próximo", <constant:minecraft:world/map/decorationtype:mansion>, 1, 72));
villagerTrades.addWanderingTrade(2, TreasureMapForEmeralds.create(4, <resource:minecraft:on_woodland_explorer_maps>, "Mapa para o Ponto de Interesse Florestal mais próximo", <constant:minecraft:world/map/decorationtype:mansion>, 1, 72));





//---------------- BUY ----------------//

//Add the new Common Reworked Trades
villagerTrades.addWanderingTrade(1, <item:minecraft:cherry_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:oak_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:spruce_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:birch_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:jungle_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:acacia_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:mangrove_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:fruitfulfun:citrus_log> * 64, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:bamboo_block> * 64, <item:minecraft:emerald> * 3, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:brown_mushroom> * 16, <item:minecraft:emerald> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:red_mushroom> * 16, <item:minecraft:emerald> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:quark:glow_shroom> * 16, <item:minecraft:emerald> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:cactus> * 64, <item:minecraft:emerald> * 3, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:sunflower> * 64, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:cocoa_beans> * 64, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:pumpkin> * 64, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:melon> * 64, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:sweet_berries> * 64, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:glow_berries> * 64, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:honey_bottle> * 16, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:slime_block> * 16, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:axolotl_bucket> * 1, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:cod> * 5, <item:minecraft:emerald> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:salmon> * 5, <item:minecraft:emerald> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:pufferfish> * 4, <item:minecraft:emerald> * 1, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:raw_iron> * 16, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:raw_copper> * 32, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:k_turrets:raw_titanium> * 16, <item:minecraft:emerald> * 6, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:coal> * 16, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:raw_gold> * 16, <item:minecraft:emerald> * 7, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:lapis_block> * 32, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:diamond> * 1, <item:minecraft:emerald> * 10, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:amethyst_shard> * 16, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:netherite_ingot> * 1, <item:minecraft:emerald> * 26, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:doggytalents:training_treat> * 2, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:simplehats:hatbag_common> * 16, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:simplehats:hatbag_uncommon> * 10, <item:minecraft:emerald> * 2, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:simplehats:hatbag_rare> * 8, <item:minecraft:emerald> * 4, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:simplehats:hatbag_epic> * 4, <item:minecraft:emerald> * 8, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:rotten_flesh> * 32, <item:minecraft:emerald> * 5, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:bone> * 32, <item:minecraft:emerald> * 8, 99999, 16);
villagerTrades.addWanderingTrade(1, <item:minecraft:string> * 32, <item:minecraft:emerald> * 3, 99999, 16);

//Add the new Rare Reworked Trades
villagerTrades.addWanderingTrade(2, <item:cgm:grenade> * 1, <item:minecraft:emerald> * 2, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:stun_grenade> * 1, <item:minecraft:emerald> * 1, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:short_scope>.withoutTag() * 1, <item:minecraft:emerald> * 6, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:medium_scope>.withoutTag() * 1, <item:minecraft:emerald> * 10, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:long_scope>.withoutTag() * 1, <item:minecraft:emerald> * 14, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:silencer>.withoutTag() * 1, <item:minecraft:emerald> * 10, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:light_stock>.withoutTag() * 1, <item:minecraft:emerald> * 10, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:tactical_stock>.withoutTag() * 1, <item:minecraft:emerald> * 16, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:weighted_stock>.withoutTag() * 1, <item:minecraft:emerald> * 20, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:light_grip>.withoutTag() * 1, <item:minecraft:emerald> * 8, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:specialised_grip>.withoutTag() * 1, <item:minecraft:emerald> * 16, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:pistol>.withoutTag() * 1, <item:minecraft:emerald> * 30, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:shotgun>.withoutTag() * 1, <item:minecraft:emerald> * 52, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:rifle>.withoutTag() * 1, <item:minecraft:emerald_block> * 11, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:grenade_launcher>.withoutTag() * 1, <item:minecraft:emerald_block> * 9, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:bazooka>.withoutTag() * 1, <item:minecraft:emerald_block> * 14, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:mini_gun>.withoutTag() * 1, <item:minecraft:emerald_block> * 20, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:assault_rifle>.withoutTag() * 1, <item:minecraft:emerald_block> * 8, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:machine_pistol>.withoutTag() * 1, <item:minecraft:emerald> * 52, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:cgm:heavy_rifle>.withoutTag() * 1, <item:minecraft:emerald_block> * 12, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:fruitfulfun:pomegranate> * 16, <item:minecraft:emerald> * 3, 99999, 72);
villagerTrades.addWanderingTrade(2, <item:fruitfulfun:redlove> * 16, <item:minecraft:emerald> * 3, 99999, 72);