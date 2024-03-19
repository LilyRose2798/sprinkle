import gleeunit
import gleeunit/should
import sprinkle.{format}

pub fn main() {
  gleeunit.main()
}

pub fn format_single_test() {
  format("My name is {name}!", [#("name", "Lily")])
  |> should.equal("My name is Lily!")
}

pub fn format_mutiple_test() {
  format("My name is {name} and I like to do {activity}!", [
    #("name", "Lily"),
    #("activity", "programming"),
  ])
  |> should.equal("My name is Lily and I like to do programming!")
}

pub fn format_repeated_test() {
  format("My name is {name}! Yep, it's definitely {name}.", [#("name", "Lily")])
  |> should.equal("My name is Lily! Yep, it's definitely Lily.")
}
