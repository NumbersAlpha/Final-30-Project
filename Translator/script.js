//The chess game directly copy and pasted directly from Chess.com with small adjustments to make it a string.
const game = '1. d4 d5 2. c4 e6 3. e3 Bd6 4. Nc3 Nf6 5. Nf3 c6 6. Bd3 Nbd7 7. cxd5 cxd5 8. O-O b6 9. h3 Bb7 10. Nb5 a6 11. Nxd6+ Ke7 12. Nxb7 Qc7 13. Ne5 Qxb7 14. Nxd7 Qxd7 15. b3 g5 16. Ba3+ Ke8 17. Qf3 Rf8 18. Qxf6 Qe7 19. Bxe7 Rg8 20. Bd6 Ra7 21. Bxh7 Rf8 22. Bxf8 Kxf8 23. Rac1 Ra8 24. Qh8+ Ke7 25. Qxa8 Kf6 26. f4 Kg7 27. fxg5 Kxh7 28. Rxf7+ Kg6 29. Qg8+ Kh5 30. Rh7#'

//Splits each move and number into individual elements.
let split = game.split(' ')

//Adds pawn moves and changes castling for main program.
let pawns_and_castling = []
split.forEach(element => pawn_and_castle(element))
//console.log(pawns)

//Splits each character into individual elements.
let divide = []
pawns_and_castling.forEach(element => spliter(element))
//console.log(divide)

//Changes letters of files into names for main program.
let files = []
divide.forEach(element => file(element))
//console.log(files)

//Changes numbers of ranks into names for main program.
let ranks = []
files.forEach(element => rank(element))

//Changes N, B, R, Q, K, and p into full piece names and checks, checkmates, and castling into names for the main program.
let specialMoves_Pieces = []
ranks.forEach(element => specialMovesAndpieces(element
//Writes the finished translation into a easy copy and paste for the main program
document.write(special_moves)


function pawn_and_castle(element){
  //If the element contain a dot or in other words a move number, remove it.
  if(element.match(/[.]/)){
    
  }
  else if(element.match(/[O]/)){
    //If the move has an O or is castling move, push it depending if it is a queen-side or king-side castle.
   if(element.length == 3){
     pawns_and_castling.push('o')
   }
    else{
      pawns_and_castling.push('O')
    }
  }
    //If the move is not a knight, bishop, rook, queen, or king move, it has to be a pawn with everything else removed.
  else if(!element.match(/[NBRQK]/)){
    //Push the move with a 'p' for pawn attacted to it
    pawns_and_castling.push(`p${element}`)            
  }
    //All knight, bishop, rook, queen, and king moves are pushed
  else{
    pawns_and_castling.push(element)
  }
}

function spliter(element){
  //Make a temporary array that splits every move into indivdual characters
  let tempArray = (element.split(''))
  //Pushes all elements into a new array
  tempArray.forEach(element => divide.push(element))
}

function rank(element){
  //If the element is a number, then it is a rank
  if(element.match(/[1-8]/)){
    //Push the element with 'rank' attached to it
    ranks.push(`rank${element}`)
  }
  else{
    //Push everything else along with it
    ranks.push(element)
  }
}

function file(element){
  //If the element is a lowercase a to h, then it is a file 
  if(element.match(/[a-h]/)){
    //Push the element with 'file' attached to it
    files.push(`file${element}`)
  }
    //Push everything else
  else{
    files.push(element)
  }
}

function specialMovesAndpieces(element){
  //It if the element is a queen or king-side castle, return 'ooo' or 'oo' respectively
  if(element.match(/[o]/)){
    special_moves.push('oo')
  }
  else if(element.match(/[O]/)){
    special_moves.push('ooo')
  }
  //If the move is a check or checkmate, return 'check' or 'mate' respectively
  else if(element.match(/[+]/)){
    special_moves.push('check')
  }
  else if(element.match(/[#]/)){
    special_moves.push('mate')
  }
    //Turns all chess pieces into full name counterparts
  else if(element.match(/[p]/)){
    special_moves.push('pawn')                  
  }
  else if(element.match(/[B]/)){
    special_moves.push('bishop')               
  }
  else if(element.match(/[R]/)){
    special_moves.push('rook')                                 
  }
  else if(element.match(/[N]/)){
    special_moves.push('knight')                                  
  }
  else if(element.match(/[K]/)){
    special_moves.push('king')                                  
  }
  else if(element.match(/[Q]/)){
    special_moves.push('queen')                                    
  }
    //Push everything else along (files and ranks)
  else(
    special_moves.push(element)
  )
}
