# MissingHeexWarningRepro

```
mix deps.get

# shows warning:
rm -rf _build && mix compile

    warning: undefined attribute "opts" for component Flop.Phoenix.pagination/1
    │
  9 │       opts={[]}
    │       ~~~~~~~~~
    │
    └─ lib/missing_heex_warning_repro_web/component.ex:9: (file)

# doesn't show a warning:
rm -rf _build && mix deps.compile && mix compile
```