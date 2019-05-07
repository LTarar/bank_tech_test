require 'atm'

describe ATM do
  it 'checks for account balance to be zero by default' do
    atm = ATM.new
    expect(atm.balance).to eq 0
  end
end