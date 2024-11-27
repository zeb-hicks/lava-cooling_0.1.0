local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
  {
    type = "item",
    name = "slag-pit",
    icon = "__lava-cooling__/graphics/icons/slag-pit.png",
    icon_size = 64,
    subgroup = "smelting-machine",
    order = "d[slag-pit]",
    place_result = "slag-pit",
    inventory_move_sound = item_sounds.steam_inventory_move,
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    stack_size = 20,
    weight = 80 * kg
  }
})
