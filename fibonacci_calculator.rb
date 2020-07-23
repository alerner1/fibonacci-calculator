require bigdecimal/util

def welcome
    puts "Welcome! This program calculates the Fibonacci sequence to however many numbers in the sequence you'd like."
    puts "To learn more about how the Fibonacci sequence is calculated, type \"info\"."
end

def prompt_user
    puts "Otherwise, enter the number of Fibonacci numbers to calculate:"
    gets.chomp
end

def info
    puts "The Fibonacci sequence begins with the numbers 0 and 1. Every subsequent number is calculated by adding the two before it in the sequence."
    puts ""
    puts "So, for example, the third number is 1 because 0 + 1 = 1, the fourth number is 2 because 1 + 1 = 2, and so on."
end

def input_type(sequence_length)
    if sequence_length === "info"
        info
        prompt_user
    elsif sequence_length.to_i
        calculate(sequence_length)
    else 
        puts "Sorry, that entry was invalid."
    end
end

def calculate(sequence_length)
end