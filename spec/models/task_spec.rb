require 'rails_helper'
RSpec.describe Task, type: :model do

  describe 'title' do
    it 'has a title' do
      title = 'Learn rails'
      task = Task.create(title: title)
      expect(task.title).to eq(title)
    end
  end

  describe 'description' do
    it 'has a description' do
      description = "First I need to do some tests"
      task = Task.create(description: description)
      expect(task.description).to eq(description)
    end
  end


end
