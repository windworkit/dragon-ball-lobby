# Dragon Ball Lobby — repaired complete datapack

This is the assembled Minecraft Java 1.21.1 datapack based on the recovered
original 1.0 source. It contains the pack metadata, load tag, core functions,
and all original region functions and the expanded decorative modules.

## Install
1. Back up your world or create a disposable test world.
2. Copy the entire `versions/patched/` folder contents (the `pack.mcmeta`
   file and `data/` folder) into a folder inside your world's
   `datapacks/` directory, or download the repository as ZIP and extract
   this folder's contents into a datapack folder.
3. Run `/reload`.
4. Stand in a large open area at the desired plaza height.
5. Run `/function dblobby:generate`.

## What's included
- Central spawn hub with an open-air monumental rotunda framing the floating one-star Dragon Ball, illuminated crown columns, seating bays, compass medallions, four landscaped cherry-tree gardens, four passable architectural district gateways with district-specific Capsule, Tournament, Turtle School and Kami crests, layered supports, illuminated glass insets, flush colored threshold strips, a new eight-point radial floor inlay, paired orbital halos around the floating Dragon Ball, and repeated illuminated roadside approach markers, with flush color-coded road-edge lines and four directional floor arrows, plus a dedicated blue-and-white Capsule City arrival gateway and four social seating courts, Capsule Corp boulevard lighting, tiered tournament spectator seating, an extended lantern-lit Kame House dock, and a dedicated Shenron viewing terrace with landscaped approach gardens and a gold-capped southern entry gate.
- Capsule Corporation city with a large white-and-gold domed HQ with a layered south entry, paired glazed reception windows, gold-capped portal piers, blue ribbon fins, a Capsule crest, a clear boulevard tunnel, furnished reception/research wings, two rounded satellite capsule buildings with separate visitor and research courts connected to the HQ forecourt, illuminated boulevard details, and a finished civic square with flush zebra crossing, paired seating courts, capsule-blue lights, planted corners, and a clear side-walk network. The smaller residential and workshop blocks now have four distinct public entries, blue/cyan canopy trims, level landing pads, service vents, and illuminated roof pods.
- World Martial Arts Tournament stadium with a level concourse, chamfered red/quartz fighting platform, pale central mat and gold markings, rebuilt tiered inner seating with a wide center aisle, outer grandstands with repeating quartz buttresses, gold collars, blue-glass spectator bays, red roof caps and illuminated markers, open roof over the ring, pagoda-style arrival gate, registration/vendor stalls, announcer stand, scoreboard, perimeter lighting, and two additional east-concourse service pavilions for equipment check-in and water/recovery supplies.
- Kame House on a reshaped oval island with a fully rebuilt rounded pink shell, large stepped red dome roof, white belt and pilasters, curved blue-glass windows, turtle-shell front crest, broad wraparound veranda, refurnished interior, continuous sandstone dock walk, palm grove, beach umbrellas, shoreline rockwork, and a separate open-air Turtle School dojo, plus a new shaded beach cabana with striped canopy, benches, storage barrels, lanterns, and a short flush sandstone walk to the eastern beach. The northern Turtle School training garden also has a formal oval sparring ring, Turtle-shell center emblem, three marked target stations, dojo approach path, low lantern posts and instructor benches.
- Kami's Lookout completely rebuilt as a monumental floating circular sanctuary: a tiled oval courtyard, layered red-and-ivory hull with a green lower bowl, central gold-domed temple and two matching side sanctuaries, tall orbital lanterns, cypress-like gardens, reflecting pools, a guarded central Korin ladder hatch, a two-tier quartz sanctuary stair, paired meditation benches, and an open ceremonial promenade;
- Shenron Valley with a monumental, reference-inspired Shenron: a massive layered coil, elevated chest and neck, sculpted muzzle and jaw, raised brow, branching swept horns, long curling whiskers, four articulated clawed limbs, fanned tail, flowing nape mane, stepped dorsal crest, contrasting scale plates, segmented gold belly, cloud supports, and seven individually staged Dragon Ball displays. The south-side visitor terrace has a clear center approach, flush gold-edged aisle, paired dragon-scale medallions, low wish-marker plinths, and an ornamental entry gate.
- Korin's Tower: a centered 139-block rise directly beneath Kami's Lookout, with a long terracotta/sandstone shaft, a monumental rounded cream crown, dark red-brown equatorial belt, wraparound terrace, garden planters, gold keel, and a continuous central ladder into the Lookout.
- Roads and colored waypoints.

