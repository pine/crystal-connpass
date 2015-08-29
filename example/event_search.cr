require "readline"
require "../src/connpass"

loop do
  keyword = Readline.readline("Keyword> ")

  if keyword.is_a? String
    keyword = keyword.chomp
    result = Connpass.event_search({ "keyword" => keyword })

    puts "All #{keyword} #{result.events.size} events found."
    puts

    result.events.each_with_index do |event, i|
      puts "#{i.succ.to_s.rjust(2)}: #{event.title}"
      puts "   #{event.catch}" if event.catch.to_s.size > 0
      puts "   会場: #{event.place}" if event.place.to_s.size > 0
      puts "   日時: #{event.started_at}" if event.started_at.to_s.size > 0
      puts
    end
  end
end
