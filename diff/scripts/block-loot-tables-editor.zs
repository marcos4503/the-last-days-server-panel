import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.table.LootTableManager;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootCondition;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.util.math.RandomSource;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import stdlib.List;

//#--> Adding Drops...

loot.modifiers.register(
    "fern_soy_beans_add_drop",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:blocks/fern>)),
    CommonLootModifiers.addAllWithChance(<item:doggytalents:soy_beans> % 25)
);