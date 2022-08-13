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

puts "Fibonacci using iteration #{fibs(8)}"

# using recursion
def fibs_rec(n)
  return [0] if n == 1 || n == 0
  return [0,1] if n == 2 
  sequence = fibs_rec(n - 1) 
  sequence << sequence[-2] + sequence[-1]
end

puts "Fibonacci using recursion #{fibs_rec(8)}"