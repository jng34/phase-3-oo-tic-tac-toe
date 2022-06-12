class TicTacToe
    attr_accessor :board

    WIN_COMBINATIONS = [
        # horizontal combos
        [0,1,2], 
        [3,4,5],
        [6,7,8],
        # vertical combos
        [0,3,6],
        [1,4,7],
        [2,5,8],
        # diagonal combos
        [0,4,8],
        [2,4,6]
    ]

    def initialize
       @board = [" "," "," "," "," "," "," "," "," "] 
    end

    def display_board
        @board = ["X", "X", "X"]
    end

    def input_to_index(index_str)
        if !index_str
            ArgumentError
        else
            index = index_str.to_i - 1
        end
        index
    end

    def move(index, token="X")
        @board[index] = token
    end


end

# game = TicTacToe.new
# pp game.board.length