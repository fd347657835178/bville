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

// empty mob spawner
craftingTable.addShaped("empty_spawner", 
<item:minecraft:spawner>, 
[[<item:minecraft:obsidian>, <item:minecraft:iron_bars>, <item:minecraft:obsidian>], 
[<item:minecraft:iron_bars>, <item:tombstone:grave_dust>, <item:minecraft:iron_bars>], 
[<item:minecraft:obsidian>, <item:minecraft:iron_bars>, <item:minecraft:obsidian>]], null);

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