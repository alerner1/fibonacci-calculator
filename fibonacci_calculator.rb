def welcome
    puts "Welcome! This program calculates the Fibonacci sequence to however many numbers in the sequence you'd like."
    puts "To learn more about how the Fibonacci sequence is calculated, type \"info\"."
end

def prompt_user
    puts "Enter the number of Fibonacci numbers to calculate:"
    gets.chomp
end

def info
    puts "\nThe Fibonacci sequence begins with the numbers 0 and 1. Every subsequent number is calculated by adding the two before it in the sequence."
    puts ""
    puts "So, for example, the third number is 1 because 0 + 1 = 1, the fourth number is 2 because 1 + 1 = 2, and so on."
end

def input_type(sequence_length)
    if sequence_length === "info"
        info
        input = prompt_user
        input_type(input)
    elsif sequence_length =~ /\D/ # contains anything not a number
        puts "Sorry, that entry was invalid."
    else 
        calculate(sequence_length.to_i)
    end
end

def calculate(sequence_length)
    fib_seq = [0, 1]
    first_num_to_sum = 0
    second_num_to_sum = 1
    i = 0
    sequence = "0, 1, "
    while i < sequence_length - 2
        sum = first_num_to_sum + second_num_to_sum
        fib_seq << sum
        first_num_to_sum = second_num_to_sum
        second_num_to_sum = sum
        i += 1
        sequence += "#{sum}, "
    end
    sequence = sequence.slice(0...-2)
    puts sequence
end

welcome
input = prompt_user
input_type(input)