class Fixnum
  define_method(:allergies) do
    total = self
    output = ""
    until total == 0
      if total <= 1
        output += "eggs"
        total -=1
      elsif total <= 3
        output += "peanuts "
        total -=2
      elsif total <= 7
        output += "shellfish "
        total -= 4
      elsif total <= 15
        output += "strawberries "
        total -= 8
      elsif total <= 31
        output += "tomatoes "
        total -= 16
      elsif total <= 63
        output += "chocolate "
        total -= 32
      elsif total <= 127
        output += "pollen "
        total -= 64
      elsif total <= 255
        output += "cats "
        total -= 128
      else
        output += "You cannot have an allergy score greater than 255. Seek help."
        total -= self
      end
    end
    output
  end
end
