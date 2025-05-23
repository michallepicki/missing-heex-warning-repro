# MissingHeexWarningRepro

```
mix deps.get

# shows warning:
rm -rf _build && mix compile
# doesn't show a warning:
rm -rf _build && mix deps.compile && mix compile
```