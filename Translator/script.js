const game = 'e4 e5 Nf3 f6 c3 Bd6 d4 Nh6 dxe5 fxe5 c4 Qe7 Nc3 b6 Bd3 a5 O-O Na6 Nb5 Nc5  Be3 Bb7  Bxc5 bxc5 Qa4 O-O-O  Qxa5 c6Na7+ Kb8 Qb6 Bc7 Nxc6+ dxc6 Qb4 cxb4  a3 bxa3 Rxa3 Bb6 b4 c5 bxc5 Bxc5 Rb3 Bb6 Rfb1 Rxd3 Rxb6 Rxf3 Rxb7+ Qxb7 Rxb7+ Kxb7 Kf1 Ra3 Ke2 Rc8 Kd2 Rxc4 Ke2 Rc2+ Kd1 Rca2 Kc1 Rxf2 Kb1 Raa2 Kc1 Rxg2 Kd1 Rxh2 Ke1 Ng4 Kf1 Ne3+ Kg1 Rhg2+ Kh1 Ra1#'
  
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
ranks.forEach(element => special(element))
document.write(special_moves)

function pawn_and_castle(element){
  if(element.match(/[O]/)){
   if(element.length == 3){
     pawns_and_castling.push('o')
   }
    else{
      pawns_and_castling.push('O')
    }
  }
  else if(element.length == 2){
    pawns_and_castling.push(`p${element}`)
  }
  else if(element.length == 4){
    if(element.match(/[a-h]/)){
       pawns_and_castling.push(`p${element}`)
    }
    else{
      pawns_and_castling.push(`${element}`)
    }
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

function special(element){
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
  else(
    special_moves.push(element)
  )
}
