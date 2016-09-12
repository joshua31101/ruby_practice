require_relative 'word_freq'
require 'test/unit'

class TestWordsFreq < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, word_freq([]))
  end
  def test_single_word
    assert_equal({"cat" => 1}, word_freq(["cat"]))
  end
  def test_two_diff_words
    assert_equal({"cat" => 1, "sat" => 1}, word_freq(["cat", "sat"]))
  end
  def test_two_words_with_adjacent_repeat
    assert_equal({"cat" => 2, "sat" => 1}, word_freq(["cat", "cat", "sat"]))
  end
  def test_two_words_with_non_adjacent_repeat
    assert_equal({"cat" =>2, "sat" => 1}, word_freq(["cat", "sat", "cat"]))
  end
end
