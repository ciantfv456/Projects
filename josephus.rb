def josephus(n=1)
	if (n < 1)
		puts "wrong input"
		return
	end
	deadOrAlive = []
	(1..n).each { |x| deadOrAlive << x }
	sword = 0
	until(deadOrAlive.length == 1)
		puts "#{deadOrAlive[sword]} kills #{deadOrAlive[sword+1]}"
		deadOrAlive.delete_at(sword+1)
		sword+=1
		if(deadOrAlive.length <= sword+1)
			sword -= deadOrAlive.length
		end
	end
	puts "Number #{deadOrAlive[0]} stayed alive"
end
print "Enter a number of people: "
josephus(gets.chomp.to_i)
