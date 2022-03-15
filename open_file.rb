# frozen_string_literal: true

require 'active_support/core_ext/hash/deep_merge'
require 'yaml'

# Класс который открывает текстовые файлы и обрабатывает различны операции
class OpenFile
  # В этом методе формируем общий хэш, возвращающий всех  рэперов и их батлы
  def get_rappers_battles(file_name, rapper_name, data_battles)
    text =
      File.open("./rap_battles/#{file_name}", 'r:UTF-8', &:read)
    if data_battles.key?(rapper_name)
      value = data_battles[rapper_name]
      data_battles[rapper_name] = "#{value} TheEndofBattle #{text}"
    else
      data_battles[rapper_name] = "#{text} TheEndofBattle"
    end
    data_battles
  end

  # В этом методе формируем общий хэш, возвращающий или всех рэперов и их
  # количество неценцзурных слов(если выбор - gethash) или среднее количество
  # нецензурных слов на батл
  def get_count_bad_words(
    rapper_name,
    data_battles,
    data_count_bad_words,
    choose = 'gethash'
  )
    data_battles_raper = data_battles[rapper_name].to_s
    count_words = data_battles_raper.split.size
    bad_words = Psych.load_file('some.yml').split
    exists = data_battles_raper.split & bad_words
    count_bad_words = exists.size.to_i
    data_battles_raper = data_battles_raper.split(/Раунд.[0-9]|Раунд[0-9]/).size

    count_rounds_raper =
      if data_battles_raper <= 1
        1
      else
        data_battles_raper - 1
      end

    data_count_bad_words[rapper_name] = count_bad_words
    count_words_in_battle = count_words / count_rounds_raper

    case choose
    when 'gethash'
      data_count_bad_words
    when 'countWordsInRound'
      count_words_in_battle
    end
  end

  # Этот метод возращает хэш со всеми добавленными рэперами и количество их батлов
  def get_count_battles(rapper_name, data_battles, data_count_battles)
    text = data_battles[rapper_name]
    text = text.split(/TheEndofBattle/)
    count_battles = text.size
    data_count_battles[rapper_name] = count_battles
    data_count_battles
  end

  # Этот метод возвращает хэш указанного репера
  # с употребляемыми им словами и их количеством
  def get_count_repeat_words(data_battles, rapper_name)
    popular_words = %w[
      в из с у о к о до на по за но бы такой со над под при про без перед
      около и то все твой поэтому вот а как твои и это был ему его не я мы
      ты вы кто что мой ваш он она тебе тебя сам они сколько столько несколько
      где когда куда если было ну тут там свой так твоей нужен так мне хватит
      или чтобы или же еще зачем либо твоя была даже для чем была eё потому
      этот откуда почему меня никто theendofbattle потом ведь ни от чтоб
    ]
    data_battles_raper = data_battles[rapper_name]
    data_battles_raper = data_battles_raper.downcase.split(/, ?|\. |\n| |–|[0-9]|-|:/)
    data_battles_raper = data_battles_raper.reject(&:empty?)
    data_battles_raper.delete_if { |x| x == '.' }
    data_battles_raper.delete_if { |x| x == rapper_name }
    differ = data_battles_raper - popular_words
    repeat_words = {}
    differ.each { |words| repeat_words[words] = differ.count(words) }
    repeat_words = repeat_words.sort_by { |_word, count| count }.reverse.to_h
  end
end
