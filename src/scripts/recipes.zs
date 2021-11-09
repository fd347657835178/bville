import crafttweaker.api.data.StringData;
import crafttweaker.api.data.ShortData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.IData;

// construction tool & stone wand disambiguation
craftingTable.removeRecipe(<item:structurize:sceptergold>);
craftingTable.addShaped("build_tool_compatibility", 
<item:structurize:sceptergold>, 
[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:gold_nugget>], 
[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>], 
[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]], null);

// Workaround for uncraftable
craftingTable.addShaped("empty_spawner", 
<item:minecraft:spawner>, 
[[<item:minecraft:obsidian>, <item:minecraft:iron_bars>, <item:minecraft:obsidian>], 
[<item:minecraft:iron_bars>, <item:tombstone:grave_dust>, <item:minecraft:iron_bars>], 
[<item:minecraft:obsidian>, <item:minecraft:iron_bars>, <item:minecraft:obsidian>]], null);

// Workaround for rarity
craftingTable.addShapeless("essence_of_undeath", 
<item:tombstone:essence_of_undeath> * 2, 
[<item:botania:vial>, <item:tombstone:impregnated_diamond>, <item:tombstone:tablet_of_cupidity>, <item:minecraft:rotten_flesh>, <item:minecraft:bone>]);

// Vanilla items
craftingTable.addShaped("saddle", 
<item:minecraft:saddle>, 
[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>], 
[<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>]], null);

craftingTable.addShapeless("vanilla_chest", <item:minecraft:chest>, [<tag:items:forge:chests/wooden>]);

craftingTable.removeRecipe(<item:cfm:post_box>);
craftingTable.addShaped("cheap_postbox", 
<item:cfm:post_box>, 
[[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], 
[<item:minecraft:iron_ingot>, <tag:items:forge:chests/wooden>, <item:minecraft:iron_ingot>], 
[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]], null);

// Portal General Items
craftingTable.removeRecipe(<item:versatileportals:portal_frame>);
craftingTable.removeRecipe(<item:versatileportals:portal_controller>);
craftingTable.removeRecipe(<item:versatileportals:empty_existing_world_control>);

craftingTable.addShapeless("existing_world_control_recycle", <item:versatileportals:empty_existing_world_control>, [<item:versatileportals:existing_world_control>]);

craftingTable.addShaped("cheaper_portal_frame", 
<item:versatileportals:portal_frame> * 4, 
[[<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>], 
[<item:minecraft:stone>, <item:minecraft:redstone>, <item:minecraft:stone>], 
[<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>]], null);

craftingTable.addShaped("cheaper_portal_controller", 
<item:versatileportals:portal_controller>, 
[[<item:minecraft:air>, <item:versatileportals:portal_frame>, <item:minecraft:air>], 
[<item:versatileportals:portal_frame>, <item:minecraft:diamond>, <item:versatileportals:portal_frame>], 
[<item:minecraft:air>, <item:versatileportals:portal_frame>, <item:minecraft:air>]], null);

// Portal Dimension Items
craftingTable.addShaped("spidercave_world_control", 
<item:versatileportals:existing_world_control>.withTag({WorldID: "bv:spidercave" as string, Color: 15227415 as int} as IData).setDisplayName("spidercave"), 
[[<item:minecraft:air>, <item:minecraft:diorite>, <item:minecraft:air>], 
[<item:minecraft:granite>, <item:minecraft:air>, <item:minecraft:andesite>], 
[<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>]], null);

craftingTable.addShaped("flatvillage_world_control", 
<item:versatileportals:existing_world_control>.withTag({WorldID: "bv:flatvillage" as string, Color: 5185982 as int} as IData).setDisplayName("flatvillage"), 
[[<item:minecraft:air>, <tag:items:minecraft:beds>, <item:minecraft:air>], 
[<tag:items:minecraft:doors>, <item:minecraft:air>, <tag:items:minecraft:doors>], 
[<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>]], null);

