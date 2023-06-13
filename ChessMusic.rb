
# Welcome to Sonic Pi v3.1
use_synth :tech_saws
set :bpm , 100
define :p do
  play :C4
  sleep 0.5
end

define :n do
  play :D4
  sleep 0.5
end

define :b do
  play :E4
  sleep 0.5
end

define :r do
  play :F4
  sleep 0.5
end

define :q do
  play :G4
  sleep 0.5
end

define :k do
  play :A4
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

define :file1 do
  rank1
end

define :file2 do
  rank2
end

define :file3 do
  rank3
end

define :file4 do
  rank4
end

define :file5 do
  rank5
end

define :file6 do
  rank6
end

define :file7 do
  rank7
end

define :file8 do
  rank8
end


game = [n, rank6, file3,
        n, rank4, file4,
        n, rank6, file6,
        b, rank5, file2,
        n, rank2, file3,
        b, rank5, file7,
        oo,
        oo,
        mate,
        
        ].tick
