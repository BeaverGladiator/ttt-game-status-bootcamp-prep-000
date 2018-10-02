# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #middle row 
  [6,7,8], #bottom row
  [0,3,6], #left vert row 
  [1,4,7], #middle vert row
  [2,5,8], #right vert row
  [0,4,8], #top l - bot r diag 
  [2,4,6], #top r - bot l diag 
]

def won?(board)
  WIN_COMBINATIONS.all? do |win_combination|
    win_combination.any? do |win_position|
     position_taken?(board, win_position) ||  board(win_position) == "X" || board(win_position) == "O"
    end
  end
end


 