require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'name' do
    it 'has a name' do
      name = 'Rails'
      list = List.create(name: name)
      expect(list.name).to eq(name)
    end
  end
  
end
