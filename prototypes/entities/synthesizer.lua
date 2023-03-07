local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local empty_sprite = {
  filename = "__Krastorio2Assets__/entities/empty.png",
  priority = "high",
  width = 1,
  height = 1,
  scale = 0.5,
  shift = {0, 0},
}

local pipe_path = {
  north = empty_sprite,
  east = empty_sprite,
  south = {
    filename = "__Krastorio2Assets__/entities/pipe-patch/pipe-patch.png",
    priority = "high",
    width = 28,
    height = 25,
    shift = {0.01, -0.58},
    hr_version = {
      filename = "__Krastorio2Assets__/entities/pipe-patch/hr-pipe-patch.png",
      priority = "high",
      width = 55,
      height = 50,
      scale = 0.5,
      shift = {0.01, -0.58},
    },
  },
  west = empty_sprite,
}

data:extend({
  {
    type = "corpse",
    name = "cube-medium-random-pipes-remnant",
    icon = "__Krastorio2Assets__/icons/entities/remnants-icon.png",
    icon_size = 64,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-3, -3}, {3, 3}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1, {
      filename = "__Krastorio2Assets__/entities/remnants/medium-random-pipes-remnant/medium-random-pipes-remnant.png",
      line_length = 1,
      width = 175,
      height = 175,
      frame_count = 1,
      direction_count = 1,
      hr_version = {
        filename = "__Krastorio2Assets__/entities/remnants/medium-random-pipes-remnant/hr-medium-random-pipes-remnant.png",
        line_length = 1,
        width = 350,
        height = 350,
        frame_count = 1,
        direction_count = 1,
        scale = 0.5,
      },
    }),
  },
  {
    type = "assembling-machine",
    name = "cube-synthesizer",
    icon = "__Krastorio2Assets__/icons/entities/matter-assembler.png",
    icon_size = 128,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "cube-synthesizer"},
    max_health = 1000,
    damaged_trigger_effect = hit_effects.entity(),
    corpse = "cube-medium-random-pipes-remnant",
    dying_explosion = "cube-medium-matter-explosion",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input-output", position = {0, -4}}},
      },
      {
        production_type = "output",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type = "input-output", position = {-4, 0}}},
      },
      {
        production_type = "output",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type = "input-output", position = {4, 0}}},
      },
      {
        production_type = "output",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type = "input-output", position = {0, 4}}},
      },
      off_when_no_fluid_recipe = false,
    },
    collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    fast_replaceable_group = "assembling-machine",
    animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/entities/matter-assembler/matter-assembler.png",
          priority = "high",
          width = 236,
          height = 244,
          frame_count = 1,
          shift = {0, -0.15},
          hr_version = {
            filename = "__Krastorio2Assets__/entities/matter-assembler/hr-matter-assembler.png",
            priority = "high",
            width = 473,
            height = 489,
            frame_count = 1,
            scale = 0.5,
            shift = {0, -0.15},
          },
        },
        {
          filename = "__Krastorio2Assets__/entities/matter-assembler/matter-assembler-sh.png",
          priority = "medium",
          width = 254,
          height = 223,
          frame_count = 1,
          shift = {0.38, 0.22},
          draw_as_shadow = true,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/matter-assembler/hr-matter-assembler-sh.png",
            priority = "medium",
            width = 508,
            height = 446,
            frame_count = 1,
            scale = 0.5,
            shift = {0.38, 0.22},
            draw_as_shadow = true,
          },
        },
      },
    },
    working_visualisations = {
      {
        draw_as_light = true,
        animation = {
          filename = "__Krastorio2Assets__/entities/matter-assembler/matter-assembler-working-glow-light.png",
          priority = "high",
          width = 72,
          height = 55,
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.75,
          shift = {0, -0.23},
          hr_version = {
            filename = "__Krastorio2Assets__/entities/matter-assembler/hr-matter-assembler-working-glow-light.png",
            priority = "high",
            width = 144,
            height = 110,
            frame_count = 30,
            line_length = 6,
            scale = 0.5,
            animation_speed = 0.75,
            shift = {0, -0.23},
          },
        },
      },
      {
        draw_as_glow = true,
        blend_mode = "additive",
        synced_fadeout = true,
        animation = {
          filename = "__Krastorio2Assets__/entities/matter-assembler/matter-assembler-working-glow.png",
          priority = "high",
          width = 72,
          height = 55,
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.75,
          shift = {0, -0.23},
          hr_version = {
            filename = "__Krastorio2Assets__/entities/matter-assembler/hr-matter-assembler-working-glow.png",
            priority = "high",
            width = 144,
            height = 110,
            frame_count = 30,
            line_length = 6,
            scale = 0.5,
            animation_speed = 0.75,
            shift = {0, -0.23},
          },
        },
      },
      {
        animation = {
          layers = {
            {
              filename = "__Krastorio2Assets__/entities/matter-assembler/matter-assembler-working-light.png",
              priority = "high",
              width = 236,
              height = 244,
              frame_count = 30,
              line_length = 6,
              animation_speed = 0.75,
              shift = {0, -0.15},
              draw_as_light = true,
              hr_version = {
                filename = "__Krastorio2Assets__/entities/matter-assembler/hr-matter-assembler-working-light.png",
                priority = "high",
                width = 473,
                height = 489,
                frame_count = 30,
                line_length = 6,
                scale = 0.5,
                animation_speed = 0.75,
                shift = {0, -0.15},
                draw_as_light = true,
              },
            },
            {
              filename = "__Krastorio2Assets__/entities/matter-assembler/matter-assembler-working.png",
              priority = "high",
              width = 236,
              height = 244,
              frame_count = 30,
              line_length = 6,
              animation_speed = 0.75,
              shift = {0, -0.15},
              hr_version = {
                filename = "__Krastorio2Assets__/entities/matter-assembler/hr-matter-assembler-working.png",
                priority = "high",
                width = 473,
                height = 489,
                frame_count = 30,
                line_length = 6,
                scale = 0.5,
                animation_speed = 0.75,
                shift = {0, -0.15},
              },
            },
          },
        },
        light = {
          intensity = 0.80,
          size = 6,
          shift = {0, -0.15},
          color = {r = 0.35, g = 0.5, b = 1},
        },
      },
    },
    crafting_categories = {"cube-synthesizer", "cube-synthesizer-handcraft"},
    scale_entity_info_icon = true,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = "__Krastorio2Assets__/sounds/buildings/matter-assembler.ogg",
        volume = 0.60,
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      apparent_volume = 0.75,
    },
    crafting_speed = 1.0,
    energy_usage = "50MW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 50,
      drain = "50KW",
    },

    water_reflection = {
      pictures = {
        filename = "__Krastorio2Assets__/entities/matter-assembler/matter-assembler-reflection.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    ingredient_count = 4,
    module_specification = {
      module_slots = 0,
      module_info_icon_shift = {0, 1.8},
      module_info_icon_scale = 0.6,
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },
})
