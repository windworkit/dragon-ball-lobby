# Original 1.0 recovery audit

The original archive was recovered from the saved project files and its exact
archive hash was checked locally.

- Archive: `DragonBallLobby-Datapack-1.0.zip`
- Size: 9,528 bytes
- SHA-256: `60b258dad9d3603e2ab7817fd012445d8df6b0b15ad6bd42d12421363c724040`
- Expected Git blob SHA-1: `4ae4389154796896dafe99de79402d3d4f103f51`
- Archive entries: 13 (10 function files, pack metadata, load tag, README)
- Target: Minecraft Java 1.21.1, pack format 48

## Source recovery status

Six of the seven original region functions have been restored to this folder
and individually verified against the original local files using Git blob
SHA-1 hashes:

- `central_spawn.mcfunction`
- `kame_house.mcfunction`
- `kamis_lookout.mcfunction`
- `roads_and_waypoints.mcfunction`
- `shenron_valley.mcfunction`
- `tournament.mcfunction`

The remaining region file is `capsule_city.mcfunction` (214 lines). The
original README, pack metadata, load tag, and three core functions are also
preserved here. The binary ZIP itself has not yet been committed.

## Static validation findings

A full scan of all ten original function files found exactly three oversized
`fill` commands, all in `regions/shenron_valley.mcfunction`:

| Original line | Requested volume | Result |
| ---: | ---: | --- |
| 3 | 119,064 | Exceeds 32,768 |
| 4 | 88,168 | Exceeds 32,768 |
| 5 | 57,768 | Exceeds 32,768 |

The other 405 fill commands across the datapack are within the limit. The
recovered source has 501 function lines in total. No malformed fill syntax was
found by the scan.

A repeatable patch generator is available at
`tools/patch_shenron.py`; it writes a repaired copy under `versions/patched/`
without changing the preserved original. A patched Shenron Valley function
has been committed and independently checked: 112 lines, 63 fill commands,
maximum fill volume 30,008, and zero oversized fills. Do not run the unpatched
original generator expecting the Shenron Valley terrain layers to complete.

## Test limitations

These are static checks only. They do not execute Minecraft, verify every
block identifier against the target runtime, or prove the resulting build
looks correct. Test in a disposable 1.21.1 world before using it on a valued
world. The separate `datapack/` working implementation remains untouched.
