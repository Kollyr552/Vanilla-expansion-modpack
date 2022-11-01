import crafttweaker.api.item.IItemStack;
#import mods.jei.JEI;

#Aquaculture - disable knifes
val items = [
    <item:aquaculture:wooden_fillet_knife>,
    <item:aquaculture:stone_fillet_knife>,
    <item:aquaculture:iron_fillet_knife>,
    <item:aquaculture:gold_fillet_knife>,
    <item:aquaculture:diamond_fillet_knife>
] as IItemStack[];

for item in items{
    craftingTable.remove(item);
    #mods.jei.JEI.hide(item);          #maybe when jeitweaker 1.19.2 releases
}

#Aquaculture - change neptunium knife recipe
craftingTable.removeByName("aquaculture:neptunium_fillet_knife");

craftingTable.addShaped("neptunium_knife", <item:aquaculture:neptunium_fillet_knife>, [
    [<item:aquaculture:neptunium_ingot>],
    [<item:minecraft:stick>]]);


#XP Tome - change recipe to use lapis instead

craftingTable.removeByName("xpbook:xp_tome");
craftingTable.addShaped("xp_tome", <item:xpbook:xp_tome>, [
    [<item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>],
    [<item:minecraft:lapis_lazuli>, <item:minecraft:book>, <item:minecraft:lapis_lazuli>],
    [<item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>]]);




