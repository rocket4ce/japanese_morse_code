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
  """
  def encode(text) when is_binary(text) do
    text
    |> String.graphemes()
    |> Enum.map(&Map.get(@kana_morse, &1, ""))
    |> Enum.filter(&(&1 != ""))
    |> Enum.join(" ")
  end
end
