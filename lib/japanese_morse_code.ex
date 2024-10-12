defmodule JapaneseMorseCode do
  @moduledoc """
  Documentation for `JapaneseMorseCode`.
  """
  @kana_morse %{
    "イ" => ".-",
    "ロ" => ".-.-",
    "ハ" => "-...",
    "ニ" => "-.-.",
    "ホ" => "-..",
    "ヘ" => ".",
    "ト" => "..-..",
    "チ" => "..-.",
    "リ" => "--.",
    "ヌ" => "....",
    "ル" => "-.--.",
    "ヲ" => ".---",
    "ワ" => "-.-",
    "カ" => ".-..",
    "ヨ" => "--",
    "タ" => "-.",
    "レ" => "---",
    "ソ" => "---.",
    "ツ" => ".--.",
    "ネ" => "--.-",
    "ナ" => ".-.",
    "ラ" => "...",
    "ム" => "-",
    "ウ" => "..-",
    "ヰ" => ".-..-",
    "ノ" => "..--",
    "オ" => ".-...",
    "ク" => "...-",
    "ヤ" => ".--",
    "マ" => "-..-",
    "ケ" => "-.--",
    "フ" => "--..",
    "コ" => "----",
    "エ" => "-.----",
    "テ" => ".-.--",
    "ア" => "--.--",
    "サ" => "-.-.-",
    "キ" => "-.-..",
    "ユ" => "-..--",
    "メ" => "-...-",
    "ミ" => "..-.-",
    "シ" => "--.-.",
    "ヱ" => ".--..",
    "ヒ" => "--..-",
    "モ" => "-..-.",
    "セ" => ".---.",
    "ス" => "---.-",
    "ン" => ".-.-.",
    # Dakuten
    "゛" => "..",
    # Handakuten
    "゜" => "..--.",
    # Space represented by "/"
    " " => "/"
  }
  @doc """
  Return the complete Morse code dictionary for Japanese Kana.
  """
  def morse_code do
    @kana_morse
  end

  @doc """
  Encodes a string oj Japanese kana into Morse code.

  ## Examples

      iex> JapaneseMorseCode.encode("イロハニホヘト")
      ".- .-.- -... -.-. -.. . ..-.."
      iex> JapaneseMorseCode.decode(".- .-.- -... -.-. -.. . ..-..")
      "イロハニホヘト"
  """

  def encode(text) when is_binary(text) do
    text
    |> String.graphemes()
    |> Enum.map(&Map.get(@kana_morse, &1, ""))
    |> Enum.filter(&(&1 != ""))
    |> Enum.join(" ")
  end

  def decode(morse) when is_binary(morse) do
    morse_to_kana =
      morse_code()
      |> Enum.into(%{}, fn {kana, code} -> {code, kana} end)

    morse
    |> String.split(" ")
    |> Enum.map(&Map.get(morse_to_kana, &1, ""))
    |> Enum.join("")
  end
end
