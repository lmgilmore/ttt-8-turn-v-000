def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
 
  puts "Please enter 1-9:"
  
  input=gets.strip
  index=input_to_index(input)
 
  if !valid_move?(board, index) && !position_taken?(board, index)
    puts "Invalid move.  Please choose again."
    display_board(board)
    turn(board)
    until !valid_move?(board, index) == true && !position_taken?(board, index) == true
    end
  end

  move(board, index, char="X")
  display_board(board)
end

def input_to_index(input)
  
  input = input.to_i
  index = input - 1
end

def move (board, index, char="X")
  
  board[index] = char
end

def valid_move?(board, index)
  
  index.between?(0, 8)
  
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index=[0, 1, 2, 3, 4, 5, 6, 7, 8])
  
  value = board[index]
 
  if value == " " || value == "" || value == nil
    return false
  end
  
  if value == "X" || value == "O"
    return true
  end
end