- Elevated Shenron Valley access road from Capsule City, with a stair climb, lit retaining walls, and a supported causeway to the viewing terrace.
- Tournament spectator seating finish with an east-facing scoreboard, red-and-gold pennants, and canopy lighting.\n\n## Player hub guide

Run `/function dblobby:hub` in-game for a concise welcome message and district directions. The north blue road leads to Capsule Corporation City, east red to the World Martial Arts Tournament, south gold to Kami's Lookout, and west pink to Kame House Island. Shenron Valley lies beyond the northeastern city route; Korin's Tower rises from the south approach and shares the exact X/Z centerline of Kami's Lookout. A guide pavilion sits beside the north road, four social seating courts give players places to gather, and four color-coded NPC-ready stations are staged around the plaza for future server guides, quests, travel, and character information; each now has a matching quartz canopy frame, gold collars, role-color roof panel, and lantern crown. They remain decorative staging builds, with no NPCs or interactions assumed. `/function dblobby:help` lists builder and maintenance functions.

## Repair applied
The original Shenron Valley function contained three fills exceeding
Minecraft's 32,768-block command limit. This version splits those fills into
nine smaller commands. The untouched original remains in
`versions/original/`.

## Important limitations
This is an expanding static build, not a finished custom adventure map. It does not yet include custom NPCs, quests, mod-specific blocks, or Dragon Ball progression logic. The current hub and landmark interiors are vanilla-block builds. The pack still needs a live Minecraft visual and multiplayer test. Back up first: generation can overwrite
existing terrain and player builds around the chosen execution point.

## Layout and build status

See [WORLD_LAYOUT.md](WORLD_LAYOUT.md) for the relative region positions and
recommended generation precautions.

Every push affecting this folder runs static validation and builds a
`DragonBallLobby-Patched-1.0` ZIP artifact. Open the repository's Actions tab,
select the latest successful **Validate repaired Dragon Ball lobby** run,
and download the artifact from its Artifacts section.

## Latest visual and elevation refinement

The current patched build includes a rebuilt volumetric Shenron, a rounded central
Dragon Ball, a unified central plaza floor, district façade finishing, a Kame House
roof and porch, a completely redesigned and elevated Kami's Lookout, a centered
Korin Tower with a monumental rounded crown and continuous central ladder, and a
level tournament concourse. See [WORLD_LAYOUT.md](WORLD_LAYOUT.md) for the
current elevation table and relative coordinates.

The static validator now also checks every referenced vanilla block ID and block-state
property/value against a pinned Java 1.21.1 block manifest in
`tools/vanilla_blocks_1_21_1.json`. This catches invalid block names before a
datapack ZIP is packaged.

## Recent architectural rebuilds

Capsule City now has a distinctive domed headquarters and two smaller rounded
capsule buildings. The main boulevard remains open through the HQ, while the
reception and research areas sit in separate side wings.

Kame House's foundation has been reshaped from a rectangular platform into an
oval island with stepped shore layers and a surrounding shallow-water ring.
The house, dock, training garden, and path details are generated after the
shoreline so they remain connected to the revised landform.

The Tournament forecourt now reads as an event entrance rather than a plain
passage: the pagoda gate frames the west arrival, the open stalls flank the
approach, and the announcer platform overlooks the fighting area.

The Shenron Valley ground has also been reshaped from rectangular tiers into
nested oval terraces. A spring and irregular rock outcrops break up the upper
shelf, while the oval display court and garden approach join the supported
viewing deck. The Capsule City approach is cut through the lower hillside and
climbs by a long stair to the elevated causeway.

The latest Shenron anatomy passes add the second pair of legs, a more visible
outward-swept front pair of arms, separated toes and gold claws, a fanned tail,
tapered whisker filaments, branching horn tines, a layered nape mane, and a
stepped dorsal crest. These additions are generated after the main statue so
the face, limbs, and silhouette details remain visible.
- Korin's Tower complete vertical rebuild: a grounded central shaft, a giant rounded cream dome, red-brown equatorial armor belt, open circular terrace, sculpted lower bowl, gold underside trim, and a direct ladder connection into the centered Kami's Lookout hatch.
- Kami's Lookout full floating-sanctuary rebuild with a stepped red/ivory/green saucer hull, tiled oval court, three gold-domed temple volumes, four high lantern pylons, planted cypress avenues, reflecting pools, and a centered vertical shaft. The whole Lookout is elevated 140 blocks above the generation origin to sit directly above Korin's new crown.
- Kame Island Turtle School pavilion with a red roof, shell crest, practice targets, benches, and lanterns.
