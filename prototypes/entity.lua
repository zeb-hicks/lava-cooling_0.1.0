local hit_effects = require("__base__.prototypes.entity.hit-effects")

data:extend({
  {
    type = "furnace",
    name = "slag-pit",
    icon = "__lava-cooling__/graphics/icons/slag-pit.png",
    icon_size = 64,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2, result = "slag-pit"},
    fast_replaceable_group = "slag-pit",
    collision_box = {{-2.2, -0.7}, {2.2, 0.7}},
    selection_box = {{-2.4, -0.9}, {2.4, 0.9}},
    vector_to_place_result = {2.85, -0.5},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    graphics_set =
    {
      animation =
      {
        north =
        {
          layers =
          {
            {
              filename = "__lava-cooling__/graphics/entity/slag-pit-north.png",
              priority = "high",
              width = 256,
              height = 256,
              frame_count = 120,
              line_length = 12,
              shift = {0, 0},
              scale = 0.77
            }
          }
        },
        east =
        {
          layers = {{
            filename = "__lava-cooling__/graphics/entity/slag-pit-east.png",
            priority = "high",
            width = 256,
            height = 256,
            frame_count = 120,
            line_length = 12,
            shift = {0, 0},
            scale = 0.77
          }}
        },
        south =
        {
          layers = {{
            filename = "__lava-cooling__/graphics/entity/slag-pit-south.png",
            priority = "high",
            width = 256,
            height = 256,
            frame_count = 120,
            line_length = 12,
            shift = {0, 0},
            scale = 0.77
          }}
        },
        west =
        {
          layers = {{
            filename = "__lava-cooling__/graphics/entity/slag-pit-west.png",
            priority = "high",
            width = 256,
            height = 256,
            frame_count = 120,
            line_length = 12,
            shift = {0, 0},
            scale = 0.77
          }}
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          north_animation =
          {
            filename = "__lava-cooling__/graphics/entity/slag-pit-north-glow.png",
            blend_mode = "additive",
            width = 256,
            height = 256,
            frame_count = 120,
            line_length = 12,
            shift = {0, 0},
            scale = 0.77,
            draw_as_glow = true,
          },
          east_animation =
          {
            filename = "__lava-cooling__/graphics/entity/slag-pit-east-glow.png",
            blend_mode = "additive",
            width = 256,
            height = 256,
            frame_count = 120,
            line_length = 12,
            shift = {0, 0},
            scale = 0.77,
            draw_as_glow = true,
          },
          south_animation =
          {
            filename = "__lava-cooling__/graphics/entity/slag-pit-south-glow.png",
            blend_mode = "additive",
            width = 256,
            height = 256,
            frame_count = 120,
            line_length = 12,
            shift = {0, 0},
            scale = 0.77,
            draw_as_glow = true,
          },
          west_animation =
          {
            filename = "__lava-cooling__/graphics/entity/slag-pit-west-glow.png",
            blend_mode = "additive",
            width = 256,
            height = 256,
            frame_count = 120,
            line_length = 12,
            shift = {0, 0},
            scale = 0.77,
            draw_as_glow = true,
          },
        }
      }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      },
      {
        type = "impact",
        percent = 30
      }
    },
    crafting_speed = 1,
    crafting_categories = {"slag-processing"},
    source_inventory_size = 1,
    result_inventory_size = 3,
    heating_energy = "200kW",
    energy_usage = "80kW",
    energy_source =
    {
      type = "void"
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        always_draw_covers = true,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        filter = "lava",
        pipe_connections = {{ flow_direction = "input", direction = defines.direction.west, position = {-2, -0.5} }}
      },
    },
  }
})
