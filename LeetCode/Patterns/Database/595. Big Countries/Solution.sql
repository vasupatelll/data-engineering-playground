SELECT
    world.name, 
    world.population,
    world.area  
FROM World world
WHERE world.area >= 3000000 

UNION

SELECT
    world.name, 
    world.population,
    world.area  
FROM World world
WHERE world.population >= 25000000

ORDER BY name