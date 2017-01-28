unless Dir.exist? "Notes"
	Dir.mkdir "Notes"
end

puts "Who are you interviewing? (one word please, timer starts when you press enter)"

fname = gets.chomp

somefile = File.open("Notes/#{fname}.txt", "a")

start = Time.new

	somefile.puts "Interview with: #{fname}"
	somefile.puts ""

	puts "What is your note? (type 'done' to exit)"
	puts ""
		note = gets.chomp
		finish = Time.new
	puts ""

	diff = finish - start

	min = diff / 60
	min = min.to_i
	sec = ((diff / 60) - min) * 60
	sec = sec.to_i

loop do

	puts "What is your note? (type 'done' to exit) Minutes:#{min} Seconds: #{sec}"
	puts ""
		note = gets.chomp
		finish = Time.new
	puts ""

	diff = finish - start

	min = diff / 60
	min = min.to_i
	sec = ((diff / 60) - min) * 60
	sec = sec.to_i

	somefile.puts "Minutes:#{min} Seconds: #{sec} (Total Seconds:#{diff})"
	somefile.puts "Notes:"
	somefile.puts "#{note}"
	somefile.puts ""
	somefile.puts ""

	break loop if note == 'done'
end

	somefile.close
