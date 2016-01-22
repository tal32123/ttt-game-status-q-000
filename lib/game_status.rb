# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

#board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [0,3,6],
  [0,4,8],
  [3,4,5],
  [6,7,8],
  [6,4,2],
  [1,4,7],
  [2,5,8]
  ]

win1 = WIN_COMBINATIONS[0]
win2 = WIN_COMBINATIONS[1]
win3 = WIN_COMBINATIONS[2]
win4 = WIN_COMBINATIONS[3]
win5 = WIN_COMBINATIONS[4]
win6 = WIN_COMBINATIONS[5]
win7 = WIN_COMBINATIONS[6]
win8 = WIN_COMBINATIONS[7]

#def won?(board, win1)
#  if board[win1[0]] == "X" && board [win1[1]] == "X" && board[win1[2]] == "X"
#    puts "Win1! #{win1}"
#end
#end

def won?(board)
  board[WIN_COMBINATIONS].each do |array|
#if array[0]=="x" && array[1]=="x" && array[2]=="x"
    #array.include?(["X", "X", "X"]) || array.include?(["O", "O", "O"])
    if board[array[0]] =="X" && board[array[1]] =="X" && board[array[2]] == "X"
  return array
  elsif board[array[0]] =="O" && board[array[1]] =="O" && board[array[2]] == "O"
  return array
else false
end
end
end
