# Original 1.0 recovery audit

The original archive is preserved byte-for-byte outside this repository while its source is being restored.

- Archive: `DragonBallLobby-Datapack-1.0.zip`
- Size: 9,528 bytes
- SHA-256: `60b258dad9d3603e2ab7817fd012445d8df6b0b15ad6bd42d12421363c724040`
- Git blob SHA-1 (expected for the exact ZIP): `4ae4389154796896dafe99de79402d3d4f103f51`
- Entries: 13 (10 function files, pack metadata, load tag, README)
- Target: Minecraft Java 1.21.1, pack format 48

## Validation findings

A static scan of all ten function files found three `fill` commands in
`regions/shenron_valley.mcfunction` that exceed Minecraft's 32,768-block
per-fill limit:

| Original line | Requested volume | Problem |
| ---: | ---: | --- |
| 3 | 119,064 | Too large; command will fail |
| 4 | 88,168 | Too large; command will fail |
| 5 | 57,768 | Too large; command will fail |

All other `fill` commands in the original archive are within the limit.
This is a static command-volume check, not an in-game execution test.

## Required repair before using the original

Split the three oversized Shenron Valley fills into smaller X-axis slices,
keeping each slice at or below 32,768 blocks. Preserve the original material,
coordinates, and ordering. Do not run the unpatched original generator in a
world expecting the Shenron Valley terrain layers to complete.

## Recovery status

The original archive and its complete contents have been recovered and
verified locally. The repository's `versions/original/` folder currently
contains the original core functions and metadata, but not yet all seven
region source files or the binary ZIP. The separate `datapack/` working
implementation is intentionally untouched.
