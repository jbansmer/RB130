require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

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
    assert_equal("You've paid $50.", "You've paid $#{transaction.item_cost}.")
  end
end