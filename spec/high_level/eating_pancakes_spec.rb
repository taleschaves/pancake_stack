require_relative '../../pancake_house'

describe "different ways to eat pancakes" do
  let(:plate) { Stack.new }
  let(:pancake1) { Pancake.new('yum') }
  let(:pancake2) { Pancake.new('mmmm') }
  let(:pancake3) { Pancake.new('good') }

  it "allows a 'normal person' to eat pancakes" do
    expect(plate.count).to eq(0)

    # Served 3 pancakes
    plate.push(pancake1)
    plate.push(pancake2)
    plate.push(pancake3)

    expect(plate.count).to eq(3)

    # Eats 3 pancakes
    pancake_to_eat = plate.pop
    expect(pancake_to_eat).to eq(pancake3)
    pancake_to_eat.eat

    pancake_to_eat = plate.pop
    expect(pancake_to_eat).to eq(pancake2)
    pancake_to_eat.eat

    pancake_to_eat = plate.pop
    expect(pancake_to_eat).to eq(pancake1)
    pancake_to_eat.eat

    expect(plate.count).to eq(0)
  end

  xit "survives a 'crazy baby' eating pancakes" do
    # Tries to eat a pancake
    expect(plate.pop).to be_nil

    # Served 1 pancake
    plate.push(pancake1)

    # Eats a pancake
    pancake_to_eat = plate.pop
    expect(pancake_to_eat).to eq(pancake1)
    pancake_to_eat.eat

    # Tries to eat another pancake
    expect(plate.pop).to be_nil
  end

  xit "allows an 'indecisive person' to eat pancakes" do
    # Takes 3 pancakes
    plate.push(pancake1)
    plate.push(pancake2)
    plate.push(pancake3)

    # Reverses 2 of his pancakes
    held_pancake1 = plate.pop
    held_pancake2 = plate.pop

    plate.push(held_pancake1)
    plate.push(held_pancake2)

    # Reverses all of his pancakes
    plate2 = plate.reverse

    # Finally eats his pancakes
    pancake_to_eat = plate2.pop
    expect(pancake_to_eat).to eq(pancake1)
    pancake_to_eat.eat

    pancake_to_eat = plate2.pop
    expect(pancake_to_eat).to eq(pancake3)
    pancake_to_eat.eat

    pancake_to_eat = plate2.pop
    expect(pancake_to_eat).to eq(pancake2)
    pancake_to_eat.eat
  end
end
