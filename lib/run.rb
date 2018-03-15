require './lib/credit_check'
class RunnerFile
  def run
    puts "Please enter the credit card number for validation "\
    "(you can also (Q)uit at any time):\n"
    input = gets.chomp.downcase
    if input == 'q'
      puts "Have a nice day!\n"
      abort
    elsif input_valid?(input) == true
      creditcheck = CreditCheck.new(input)
      puts "\n#{creditcheck.output}"
    else
      puts "\nPlease enter a card number:"
    end
    run
  end

  def input_valid?(input)
    input.to_s.chars - %w[1 2 3 4 5 6 7 8 9 0] == [] && (input.to_s.chars.length == 15 || input.to_s.chars.length == 16)
  end
end
