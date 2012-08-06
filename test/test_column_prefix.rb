require 'test/unit'

class ColumnPrefixTest < Test::Unit::TestCase
  def setup
    @entry = Entry.last
  end

  def test_attributes_match
    assert_equal @entry.title, @entry.entry_title
    @entry.title = "Edited title"
    assert_equal @entry.title, @entry.entry_title
  end
end
