require("prototypes.scripts.remove_unused")
require("prototypes.scripts.autoplace")

-- ANNOYING FIX TODOs:
----------------------
-- icon reworks
-- - advanced engine tech graphic + name (?)
-- - tar processing/reclamation icons
-- - emotional synthesis icon + tech graphic
-- - roboport tech graphic?
-- - concretes tech graphic?
-- layered icons look bad when disabled. Bake them.
-- rename: unstable gas?
-- all items seem to be unlocked in FNEI/signals etc without researching them.
-- "raw cost" view doesn't seem to work for fluid composites
-- upgrade graphics for boiler; maybe also pipes/tanks/steam engine?
-- - and possibly slightly increase base pipe capacity
-- output buffer issue on rare metals / matter bulk processes, etc, can it be fixed?
-- - particularly important w.r.t any hope of productivity modules working
-- module graphics/tech graphics
-- resplendent plate tech graphics, phantom handling tech graphics, seance tech graphic

-- IMPORTANT TODOs:
-------------------
-- still something for matter; or maybe only for sophisticated matter
-- perhaps something with constituents
-- something for contemplation units?
-- need to make sure fps doesn't bug out during cube split
-- - need an emergency way to retrieve all phantoms? unless search works

-- RANDOM THOUGHT TODOs:
------------------------
-- reintroduce start cutscene
-- analysis machine that unlocks techs based on finding things in the world
-- strange device / mystery furnace (downgrades items, gives you potatoes, but some secret good things)
-- maybe a secret tech tree you find out in the world? (e.g. mechanical network)
-- rework fuel refinery? (to not need cube directly, something else instead? or maybe it can use other cubes?)
-- more with besselheim? some kind of flask recycling?
-- ghost effects spooky player

-- LONG-TERM TODOs:
-------------------
-- rearrange upgrade techs; some 3/4-level techs could be on the way to 3/4 instead (e.g. loaders or logistic chests maybe)
-- maybe pickaxe/mining upgrades?
-- think about reintroducing biters + military?
-- storylore tooltips
-- move some current techs later and add earlier-game shit versions of things? e.g. miners, fabricator, perhaps even synthesizer

-- TECH TREE TODOs:
-------------------
-- after science 2, split into 2 (or 3) different focus trees that interlink & eventually merge together.
-- Next science names: deep/erudite contemplation/introspection/reflection card; annihillation card...

-- should phantom constituent synthesis be done in a smaller machine...? it could be quite unwieldy atm o_o need to test
-- - maybe the dimensional engine could convert a synthesizer into a mini-synthesizer... !?
-- tendril expulsion: possibly ... require something from other branch in recipe? Maybe for more efficient version?
-- Perhaps premonition card just made from ectoplasm, not haunted cell? Not sure.
-- possibly some level 2 techs may need to go behind science cards 3/4 - there's not much there yet
-- Figure out another awkward deep branch power solution w/uranium. Maybe use temperature mechanics properly, with crazy heating mixing.
-- Module recipes, colours and naming: charged/overcharged etc.

-- Science ingredients:
-- - deep branch - product from resplendent plate (?)
-- - ghost branch - third/fourth ingredient, maybe not just another anguish?
-- Some other use of euphoria? e.g. Joy -> steam (not efficient)? (seems important)
-- Some other thing where you only get 1 item per set amount of time no matter what somehow (!!!)

-- Main tech unlocks:
-- Better armour / equipments (battery v2 on erudite tree) - maybe modules?
-- accumulator v2 (plate + ghost battery etc)
-- Exoskeleton w/ speed module (??) but then how spider? Speed module just dust, and crystal for v2?
-- recolour modules...; add productivity, and check what all machine/recipes it could go in.

