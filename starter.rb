# Welcome to Sonic Pi

# Command R => Play
# Command S => Stop
# Shift Command S => Save

#Specify the tempo

#Background

in_thread do
  
  live_loop :background do
    use_synth :dark_ambience
    
    play chord(:c, :major7), attack: 3, release: 4
    sleep 7
    play invert_chord(chord(:c, :major7), 1), attack: 3, release: 4
    sleep 7
    play invert_chord(chord(:c, :major7), 2), attack: 3, release: 4
    sleep 7
  end
end

#bells
in_thread do
  use_synth :pretty_bell
  live_loop :bells do
    
    play :C, attack: 2, release: 5, amp: 0.05
    sleep 7
    play :E, attack: 2, release: 5, amp: 0.05
    sleep 7
    play :G, attack: 2, release: 5, amp: 0.05
    sleep 7
    sleep 21
  end
end

#alternate
in_thread do
  use_synth  :pluck
  live_loop :alternate do
    sleep 21
    play :C, attack: 2, release: 5, amp: 0.5
    sleep 7
    play :E, attack: 2, release: 5, amp: 0.5
    sleep 7
    play :G, attack: 2, release: 5, amp: 0.5
    sleep 7
  end
  
end


