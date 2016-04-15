require "rspec"

RSpec.describe do
  # this will be evaluated for every scenario, even if not referenced
  let!(:a) { puts "let!(:a)" }

  # this runs before the `let!`
  before(:all) do
    puts "before all"
  end

  before(:each) do
    puts "before each"
  end

  # will be evaluated for each example, if referenced
  let(:b) { puts "setting :b" }

  it do
    b # this will evaluate :b
    puts "first example"
    expect(true).to be(true)
    b # this will use the cached :b
  end

  it do
    b # this will evaluate :b
    puts "second example"
    expect(true).to be(true)
  end
end
