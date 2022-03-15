# frozen_string_literal: true

# Генерация окончаний слов в зависимости от их количетсва
class EndingGenerate
  def ending_battle(number)
    case number
    when 1
      ''
    when (2..4)
      'a'
    when (5..20 || 0)
      'ов'
    end
  end

  def ending_word(number)
    case number % 10
    when (0 || 5..9)
      ''
    when 1
      'o'
    when (2..4)
      'a'
    end
  end

  def ending_bad_word(number)
    case number
    when 0
      'нецензурных слов'
    when 1
      'нецензурное слово'
    when (2..4)
      'нецензурного слова'
    when (5..20)
      'нецензурных слов'
    end
  end
end
