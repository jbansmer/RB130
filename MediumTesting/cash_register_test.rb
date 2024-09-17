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
end