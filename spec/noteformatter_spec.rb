require 'noteformatter'

describe NoteFormatter do
  let(:note) { double('note', title: "Monday", body: "Do Practical") }
  # let(:note) {double :note}
  it "formats a note" do
    # allow(note).to receive(:title).and_return("Monday")
    # allow(note).to receive(:body).and_return("Do Practical")
    expect(subject.format(note)).to eq("Title: Monday\nDo Practical")
  end
end
