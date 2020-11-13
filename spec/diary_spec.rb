require 'diary.rb'

describe Diary do
  let(:entry) { double('entry', title: 'hard day', body: 'making progress now') }
  let(:entry_class) { double('entry_class', new: entry) }
  let(:diary) { Diary.new(entry_class) }

  describe '#index' do
    it 'prints all the added entry titles' do
      diary.add('hard day', 'making progress now')
      expect(diary.index).to eq('hard day')
    end
  end

  describe '#add' do
    it 'adds a title and body' do
    diary.add(entry.title, entry.body)
    expect(diary.entries[0]).to eq entry #testing the behavious of the add method
    end
  end
end