-- Random thoughts.
-- Ultradense constituent and reassembly: Something with weird ratios. Need to recharge many constituents at once?
-- - Something where cube an output from cube split has to be processed (long time) and fed back in to a different cube split (loopback);
-- - New dormant -> dormant phantom cube recipe for something - perhaps cerebral substrate, perhaps something else?
-- ?: something where cube splits in exactly 2 (joy + anguish?), which are used for different things, then recombined.
-- alternatively: something where cube has random chance to turn into red cube or blue cube. or maybe both
-- some exponential feedback loop that starts extremely slow somewhere (ala gardens or nuclear)
-- - how about this: deep crushing has tiny% chance to produce diamond or something
-- ?: can have some recipes that make old things e.g. matter units, but not strict replacement
-- ?: some more efficient basic materials but they come out in awkward ways (like only make matter+tar at the same time or something, etc)
-- 2: some cube process that outputs random / multiple products.
--    basic antimatter unit. Matter annihilation (matter + antimatter) -> energy!
-- 3: many interlinked recipes with short time and low amounts or

-- Things to unlock from level 3/4+:
-- Matter/antimatter; nuclear; or other better power (should need to combine multiple)
-- Matter repurposings? (convert basic intermediates into others, maybe big scale, but in some way that you still need
--                           original recipes occasionally - how exactly? and/or without conversion, reagents)
----- Or: maybe some way of converting like this, but high power cost, e.g. power -> more matter?
-- Cube teleportation (implement, + teleportation gps module)
-- Even better equipment
-- Higher-level modules, perhaps non-cube (e.g. fabricator) modules, beacon!?
-- unobtainium?

-- After science 3/4 or nearby, later ideas...
-- Quantum decoder; via multi-furnace (quantum computer or research server); qbits;
-- - every recipe is random with one pair from 6*6 options (so 1/21 chance)
-- Few other things with combining the earlier trees
-- Very last thing to do destroys the cube (e.g. in intergalactic tranceiver) to produce final science plus
-- materials to rebuild it in a long/expensive process. Maybe like 1 iron plate just for jokes.
-- And maybe that's ~it!?
-- ?: something to do with mechanical circuit network?
-- ?: some sort of weird biter farmer spawning synthesis.
-- ?: late game forbidden tech. Experiments on cube. Suffering. Regret.
require("menu_simulations.menu_simulations")

require("prototypes.equipment")
require("prototypes.fluids")
require("prototypes.fuel_categories")
require("prototypes.item_groups")
require("prototypes.items")
require("prototypes.items_equipment")
require("prototypes.items_logistics")
require("prototypes.items_modules")
require("prototypes.items_resources")
require("prototypes.items_production")
require("prototypes.items_science")
require("prototypes.mechanical_network.data")
require("prototypes.mechanical_network.entities")
require("prototypes.recipe_categories")
require("prototypes.recipes_compatibility")
require("prototypes.recipes_equipment")
require("prototypes.recipes_fluids")
require("prototypes.recipes_intermediates")
require("prototypes.recipes_logistics")
require("prototypes.recipes_modules")
require("prototypes.recipes_production")
require("prototypes.recipes_resources")
require("prototypes.recipes_science")
require("prototypes.recipes_synthesis")
require("prototypes.resources")
require("prototypes.technology_0")
require("prototypes.technology_1")
require("prototypes.technology_2")
require("prototypes.technology_3_4")
require("prototypes.technology_5")
require("prototypes.technology_compatibility")
require("prototypes.technology_upgrades")
require("prototypes.tweaks")

require("prototypes.entities.belts")
require("prototypes.entities.boiler")
require("prototypes.entities.chemical_plant")
require("prototypes.entities.containers")
require("prototypes.entities.crusher")
require("prototypes.entities.deep_core_ultradrill")
require("prototypes.entities.dimension_folding_engine")
require("prototypes.entities.distillery")
require("prototypes.entities.electric_furnace")
require("prototypes.entities.electric_mining_drills")
require("prototypes.entities.explosions")
require("prototypes.entities.fabricator")
require("prototypes.entities.fluid_burner")
require("prototypes.entities.fuel_refinery")
require("prototypes.entities.greenhouse")
require("prototypes.entities.heavy_turbine")
require("prototypes.entities.inserters")
require("prototypes.entities.lab")
require("prototypes.entities.loaders")
require("prototypes.entities.recovery_bay")
require("prototypes.entities.remnants")
require("prototypes.entities.roboport")
require("prototypes.entities.robots")
require("prototypes.entities.stygian_energy_lab")
require("prototypes.entities.synthesizer")
require("prototypes.entities.ultradense_furnace")

for _, t in pairs(data.raw.technology) do
  t.enabled = false
end
