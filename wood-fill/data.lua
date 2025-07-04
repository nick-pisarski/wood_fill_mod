data:extend({
  {
    type = "recipe",
    name = "wood-fill",
    localised_name = "Wood(Land)Fill",
    enabled = true,
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "wood", amount = 50 }
    },
    auto_recycle = false,
    results = {
      { type = "item", name = "landfill", amount = 1 }
    },
    category = "crafting",
    subgroup = "terrain",
    order = "b[landfill]-a[dirt]",
    allow_as_intermediate = true,
  }
})
