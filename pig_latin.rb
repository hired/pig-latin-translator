class String

  VOWELS = /a|e|i|o|u/i

  def to_pig_latin
    if self[0] =~ VOWELS
      self + 'yay'
    else
      pieces = self.split(VOWELS)
      first_consonant = pieces.first
      self[first_consonant.length..-1] + first_consonant + 'ay'
    end
  end

end