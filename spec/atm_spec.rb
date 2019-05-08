require 'atm'

describe ATM do
  subject(:atm) { ATM.new }
  
  it 'checks for account balance to be zero by default' do
    expect(atm.current_balance).to eq 0
  end

  describe "#deposit" do
    it 'checks for balance after depositing money into atm' do
      atm.deposit(500)
      expect(atm.current_balance).to eq 500
    end
  end

  describe "#withdraw" do
    it 'checks for balance after withdrawing money from atm' do
      atm.deposit(500)
      atm.withdraw(200)
      expect(atm.current_balance).to eq 300
    end
  end

end