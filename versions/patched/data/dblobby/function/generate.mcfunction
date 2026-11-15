tellraw @s {"text":"[Dragon Ball Lobby] Generating the world around your current position. This is a large build; use a fresh/backup world.","color":"gold"}
function dblobby:regions/central_spawn
function dblobby:regions/plaza_gardens
function dblobby:regions/plaza_dragon_ball
function dblobby:regions/spawn_rotunda
function dblobby:regions/plaza_social_courts
function dblobby:regions/plaza_compass_inlay
function dblobby:regions/hub_guide_pavilion
function dblobby:regions/plaza_npc_stations
function dblobby:regions/capsule_city
function dblobby:regions/capsule_city_detail
function dblobby:regions/capsule_city_arrival
function dblobby:regions/capsule_boulevard_lighting
function dblobby:regions/capsule_hq_entrance
function dblobby:regions/tournament
function dblobby:regions/tournament_stadium_detail
function dblobby:regions/tournament_seating
function dblobby:regions/kame_house
function dblobby:regions/kame_island_shoreline
function dblobby:regions/kame_island_detail
function dblobby:regions/kame_house_interior
function dblobby:regions/kame_dock_details
function dblobby:regions/kame_island_arrival
function dblobby:regions/shenron_valley
function dblobby:regions/shenron_valley_terrain_finish
function dblobby:regions/shenron_giant_form
function dblobby:regions/shenron_surface_detail
function dblobby:regions/roads_and_waypoints
function dblobby:regions/gateway_threshold_details
function dblobby:regions/district_approach_lighting
function dblobby:regions/plaza_gate_accents
function dblobby:regions/plaza_art_direction
function dblobby:regions/hub_architecture_finish
function dblobby:regions/plaza_orbital_finish
function dblobby:regions/plaza_npc_station_finish
function dblobby:regions/capsule_hq_dome
function dblobby:regions/capsule_hq_interior
function dblobby:regions/capsule_city_satellites
function dblobby:regions/capsule_city_finish
function dblobby:regions/capsule_hq_facade_finish
function dblobby:regions/capsule_city_civic_finish
function dblobby:regions/capsule_satellite_courts
function dblobby:regions/tournament_arrival_finish
function dblobby:regions/tournament_venue_finish
function dblobby:regions/tournament_spectator_finish
function dblobby:regions/tournament_arena_rebuild
function dblobby:regions/tournament_exterior_finish
function dblobby:regions/kame_house_finish
function dblobby:regions/kame_training_pavilion
function dblobby:regions/kame_house_complete_rebuild
function dblobby:regions/kame_beach_cabana_finish
function dblobby:regions/kamis_lookout_legacy_clear
execute positioned ~ ~140 ~ run function dblobby:regions/kamis_lookout_complete_rebuild
function dblobby:regions/korins_tower_complete_rebuild
function dblobby:regions/district_route_finish
function dblobby:regions/shenron_sculpture_finish
function dblobby:regions/shenron_epic_rebuild
function dblobby:regions/shenron_anatomy_finish
function dblobby:regions/shenron_forelimb_finish
function dblobby:regions/shenron_viewing_terrace
function dblobby:regions/shenron_valley_garden
function dblobby:regions/shenron_visitor_finish
function dblobby:regions/shenron_valley_entry_gate
function dblobby:regions/shenron_valley_access
spawnpoint @s ~ ~3 ~
tellraw @s {"text":"[Dragon Ball Lobby] Generation complete! Explore the roads leading north, east, west, and south.","color":"green"}




