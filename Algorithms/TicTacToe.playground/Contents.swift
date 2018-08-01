import UIKit

func ticTacToeGame(_ board: [[String]]) -> Bool {
    for i in 0..<3 {
        if board[i][0] != "" && board[i][0] == board[i][1] && board[i][0] == board[i][2] {
            return true
        }
        
        if board[0][i] != "" && board[0][i] == board[1][i] && board[0][i] == board[2][i] {
            return true
        }
    }
    
    if board[0][0] != "" && board[0][0] == board[1][1] && board[0][0] == board[2][2] {
        return true
    }
    
    if board[0][2] != "" && board[0][2] == board[1][1] && board[0][2] == board[2][0] {
        return true
    }
    
    return false
}


ticTacToeGame([["x", "", "o"], ["", "x", "0"], ["", "", "x"]])
