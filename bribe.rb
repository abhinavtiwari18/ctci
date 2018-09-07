def minimumBribes(q)
  bribes = 0
  q.length.times do |index|
    real_index = q[index] -1
    if index < real_index
      if real_index - index <= 2
        bribes += real_index - index
      else
        
        p 'Too chaotic'
        break
      end
    end
  end
  p bribes
end