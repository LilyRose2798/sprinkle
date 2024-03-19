import gleam/string
import gleam/list

/// Replaces any placeholders in the given format_string
/// with the values given in the data argument.
///
/// ## Examples
///
/// ```gleam
/// format("My name is {name}!", [#("name", "Lily")])
/// // -> "My name is Lily!"
/// ```
///
pub fn format(format_string: String, data: List(#(String, String))) -> String {
  list.fold(data, format_string, fn(acc, cur) {
    string.replace(acc, each: "{" <> cur.0 <> "}", with: cur.1)
  })
}
