import gleam/string
import gleam/list

pub fn format(format_string: String, data: List(#(String, String))) -> String {
  list.fold(data, format_string, fn(acc, cur) {
    string.replace(acc, each: "{" <> cur.0 <> "}", with: cur.1)
  })
}
