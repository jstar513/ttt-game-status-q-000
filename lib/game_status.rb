# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
  ]

def won?(board)
  WIN_COMBINATIONS.select do |combination|
    if (board[combination[0]] == board[combination[1]]) && (board[combination[1]] == board[combination[2]])
      if combination.all? do |location|
        position_taken?(board, location)
        end
      return combination
      end
    end
else false
  end
end

