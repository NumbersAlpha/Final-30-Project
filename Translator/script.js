const game = '1. e4 c6 2. d4 d5 3. exd5 cxd5 4. Nf3 Bf5 5. Bb5+ Nc6 6. O-O e6 7. Bf4 Nf6 8. Nc3 a6 9. Bxc6+ bxc6 10. Ne5 Qb6 11. b3 Bd6 12. Re1 O-O 13. Na4 Qa7 14. c3 c5 15. dxc5 Bxc5 16. Nxc5 Qxc5 17. Qd3 Bxd3'
  
let split = game.split(' ')

let pawns_and_castling = []
split.forEach(element => pawn_and_castle(element))
//console.log(pawns)

let divide = []
pawns_and_castling.forEach(element => spliter(element))
//console.log(divide)

let files = []
divide.forEach(element => file(element))
//console.log(files)

let ranks = []
files.forEach(element => rank(element))


let special_moves = []
ranks.forEach(element => special_pieces(element))
document.write(special_moves)

function pawn_and_castle(element){
  if(element.match(/[.]/)){
    
  }
  else if(element.match(/[O]/)){
   if(element.length == 3){
     pawns_and_castling.push('o')
   }
    else{
      pawns_and_castling.push('O')
    }
  }
  else if(!element.match(/[NBRQK]/)){
    pawns_and_castling.push(`p${element}`)            
  }
  else{
    pawns_and_castling.push(element)
  }
}

function spliter(element){
  let tempArray = (element.split(''))
  tempArray.forEach(element => divide.push(element))
}

function rank(element){
  if(element.match(/[1-8]/)){
    ranks.push(`rank${element}`)
  }
  else{
    ranks.push(element)
  }
}

function file(element){
  if(element.match(/[a-h]/)){
    files.push(`file${element}`)
  }
  else{
    files.push(element)
  }
}

function special_pieces(element){
  if(element.match(/[o]/)){
    special_moves.push('oo')
  }
  else if(element.match(/[O]/)){
    special_moves.push('ooo')
  }
  else if(element.match(/[+]/)){
    special_moves.push('check')
  }
  else if(element.match(/[#]/)){
    special_moves.push('mate')
  }
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
  else(
    special_moves.push(element)
  )
}


