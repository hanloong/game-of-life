require 'rspec'
require './game.rb'

describe 'Game of Life' do
  it "should have Cells" do
    cell = Cell.new
    expect(cell).not_to be_nil
  end

  it "should have a World" do
    world = World.new
    expect(world).not_to be_nil
  end
end

describe Cell do
  it "should have x and y position" do
    cell = Cell.new
    expect(cell.x).not_to be_nil
    expect(cell.y).not_to be_nil
  end

  it "should have position from constuctor" do
    cell = Cell.new(2,5)
    expect(cell.x).to eq(2)
    expect(cell.y).to eq(5)
  end

  it "should be dead by default" do
    cell = Cell.new
    expect(cell.alive).to be_false
  end

  it "should alive if create as so" do
    cell = Cell.new
    cell.resurrect
    expect(cell.alive).to be_true
  end
end
