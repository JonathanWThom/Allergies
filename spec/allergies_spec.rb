require('rspec')
require('allergies')
require('pry')

describe("Fixnum#allergies") do
  it("Will output correct allergies for scores less than or equal to 1") do
    expect(1.allergies()).to(eq("eggs"))
  end

  it("Will output correct allergies for scores less than or equal to 3") do
    expect(3.allergies()).to(eq("peanuts eggs"))
  end

  it("Will output correct allergies for scores less than or equal to 7") do
    expect(7.allergies()).to(eq("shellfish peanuts eggs"))
  end

  it("Will output correct allergies for scores less than or equal to 15") do
    expect(15.allergies()).to(eq("strawberries shellfish peanuts eggs"))
  end

  it("Will output correct allergies for scores less than or equal to 31") do
    expect(31.allergies()).to(eq("tomatoes strawberries shellfish peanuts eggs"))
  end

  it("Will output correct allergies for scores less than or equal to 63") do
    expect(63.allergies()).to(eq("chocolate tomatoes strawberries shellfish peanuts eggs"))
  end

  it("Will output correct allergies for scores less than or equal to 127") do
    expect(127.allergies()).to(eq("pollen chocolate tomatoes strawberries shellfish peanuts eggs"))
  end

  it("Will output correct allergies for scores less than or equal to 255") do
    expect(255.allergies()).to(eq("cats pollen chocolate tomatoes strawberries shellfish peanuts eggs"))
  end

  it("Will output an error if you input more than 255") do
    expect(300.allergies()).to(eq("You cannot have an allergy score greater than 255. Seek help."))
  end
end
