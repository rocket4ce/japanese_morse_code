defmodule JapaneseMorseCodeTest do
  use ExUnit.Case
  doctest JapaneseMorseCode

  test "get all kana" do
    assert JapaneseMorseCode.morse_code() == %{
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
             "゛" => "..",
             "゜" => "..--.",
             " " => "/"
           }
  end

  test "encode text" do
    assert JapaneseMorseCode.encode("イロハニホヘト") == ".- .-.- -... -.-. -.. . ..-.."
  end

  test "decode text" do
    assert JapaneseMorseCode.decode(".- .-.- -... -.-. -.. . ..-..") == "イロハニホヘト"
  end

  test "encoding and decoding a full string" do
    original = "イロハニホヘトチリヌルヲ"
    morse = JapaneseMorseCode.encode(original)
    decoded = JapaneseMorseCode.decode(morse)
    assert decoded == original
  end

  test "encoding an empty string" do
    assert JapaneseMorseCode.encode("") == ""
  end

  test "encoding with spaces between words" do
    original = "イロ ハニ ホヘト"
    morse = JapaneseMorseCode.encode(original)
    expected_morse = ".- .-.- / -... -.-. / -.. . ..-.."
    assert morse == expected_morse
  end

  test "decoding with spaces between words" do
    original = "イロ ハニ ホヘト"
    morse = JapaneseMorseCode.encode(original)
    decoded = JapaneseMorseCode.decode(morse)
    assert decoded == original
  end
end
