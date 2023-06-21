# Welcome to Sonic Pi v3.1

# The type of sound being used
use_synth :mod_pulse

# Bpm sets the tempo of the whole song
set :bpm , 100

# Defines the pawn piece as 'pawn'
# it plays a note when called
define :pawn do
  play :C4
  sleep 0.5
end

# Defines the knight piece as 'knight'
# it plays a note when called
define :knight do
  play :D4
  sleep 0.5
end

# Defines the bishop piece as 'bishop'
# it plays a note when called
define :bishop do
  play :E4
  sleep 0.5
end

# Defines the rook piece as 'rook'
# it plays a note when called
define :rook do
  play :F4
  sleep 0.5
end

# Defines the queen piece as 'queen'
# it plays a note when called
define :queen do
  play :G4
  sleep 0.5
end

# Defines the king piece as 'king'
# it plays a note when called
define :king do
  play :A4
  sleep 0.5
end

# Defines taking a piece as "x"
# it plays a note when called
define :x do
  play :A4
  sleep 0.125
  play chord(:G4, :major)
  sleep 0.5
end

# Defines castling move as "oo"
# it plays a note when called
define :oo do
  play :F4
  sleep 0.125
  play :A4
  sleep 0.5
end

# Defines long castling move as "ooo"
# it plays a note when called
define :ooo do
  play :F4
  sleep 0.125
  play chord(:A4, :major)
  sleep 0.5
end

# Defines check move as "check"
# it plays a note when called
define :check do
  play chord(:C5, :minor)
  sleep 0.125
  sleep 0.0625
  play chord(:F4, :diminished)
  sleep 0.5
end

# Defines checkmate move as "mate"
# it plays a note when called
define :mate do
  play chord(:C4, :minor)
  sleep 0.25
  play chord(:B4, :diminished)
  sleep 0.5
  play chord(:D4, :major)
  sleep 0.5
  play [:Fs4, :A4, :D5]
  sleep 0.5
  play [:A4, :D5, :Fs5]
  sleep 0.5
  play [:D5, :Fs5, :A5]
  sleep 0.5
  play chord(:D3, :major)
end

# Defines rank 1 as "rank1"
define :rank1 do
  play chord(:C4, :major)
  sleep 0.5
end

# Defines rank 2 as "rank2"
define :rank2 do
  play chord(:D4, :major)
  sleep 0.5
end

# Defines rank 3 as "rank3"
define :rank3 do
  play chord(:E4, :major)
  sleep 0.5
end

# Defines rank 4 as "rank4"
define :rank4 do
  play chord(:F4, :major)
  sleep 0.5
end

# Defines rank 5 as "rank5"
define :rank5 do
  play chord(:G4, :major)
  sleep 0.5
end

# Defines rank 6 as "rank6"
define :rank6 do
  play chord(:A4, :major)
  sleep 0.5
end

# Defines rank 7 as "rank7"
define :rank7 do
  play chord(:B4, :major)
  sleep 0.5
end

# Defines rank 8 as "rank8"
define :rank8 do
  play chord(:C5, :major)
  sleep 0.5
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
game = [knight, rank6, filec,
        knight, rank4, filed,
        knight, rank6, filef,
        bishop, rank5, fileb,
        knight, rank2, filec,
        bishop, rank5, fileg,
        oo,
        oo,
        mate,
        
        ].tick
