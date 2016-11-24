#!/usr/bin/env ruby

class Account
  attr_reader :name, :balance #Doucle déclaration sur une même ligne
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000) 
my_account.withdraw(11, 500_000)


my_account2 = Account.new("Arouna", 1_000) #a_bbb_ccc_d_ : Numérotaion avec undrscore
my_account.withdraw(1234, 500_000)
