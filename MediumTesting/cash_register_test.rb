require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'
require 'stringio'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    cash_register = CashRegister.new(100)
    transaction = Transaction.new(50)
    transaction.amount_paid = 50
    assert_equal(150, cash_register.accept_money(transaction))
  end

  def test_change
    cash_register = CashRegister.new(100)
    transaction = Transaction.new(50)
    transaction.amount_paid = 60
    assert_equal(10, cash_register.change(transaction))
  end

  def test_give_receipt
    cash_register = CashRegister.new(100)
    transaction = Transaction.new(50)
    assert_output("You've paid $#{transaction.item_cost}.\n") do 
      cash_register.give_receipt(transaction)
    end
  end

  def test_prompt_for_payment
    transaction = Transaction.new(50)
    input = StringIO.new("50\n")
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal(50, transaction.amount_paid)
  end
end
