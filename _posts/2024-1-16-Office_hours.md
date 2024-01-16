---
toc: true
comments: true
layout: post
title: Office Hours Hacks
type: hax
courses: {csa: {week: 6}}
---
### Topic:
- This question is a test of your knowledge of traversing 2D arrays.
- Traversing a 2D array involves visiting each element of the array in a systematic way, usually using nested loops to iterate over both rows and columns. The process ensures that you access and perform operations on every element within the 2D array.
- In this example, The first set of nested for loops sets each element in board to “O”. The next for loop starts val at 0 and increments by 1 until val is 4, when val is 5 the loop terminates. When val is even, board is not updated, so nothing happens when val is 0.
- When val is 1, row is assigned 1 and col is assigned 0. The boolean condition in the while loop is true, so board[1][0] is assigned “X”. Then col is incremented to 1 and row is decremented to 0 and board[0][1] is assigned “X”. Then col is incremented to 2 and row is decremented to -1 and the while loop terminates. When val is 2, nothing changes about board. When val is 3, row is assigned 3 and col is assigned 0.
- The boolean condition in the while loop is true, so board[3][0] is assigned “X”. Then col is incremented to 1 and row is decremented to 2 and board[2][1] is assigned “X”. Then col is incremented to 2 and row is decremented to 1 and board[1][2] is assigned “X”. Then col is incremented to 3 and row is decremented to 0 and board[0][3] is assigned “X”. Finally, col is incremented to 4 and row is decremented to -1 and the while loop terminates. When val is 4, nothing changes about board.

### Answer
Option E is correct because it accurately reflects the end product of the board after the code is executed.
The code fills the board with "O" initially, and then for each value of val from 0 to 4, it sets diagonal elements starting from the top right corner to "X" for even values of val. When val is odd, no changes are made to the board since the while loop condition fails immediately due to the decrement of col and row before the loop
### Popcorn Hack
Here is a similar example to the code with an intentional mistake for you to solve
String[][] board = new String[5][5];
for (int row = 0; row < 5; row++) {
    for (int col = 0; col < 5; col++) {
        board[row][col] = "O";
    }
}
for (int val = 0; val < 5; val++) {
    int row = val;
    int col = 4;
    while (col >= 0 && row >= 0) {
        if (val % 2 == 0) {
            board[row][col] = "X";
        } else {
            // Intentional mistake: This should be 'board[row][col] = "O";'
            // Students need to identify and fix this line.
            board[row][col] = "X"; // Incorrect assignment
        }
        col--;
        row--;
    }
}
The mistake is in the else block where it incorrectly assigns "X" instead of "O". Students should correct this to: board[row][col]="0"; in order to fix the code. The corrected code will alternate between "X" and "O" on the diagonals for each value of val