with_fx :distortion do
  with_fx :reverb do
    live_loop :intro do
      use_synth :pluck
      play :D3
      sleep 0.25
      play :D4
      sleep 0.25
      play :A3
      sleep 0.25
      play :E3
      sleep 0.25
      play :G4
      sleep 0.25
      play :D3
      sleep 0.25
      play :FS4
      sleep 0.25
      play :D3
      sleep 0.25
    end
  end
end

sleep 4

with_fx :wobble do
  with_fx :reverb do
    live_loop :bass do
      use_synth :chipbass
      2.times do
        play [:A3, :D2]
        sleep 2
      end
      2.times do
        play [:C3, :G3]
        sleep 2
      end
      2.times do
        play [:G2, :D3]
        sleep 2
      end
      2.times do
        play [:A3, :D2]
        sleep 2
      end
    end
  end
end

sleep 16

live_loop :drum_bass do
  sample :drum_heavy_kick
  sleep 2
end

live_loop :drum_cymbal do
  sample :drum_cymbal_pedal
  sleep 2
end

sleep 16

live_loop :drum_tom do
  2.times do
    sample :drum_tom_lo_hard
    sleep 0.25
  end
  sleep 1.5
end
