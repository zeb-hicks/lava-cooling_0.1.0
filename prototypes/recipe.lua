data:extend({
  {
    type = "recipe-category",
    name = "slag-processing",
  }
})

data:extend({
  {
    type = "recipe",
    name = "slag-pit",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 4000,
        max = 4000
      }
    },
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-plate", amount = 12},
      {type = "item", name = "iron-gear-wheel", amount = 10},
      {type = "item", name = "stone-brick", amount = 10}
    },
    energy_required = 4,
    results = {{type="item", name="slag-pit", amount=1}}
  },

  {
    type = "recipe",
    name = "slag-processing",
    icon = "__space-age__/graphics/icons/fluid/molten-iron-from-lava.png",
    category = "slag-processing",
    subgroup = "vulcanus-processes",
    order = "a[melting]-a[slag]",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "lava", amount = 200},
      {type = "item", name = "calcite", amount = 1},
    },
    energy_required = 3,
    results =
    {
      {type = "item", name = "iron-ore", amount = 2, probability = 0.45, show_details_in_recipe_tooltip = false},
      {type = "item", name = "copper-ore", amount = 1, probability = 0.32, show_details_in_recipe_tooltip = false},
      {type = "item", name = "stone", amount = 4, probability = 0.55, show_details_in_recipe_tooltip = false},
    },
    allow_productivity = true
  },
})
