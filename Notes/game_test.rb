require 'minitest/autorun'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

# there are 2 players
  # player X and player O
# players take turns
  # on each turn you put in an X or an O
  # you have to put your X or O in an empty space
# the game ends when there are 3 X's or 3 O's in a row
  # that's 3 across or 3 top to bottom or 3 in a diagonal 
# or it's a tie if the board gets full

# nouns: board, player(?), turn
# verbs: put - might call that 'move'

  def setup
    @game = Game.new
  end

  def test_game_exists
    assert @game
  end

  def test_board_exists
    assert @game.board
  end

end

# the tests that look into the details of a board should be in their
# own class.
class TestBoard < MiniTest::Unit::TestCase
 
# there's a board
  # with 9 spaces
  # the board is 3x3
  # 3 spaces across, 3 top-to-bottom, 
  # has 3 rows and 3 columns
  # it looks like  | |
  #               -----
  #                | | 
  #               -----
  #                | |
  # so the columns and rows overlap
  # like, the first column, that's the first space from each of the rows

  # really the rows and columns aren't the most basic thing
  # the spaces are the *most* basic thing
  # and they're arranged into rows and columns
  
  def setup
    @board = Game.new.board
  end

  def test_board_has_nine_spaces
    assert_equal 9, @board.spaces.length
  end

  def test_board_spaces_are_in_three_rows
    assert_equal 3, @board.rows.length
  end

  def test_row_has_three_spaces
    @board.rows.each do |row|
      assert_equal 3, row.length
    end
  end

  def test_board_spaces_are_in_three_columns
    assert_equal 3, @board.columns.length
  end
end