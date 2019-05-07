require 'atm'

describe ATM do
  it 'checks for account balance to be zero by default' do
    atm = ATM.new
    expect(atm.balance).to eq 0
  end

  describe "#deposit" do
    it 'checks for balance after depositing money into atm' do
      atm = ATM.new
      atm.deposit(500)
      expect(atm.balance).to eq 500
    end
  end

  describe "#withdraw" do
    it 'checks for balance after withdrawing money from atm' do
      atm = ATM.new
      atm.deposit(500)
      atm.withdraw(200)
      expect(atm.balance).to eq 300
    end
  end
end