# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-20
# Description: U2 - Ultimate Object-Oriented Ruby Challenge

class BeerSong
  def verse(number)
    if number > 1
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} #{bottle_plural(number - 1)} of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(starting, ending)
    starting.downto(ending).map { |number| verse(number) }.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def bottle_plural(number)
    number == 1 ? "bottle" : "bottles"
  end
end