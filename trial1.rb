# Welcome to Sonic Pi

# Command R => Play
# Command S => Stop
# Shift Command S => Save


#Notes on keys from https://ledgernote.com/blog/interesting/musical-key-characteristics-emotions/

#a-minor: (A,C,E,G) Womanly, Graceful in character. Capable of soothing.

#g-major: (G,B,D,F#) Rustic, Idyllic, Poetic, Lyrical. Calm and satisfied. Tenderness and Gratitude.
#Friendship and Faith. It is a gentle key full of peace.

#b-minor: (B,D,F#,A) The key of patience, calmly waiting for fate, destiny,
#and the submission to providence and karma.


tempo = 55

#Part 1

in_thread do
  use_bpm tempo
  
  3.times :background do
    use_synth :dark_ambience
    
    play chord(:a, :minor7), attack: 3, release: 4
    sleep 7
    play invert_chord(chord(:a, :minor7), 1), attack: 3, release: 4
    sleep 7
    play invert_chord(chord(:a, :minor7), 2), attack: 3, release: 4
    sleep 7
    play invert_chord(chord(:a, :minor7), 3), attack: 3, release: 4
    sleep 7
    
    tempo += 1
  end
end

#bells
in_thread do
  use_synth :pretty_bell
  3.times :bells do
    
    play :A, attack: 2, release: 5, amp: 0.05
    sleep 7
    play :C, attack: 2, release: 5, amp: 0.05
    sleep 7
    play :E, attack: 2, release: 5, amp: 0.05
    sleep 7
    play :G, attack: 2, release: 5, amp: 0.05
    sleep 7
    sleep 28
  end
end

#harp
in_thread do
  use_synth  :pluck
  3.times :alternate do
    sleep 28
    play :A, attack: 2, release: 5, amp: 0.5
    sleep 7
    play :C, attack: 2, release: 5, amp: 0.5
    sleep 7
    play :E, attack: 2, release: 5, amp: 0.5
    sleep 7
    play :G, attack: 2, release: 5, amp: 0.5
    sleep 7
  end  
end

#melody
in_thread do
  use_synth :piano
  3.times :melody do
    play :A
    sleep 3
    play :A
    sleep 3
    play :A
    sleep 1
    
    play :A
    
    play :A
    
    play :A
    
    play :A
    
    play :A
    
    play :A
    
    
    
    
  end
  
  
  
  
end




