if mods["stack-combinator"] then
  data.raw.technology["stack-combinator"].enabled = false
end
if mods["RenaiTransportation"] then
  require("updates.compatibility.renai_transportation_mystery")
end

-- Ensure other mods haven't messed with some important settings.
data.raw["electric-pole"]["cube-local-turbine-source"].maximum_wire_distance = 0
data.raw["electric-pole"]["cube-local-turbine-transmitter"].maximum_wire_distance = 0

local constants = data.raw["utility-constants"].default
constants.default_item_weight=0
constants.rocket_lift_weight=0

-- Make sure items can be sent automatically in the teleporter.
for type, _ in pairs(defines.prototypes.item) do
  for _, item in pairs(data.raw[type] or {}) do
    --item.rocket_launch_products = {{type = "item", name = "space-science-pack", amount = 0}}
    item.send_to_orbit_mode = "automated"
    item.ingredient_to_weight_coefficient = 0
  end
end
data.raw.item["cube-residual-tendrils"].rocket_launch_products = {{type = "item", name = "cube-residual-tendrils", amount = 100}}

local replacement_techs = {
  ["circuit-network"] = "cube-combinatorics",
  ["construction-robotics"] = "cube-construction-robotics",
  ["personal-roboport-equipment"] = "cube-personal-roboport-equipment",
  ["exoskeleton-equipment"] = "cube-exoskeleton-equipment",
  ["electronics"] = "cube-electronics",
  ["spidertron"] = "cube-spidertron",
}
for _, v in pairs(data.raw.shortcut) do
  if replacement_techs[v.technology_to_unlock] then
    v.technology_to_unlock = replacement_techs[v.technology_to_unlock]
  end
end