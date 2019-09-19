def recursive_fib(num)
	return num if num < 2
	recursive_fib(num - 1) + recursive_fib(num - 2)
end

def iterative_fib(num)
	return num if num < 2
	a = 0
	b = 1
	count = 1
	while count < num do
		original_a = a
		a = b
		b = original_a + b
		count += 1
	end
	return b
end

puts "Enter a fibonacci element to check:"
index = gets.chomp.to_i
puts "Recursion returns #{recursive_fib(index)}"
puts "Iteration returns #{iterative_fib(index)}"


require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end