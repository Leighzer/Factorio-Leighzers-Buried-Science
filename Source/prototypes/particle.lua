function AddParticle(particleName)
  data:extend(
  {
    {--prototype for particles that fly out when you hand mine the ore in the ground
      type = "optimized-particle",
      name = "buried-"..particleName.."-particle",
      flags = {"not-on-map"},
      life_time = 180,
      pictures =
      {
        {
          filename = "__leighzerburiedscience__/graphics/entity/particle/science-pack-particle.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        }        
      },
      shadows =
      {
        {
          filename = "__leighzerburiedscience__/graphics/entity/particle/ore-particle-shadow.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          frame_count = 1
        }
      }
    }
  })
end