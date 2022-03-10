class EndingGenerate
  def endingOfBattle(number)
    case number
    when 1
      ""
    when (2..4)
      "a"
    when (5..20 || 0)
      "ов"
    end
  end

  def endingOfWord(number)
    case number % 10
    when 1
      "o"
    when (2..4)
      "a"
    when (0 || 5..9)
      ""
    end
  end

  def endingOfBadWord(number)
    case number
    when 0
      "нецензурных слов"
    when 1
      "нецензурное слово"
    when (2..4)
      "нецензурного слова"
    when (5..20)
      "нецензурных слов"
    end
  end
end
