# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-20
# Description: U2 - Ultimate Object-Oriented Ruby Challenge


class Bob
  def hey(remark)
    remark = remark.strip

    if remark.empty?
      'Fine. Be that way!'
    elsif remark.upcase == remark && remark.match(/[a-zA-Z]/)
      'Whoa, chill out!'
    elsif remark.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end
end