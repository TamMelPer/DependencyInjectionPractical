require 'note'

describe Note do
let(:formatter) {double :NoteFormatter}
  it "initializes with the formatter class" do
    note = Note.new("Monday", "Do Practical", formatter)
    allow(formatter).to receive(:format).and_return("Title: #{note.title}\n#{note.body}")
    expect(note.display).to eq ("Title: Monday\nDo Practical")
  end


end
