# fibonacci sequence

# using iteration
def fibs(n)
  sequence = [0, 1]
  if n == 0 || n == 1 
    return [0] 
  elsif n == 2
    return [0, 1]
  else
    i = 2
    while sequence.length < n
      sequence[i] = (sequence[i - 1] + sequence[i - 2])
      i += 1 
    end
  end
  sequence.to_s
end

puts fibs(8)