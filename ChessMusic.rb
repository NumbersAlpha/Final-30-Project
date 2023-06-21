
# Welcome to Sonic Pi v3.1
use_synth :tech_saws
set :bpm , 100
define :pawn do
  play :C4
  sleep 0.5
end

define :knight do
  play :D4
  sleep 0.5
end

define :bishop do
  play :E4
  sleep 0.5
end

define :rook do
  play :F4
  sleep 0.5
end

define :queen do
  play :G4
  sleep 0.5
end

define :king do
  play :A4
  sleep 0.5
end

define :x do
  play :A4
  sleep 0.125
  play chord(:G4, :major)
  sleep 0.5
end

define :oo do
  play :F4
  sleep 0.125
  play :A4
  sleep 0.5
end

define :ooo do
  play :F4
  sleep 0.125
  play chord(:A4, :major)
  sleep 0.5
end

define :check do
  play chord(:C5, :minor)
  sleep 0.125
  sleep 0.0625
  play chord(:F4, :diminished)
  sleep 0.5
end

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

define :rank1 do
  play chord(:C4, :major)
  sleep 0.5
end

define :rank2 do
  play chord(:D4, :major)
  sleep 0.5
end

define :rank3 do
  play chord(:E4, :major)
  sleep 0.5
end

define :rank4 do
  play chord(:F4, :major)
  sleep 0.5
end

define :rank5 do
  play chord(:G4, :major)
  sleep 0.5
end

define :rank6 do
  play chord(:A4, :major)
  sleep 0.5
end
define :rank7 do
  play chord(:B4, :major)
  sleep 0.5
end
define :rank8 do
  play chord(:C5, :major)
  sleep 0.5
end

define :filea do
  rank1
end

define :fileb do
  rank2
end

define :filec do
  rank3
end

define :filed do
  rank4
end

define :filee do
  rank5
end

define :filef do
  rank6
end

define :fileg do
  rank7
end

define :fileh do
  rank8
end


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
