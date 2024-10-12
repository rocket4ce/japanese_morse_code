# JapaneseMorseCode
#### Overview
JapaneseMorseCode is an Elixir module that provides a Morse code dictionary for Japanese kana characters. It allows you to encode and decode messages using Morse code representations of Japanese katakana characters, including support for dakuten and handakuten diacritics.

This module is useful for applications that require Morse code communication in Japanese or for educational purposes to learn Morse code in the context of the Japanese language.
#### Feature
- **Encode** Japanese katakana strings into Morse code using standard dots (.) and dashes (-).
- **Decode** Morse code strings back into Japanese katakana.
- Support for **dakuten** (゛) and **handakuten** (゜) diacritics.
- Handling of spaces between words.
- Ignoring of **unsupported characters** during encoding and decoding.
#### Installation
Add the following to your `mix.exs` file:

```elixir
def deps do
      [{:japanese_morse_code, "~> 0.1.0"}]
end
```
```bash
$ mix deps.get
```

#### Usage
To encode a Japanese katakana string into Morse code:

```elixir
iex> JapaneseMorseCode.encode("イロハニホヘト")
" .- .-.- -... -.-. -.. . ..-.."
```
To decode a Morse code string back into Japanese katakana:

```elixir
iex> JapaneseMorseCode.decode(".- .-.- -... -.-. -.. . ..-..")
"イロハニホヘト"
```
Apache License
Version 2.0, January 2004
http://www.apache.org/licenses/