# Welcome to Sonic Pi v3.1

# The type of sound being used
use_synth :piano

# Bpm sets the tempo of the whole song
set :bpm , 200

# Defines the pawn piece as 'pawn'
# it plays a note when called
define :pawn do
  play :C5, release: 0.25
  sleep 0.25
end

# Defines the knight piece as 'knight'
# it plays a note when called
define :knight do
  play :D5, release: 0.5
  sleep 0.5
end

# Defines the bishop piece as 'bishop'
# it plays a note when called
define :bishop do
  play :E5, release: 0.5
  sleep 0.5
end

# Defines the rook piece as 'rook'
# it plays a note when called
define :rook do
  play :F5, release: 0.5
  sleep 0.5
end

# Defines the queen piece as 'queen'
# it plays a note when called
define :queen do
  play :G5, release: 0.5
  sleep 0.5
end

# Defines the king piece as 'king'
# it plays a note when called
define :king do
  play :A5, release: 1
  sleep 0.5
end

# Defines taking a piece as "x"
# it plays a note when called
define :x do
  use_synth :chipnoise
  play chord(:D1, :minor), release: 0.25
  sleep 0.1
  play chord(:C4, :minor), release: 0.25
  sleep 0.1
  play chord(:B4, :diminished), release: 0.5
  sleep 0.5
  use_synth :piano
end


# Defines castling move as "oo"
# it plays a note when called
define :oo do
  play chord(:F5, :major)
  sleep 0.125
  play [:C5, :A5, :F5]
  sleep 0.25
  play [:A5, :F5, :Cs6]
  sleep 0.5
end

# Defines long castling move as "ooo"
# it plays a note when called
define :ooo do
  play chord(:F5, :major)
  sleep 0.25
  play chord(:F5, :major)
  sleep 0.125
  play [:C5, :A5, :F5]
  sleep 0.25
  play [:A5, :F5, :Cs6]
  sleep 0.5
end

# Defines check move as "check"
# it plays a note when called
define :check do
  play chord(:Es5, :diminished7), release: 0.25
  sleep 0.375
end

# Defines checkmate move as "mate"
# it plays a note when called
define :mate do
  use_synth :zawa
  play chord(:As4, :minor), attack: 1, attack: 0.7
  sleep 1.65
  play chord(:C5, :minor), attack: 1.2, attack: 1.6
end

# Defines rank 1 as "rank1"
define :rank1 do
  play chord(:C4, :major), release: 0.25
  sleep 0.25
end

# Defines rank 2 as "rank2"
define :rank2 do
  play chord(:D4, :major), release: 0.125
  sleep 0.25
end

# Defines rank 3 as "rank3"
define :rank3 do
  play chord(:E4, :major), release: 0.5
  sleep 0.5
end

# Defines rank 4 as "rank4"
define :rank4 do
  play chord(:F5, :major), release: 0.25
  sleep 0.5
end

# Defines rank 5 as "rank5"
define :rank5 do
  play chord(:G5, :major), release: 0.25
  sleep 0.5
end

# Defines rank 6 as "rank6"
define :rank6 do
  play chord(:A4, :major), release: 0.5
  sleep 0.5
end

# Defines rank 7 as "rank7"
define :rank7 do
  play chord(:B4, :major), release: 0.125
  sleep 0.25
end

# Defines rank 8 as "rank8"
define :rank8 do
  play chord(:C5, :major), release: 0.25
  sleep 0.25
end

# Defines file A as "filea"
define :filea do
  rank1
end

# Defines file B as "fileb"
define :fileb do
  rank2
end

# Defines file C as "filec"
define :filec do
  rank3
end

# Defines file D as "filed"
define :filed do
  rank4
end

# Defines file E as "filee"
define :filee do
  rank5
end

# Defines file F as "filef"
define :filef do
  rank6
end

# Defines file G as "fileg"
define :fileg do
  rank7
end

# Defines file H as "fileh"
define :fileh do
  rank8
end

# This is the array that holds all the chess
# moves calling each one individually to play a
# note.
# The moves are taken from a translator
game = [
  pawn,filed,rank3,pawn,filed,rank5,pawn,filee,rank4,pawn,filee,rank5,bishop,filee,rank3,pawn,rank6,knight,filef,rank6,knight,filec,rank3,pawn,rank4,pawn,filed,rank4,pawn,rank1,knight,filed,rank5,pawn,filed,x,filee,rank3,knight,x,filef,rank6,check,queen,x,filef,rank6,pawn,filef,rank3,bishop,fileg,rank4,pawn,filef,x,fileg,rank4,pawn,rank2,queen,filef,rank2,mate
  
].tick
