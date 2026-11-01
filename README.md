# Jinja2 Embedded for Zed

Jinja2 template highlighting for Zed: Jinja syntax plus embedded YAML or JSON.

| Language     | File extensions                                                                          |
|--------------|------------------------------------------------------------------------------------------|
| Jinja2 YAML  | `*.yaml.j2`, `*.yml.j2`, `*.j2.yaml`, `*.j2.yml`, `*.jinja.yaml`, `*.jinja.yml`, `*.sls` |
| Jinja2 JSON  | `*.json.j2`, `*.j2.json`, `*.jinja.json`                                                 |
| Jinja2 Plain | `*.j2`, `*.jinja`, `*.jinja2` (Jinja syntax only)                                        |

## Installation

From Zed: open `zed: extensions` and search for "Jinja2 Embedded".

Locally: run `zed: install dev extension` and select the repository folder (requires Rust installed via rustup).

## How it works

The [tree-sitter-jinja](https://github.com/cathaysia/tree-sitter-jinja) grammar parses `{{ }}`, `{% %}` and `{# #}`.
The remaining text (`content`) is highlighted as YAML/JSON through injection. The chunks are joined into a single
document (`injection.combined`), so expressions inside quotes don't break parsing.

## Limitations

If stripping the Jinja expressions leaves invalid YAML/JSON (for example `{{ a }}{{ b }}` in a key position),
highlighting of the embedded language may be lost.

## License

MIT
