# Applying the Shenron Valley repair

From the repository root, run:

```bash
python versions/original/tools/patch_shenron.py
```

The script reads the recovered original function and writes a repaired copy to
`versions/patched/data/dblobby/function/regions/shenron_valley.mcfunction`.
It refuses to patch a source whose first three commands differ from the
expected original, checks that every replacement fill is within the command
limit, and never edits the preserved original file.

The generated file is only one repaired region function, not a complete
standalone datapack. It must be used alongside the rest of the datapack's
matching functions.
