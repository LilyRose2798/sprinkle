# sprinkle

[![Package Version](https://img.shields.io/hexpm/v/sprinkle)](https://hex.pm/packages/sprinkle)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/sprinkle/)

```sh
gleam add sprinkle
```
```gleam
import sprinkle.{format}

pub fn main() {
  let output = format("My name is {name} and I like to do {activity}!", [
    #("name", "Lily"),
    #("activity", "programming")
  ])
}
```

Further documentation can be found at <https://hexdocs.pm/sprinkle>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
