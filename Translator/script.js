//The chess game directly copy and pasted directly from Chess.com with small adjustments to make it a string.
const game = '1. d4 d6 2. e3 c5 3. Nf3 cxd4 4. Nxd4 Nc6 5. c4 Nxd4 6. Qxd4 Nf6 7. Bd3 e5 8. Qc3 Be7 9. f3 O-O 10. Nd2 Be6 11. b3 d5 12. cxd5 Bxd5 13. e4 Bc6 14. Nc4 Nd7 15. Ba3 Bxa3 16. Nxa3 Nb6 17. O-O-O Qg5+ 18. Qd2 Qf6 19. g4 Rfd8 20. Rhf1 Rd6 21. h3 Rad8 22. Nc4 Nxc4 23. bxc4 Rxd3 24. Qxd3 Rxd3 25. Rxd3 h6 26. Rfd1 Kh7 27. Rd6 Qxf3 28. R6d3 Qxe4 29. Kd2 Qxc4 30. Rc3 Qb4 31. Rc1 Qb2+ 32. R1c2 Qb4 33. Kc1 Qf4+ 34. Kb2 a5 35. Ka3 Qb4#'

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
ranks.forEach(element => specialMovesAndpieces(element))
//Writes the finished translation into a easy copy and paste for the main program
document.write(specialMoves_Pieces)


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
    specialMoves_Pieces.push('oo')
  }
  else if(element.match(/[O]/)){
    specialMoves_Pieces.push('ooo')
  }
  //If the move is a check or checkmate, return 'check' or 'mate' respectively
  else if(element.match(/[+]/)){
    specialMoves_Pieces.push('check')
  }
  else if(element.match(/[#]/)){
    specialMoves_Pieces.push('mate')
  }
    //Turns all chess pieces into full name counterparts
  else if(element.match(/[p]/)){
    specialMoves_Pieces.push('pawn')                  
  }
  else if(element.match(/[B]/)){
    specialMoves_Pieces.push('bishop')               
  }
  else if(element.match(/[R]/)){
    specialMoves_Pieces.push('rook')                                 
  }
  else if(element.match(/[N]/)){
    specialMoves_Pieces.push('knight')                                  
  }
  else if(element.match(/[K]/)){
    specialMoves_Pieces.push('king')                                  
  }
  else if(element.match(/[Q]/)){
    specialMoves_Pieces.push('queen')                                    
  }
    //Push everything else along (files and ranks)
  else(
    specialMoves_Pieces.push(element)
  )
}
