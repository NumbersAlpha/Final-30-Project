const string = 'e4 e5 exd6 nf3 nc6'
let pawns = []
let split = string.split(' ')
split.forEach(element => pawn(element))
console.log(pawns)
//words.forEach(element => translation(element))
//console.log(words)

function pawn(element){
  if(element.length == 2){
    pawns.push(`p${element}`)
  }
  else if(element.length == 4){
    if(element.match(/[a-h]/)){
       pawns.push(`p${element}`)
    }
    else{
      pawns.push(`${element}`)
    }
  }
  else{
    pawns.push(element)
  }
}
function translation(element){
  if(element.match(/^[0-9]$/i)){

  }
  else if(element.match(/^[a-h]$/i)){
   
  }
  
}
