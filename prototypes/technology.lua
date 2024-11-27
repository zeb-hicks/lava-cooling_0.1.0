data:extend({
  {
    type = "technology",
    name = "lava-cooling",
    icon = "__lava-cooling__/graphics/technology/lava-cooling.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "slag-pit"
      },
      {
        type = "unlock-recipe",
        recipe = "slag-processing"
      }
    },
    prerequisites = {"planet-discovery-vulcanus"},
    research_trigger =
    {
      type = "craft-fluid",
      fluid = "lava"
    }
  }
})
