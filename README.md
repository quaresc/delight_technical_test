# DELIGHT technical test

Exercices : https://adventofcode.com/2018/day/1

*Responses : ***470 and 790****

## Getting Started

Simply run `iex -S mix` to access elixir interactive shell with the project loaded up.

Two inputs files are present in the `./data` folder (same as adventofcode ones). You can use them to test both parts.

```
iex(1)> DelightTechnicalTest.first_second_part('./data/default_input.txt')
470
```

```
iex(1)> DelightTechnicalTest.resolve_second_part('./data/default_input.txt')
790
```

## Running the tests

Some tests covers basic functionality of both exercises. To run them, simply enter

```
mix test --trace
```

## Built With

* [Elixir 1.10.1](https://github.com/elixir-lang/elixir/releases/tag/v1.10.1)

## Author

* **Clément Quaresma**