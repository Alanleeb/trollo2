require 'rails_helper'

RSpec.describe Board, type: :model do

  describe 'name' do
    it 'has a name' do
      name = 'dpl'
      board = Board.create(name: name)
      expect(board.name).to eq(name)
    end
  end

end
