
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
  play :G4
  sleep 0.2
  play chord(:G4, :major)
  sleep 0.8
  play chord(:A4, :minor)
end

define :mate do
  play chord(:G4, :major)
  play chord(:C4, :minor)
  sleep 0.2
  play chord(:F4, :halfdim)
  
  sleep 0.8
  
  play chord(:G4, :major)
  play chord(:C4, :minor)
  sleep 0.2
  play chord(:F4, :halfdim)
  sleep 0.3
  play chord(:C4, :halfdiminished)
  sleep 0.2
  play chord(:Bb4, :halfdim)
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


game = [knight, rank6, file3,
        knight, rank4, file4,
        knight, rank6, file6,
        bishop, rank5, file2,
        knight, rank2, file3,
        bishop, rank5, file7,
        oo,
        oo,
        mate,
        
        ].tick