craftingTable.addShaped("astraljungle_world_control", 
<item:versatileportals:existing_world_control>.withTag({WorldID: "bv:astraljungle" as string, Color: 9747697 as int} as IData).setDisplayName("astraljungle"), 
[[<item:minecraft:air>, <tag:items:minecraft:saplings>, <item:minecraft:air>], 
[<item:minecraft:glowstone_dust>, <item:minecraft:air>, <item:minecraft:glowstone_dust>], 
[<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>]], null);

craftingTable.addShaped("snowzone_world_control", 
<item:versatileportals:existing_world_control>.withTag({WorldID: "bv:snowzone" as string, Color: 8485114 as int} as IData).setDisplayName("snowzone"), 
[[<item:minecraft:air>, <item:minecraft:snowball>, <item:minecraft:air>], 
[<item:minecraft:snowball>, <item:minecraft:air>, <item:minecraft:snowball>], 
[<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>]], null);

craftingTable.addShaped("sandland_world_control", 
<item:versatileportals:existing_world_control>.withTag({WorldID: "bv:sandland" as string, Color: 16006202 as int} as IData).setDisplayName("sandland"), 
[[<item:minecraft:air>, <item:minecraft:sand>, <item:minecraft:air>], 
[<item:minecraft:terracotta>, <item:minecraft:air>, <item:minecraft:terracotta>], 
[<item:minecraft:air>, <item:minecraft:stone>, <item:minecraft:air>]], null);

// Resource Generation
//netherrack
<recipetype:create:filling>.addRecipe("gen_netherrack", <item:minecraft:netherrack>, <tag:items:forge:cobblestone>, <fluid:minecraft:lava> * 250);

//dirt
<recipetype:create:filling>.addRecipe("gen_dirt", <item:minecraft:dirt>, <tag:items:forge:sand>, <fluid:minecraft:water> * 250);

//soul soil
<recipetype:create:mixing>.addRecipe("gen_soul_soil", "heated", <item:minecraft:soul_soil>, [<item:minecraft:dirt>, <item:create:cinder_flour>], []);

//soul sand
<recipetype:create:milling>.addRecipe("gen_soul_sand", [<item:minecraft:soul_sand>], <item:minecraft:soul_soil>);

//zinc
<recipetype:create:compacting>.addRecipe("gen_zinc", "none", <item:create:zinc_ingot>, [<item:minecraft:iron_ingot>, <item:minecraft:glowstone_dust>], [<fluid:minecraft:lava> * 1000]);

//copper
<recipetype:create:compacting>.addRecipe("gen_copper", "none", <item:create:copper_ingot>, [<item:minecraft:gold_ingot>, <item:minecraft:redstone>], [<fluid:minecraft:lava> * 1000]);

//redstone
<recipetype:create:mixing>.addRecipe("gen_redstone", "none", <item:minecraft:redstone>, [<item:minecraft:quartz>, <item:minecraft:brick>], []);

//glowstone
<recipetype:create:mixing>.addRecipe("gen_glowstone", "none", <item:minecraft:glowstone_dust>, [<item:minecraft:quartz>, <item:minecraft:torch>], []);

//diamond
<recipetype:create:compacting>.addRecipe("gen_diamond", "superheated", <item:minecraft:diamond>, [<item:minecraft:lapis_lazuli>, <item:minecraft:coal_block>], []);
<recipetype:create:compacting>.addRecipe("gen_diamond2", "superheated", <item:minecraft:diamond>, [<item:minecraft:lapis_lazuli>, <item:quark:charcoal_block>], []);

//lapis
<recipetype:create:mixing>.addRecipe("gen_lapis", "heated", <item:minecraft:lapis_lazuli>, [<item:minecraft:quartz>, <tag:items:forge:dyes/blue>], [<fluid:minecraft:water> * 1000]);
