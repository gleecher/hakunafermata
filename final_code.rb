#Gannon Leech
#CSCI 3725 - Computational Creativity
#Mission 8 - Hakuna Fermata
#May 14th, 2021


tempo = 60


#throughout the song, I added this as a background which is supposed to simulate
#the sound of rain throughout the song.
in_thread do
  use_synth :pluck
  live_loop :rain1 do
    play [:A6, :C6, :E6, :G6].choose, amp: 0.25
    sleep [0.2, 0.23, 0.26, 0.3].choose
  end
end

in_thread do
  use_synth :pluck
  sleep 0.1
  live_loop :rain2 do
    play [:A6, :C6, :E6, :G6].choose, amp: 0.25
    sleep [0.2, 0.23, 0.26, 0.3].choose
  end
  
end

in_thread do
  
  #Meditative bell to set the stage of focus
  
  use_bpm tempo
  
  in_thread do
    sleep 10
    use_synth :pretty_bell
    2.times do
      play :C, attack: 3, release: 4, amp: 0.5
      sleep 9
    end
    play :C, attack: 4, release: 5
    sleep 12
  end
  
  sleep 40
  
  #Begin the arpeggios backing up the chords
  
  use_synth :pluck
  in_thread do
    
    3.times do
      
      play chord(:c, :major7), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 1), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 2), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 3), attack: 3, release: 4
      sleep 7
      
    end
  end
  
  in_thread do
    3.times do
      
      play_pattern_timed [:C5, :E5, :G5, :B5], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:E5, :G5, :B5, :C6], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:G5, :B5, :C6, :E6], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:B5, :C6, :E6, :G6], [1.75, 1.75, 1.75, 1.75]
    end
  end
  
  #Add in a second layer with the piano
  
  in_thread do
    use_synth :piano
    
    sleep 28
    3.times do
      
      play chord(:c, :major7), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 1), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 2), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 3), attack: 3, release: 4
      sleep 7
      
    end
  end
  
  in_thread do
    sleep 28
    use_synth :piano
    3.times do
      
      play_pattern_timed [:C5, :E5, :G5, :B5], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:E5, :G5, :B5, :C6], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:G5, :B5, :C6, :E6], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:B5, :C6, :E6, :G6], [1.75, 1.75, 1.75, 1.75]
    end
  end
  
  #Add in the final layer of bells
  
  in_thread do
    
    use_synth :pretty_bell
    sleep 56
    3.times do
      
      play chord(:c, :major7), attack: 3, release: 4, amp: 0.25
      sleep 7
      play invert_chord(chord(:c, :major7), 1), attack: 3, release: 4, amp: 0.25
      sleep 7
      play invert_chord(chord(:c, :major7), 2), attack: 3, release: 4, amp: 0.25
      sleep 7
      play invert_chord(chord(:c, :major7), 3), attack: 3, release: 4, amp: 0.25
      sleep 7
      
    end
  end
  
  in_thread do
    
    sleep 56
    use_synth :pretty_bell
    3.times do
      
      play_pattern_timed [:C5, :E5, :G5, :B5], [1.75, 1.75, 1.75, 1.75], amp: 0.25
      
      play_pattern_timed [:E5, :G5, :B5, :C6], [1.75, 1.75, 1.75, 1.75], amp: 0.25
      
      play_pattern_timed [:G5, :B5, :C6, :E6], [1.75, 1.75, 1.75, 1.75], amp: 0.25
      
      play_pattern_timed [:B5, :C6, :E6, :G6], [1.75, 1.75, 1.75, 1.75], amp: 0.25
    end
  end
  
  
  #Start the decension period, reverse arpeggios and reverse the order of
  #instruments
  
  in_thread do
    sleep 145
    use_synth :pretty_bell
    3.times do
      
      play invert_chord(chord(:c, :major7), 3), attack: 3, release: 4, amp: 0.2
      sleep 7
      play invert_chord(chord(:c, :major7), 2), attack: 3, release: 4, amp: 0.2
      sleep 7
      play invert_chord(chord(:c, :major7), 1), attack: 3, release: 4, amp: 0.2
      sleep 7
      play chord(:c, :major7), attack: 3, release: 4, amp: 0.2
      sleep 7
      
    end
  end
  
  in_thread do
    sleep 145
    use_synth :pretty_bell
    3.times do
      
      play_pattern_timed [:B6, :G6, :E6, :C6], [1.75, 1.75, 1.75, 1.75], amp: 0.2
      
      play_pattern_timed [:G6, :E6, :C6, :B5], [1.75, 1.75, 1.75, 1.75], amp: 0.2
      
      play_pattern_timed [:E6, :C6, :B5, :G5], [1.75, 1.75, 1.75, 1.75], amp: 0.2
      
      play_pattern_timed [:C6, :B5, :G5, :E5], [1.75, 1.75, 1.75, 1.75], amp: 0.2
      
      
    end
  end
  
  #next, add the piano in
  
  in_thread do
    
    use_synth :piano
    sleep 145
    sleep 28
    3.times do
      
      play invert_chord(chord(:c, :major7), 3), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 2), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 1), attack: 3, release: 4
      sleep 7
      play chord(:c, :major7), attack: 3, release: 4
      sleep 7
      
    end
  end
  
  in_thread do
    sleep 145
    sleep 28
    
    use_synth :piano
    3.times do
      
      play_pattern_timed [:B6, :G6, :E6, :C6], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:G6, :E6, :C6, :B5], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:E6, :C6, :B5, :G5], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:C6, :B5, :G5, :E5], [1.75, 1.75, 1.75, 1.75]
      
      
    end
  end
  
  #finally, back to the pluck for the symmetry
  
  in_thread do
    use_synth :pluck
    sleep 56
    sleep 145
    3.times do
      
      play invert_chord(chord(:c, :major7), 3), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 2), attack: 3, release: 4
      sleep 7
      play invert_chord(chord(:c, :major7), 1), attack: 3, release: 4
      sleep 7
      play chord(:c, :major7), attack: 3, release: 4
      sleep 7
      
    end
  end
  
  in_thread do
    
    use_synth :pluck
    sleep 56
    sleep 145
    
    3.times do
      
      play_pattern_timed [:B6, :G6, :E6, :C6], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:G6, :E6, :C6, :B5], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:E6, :C6, :B5, :G5], [1.75, 1.75, 1.75, 1.75]
      
      play_pattern_timed [:C6, :B5, :G5, :E5], [1.75, 1.75, 1.75, 1.75]
      
      
    end
  end
  
  #end as began, with the meditative bell
  
  sleep 275
  use_synth :pretty_bell
  2.times do
    play :C, attack: 3, release: 4, amp: 0.5
    sleep 9
  end
  play :C, attack: 4, release: 5
  sleep 12
end






