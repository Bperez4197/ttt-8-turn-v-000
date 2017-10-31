board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  s = input.to_i
  s - 1
end

def position_taken?(board,index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || "O"
    return true
  end
end

def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end

def move(board, index, char = "O")
  valid_move?(board,index)
  puts "X" || "O"
end

def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
  index = input_to_index(i)
  if valid_move?(board, index)
      move(board, index, char)
  else
      puts "Sorry, that was an invalid move. Please enter 1-9:"
      turn(board)
end
  display_board(board)
end
