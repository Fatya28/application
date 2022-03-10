require 'active_support/core_ext/hash/deep_merge'
require "yaml"

class OpenFile
  #В этом методе формируем общий хэш, возвращающий всех  рэперов и их батлы
  def getHash(fileName, rapperName, currentHash)
    text =
      File.open("./rap_battles/#{fileName}", "r:UTF-8") do |f|
        value = f.read
      end

    if currentHash.has_key?(rapperName)
      value = currentHash["#{rapperName}"]
      currentHash["#{rapperName}"] = value + "TheEndofBattle" + text
    else
      currentHash["#{rapperName}"] = text + "TheEndofBattle"
    end
    return currentHash
  end

  #В этом методе формируем общий хэш, возвращающий или всех рэперов и их количетсво неценцурных слов(если выбор - gethash) или среднее количество нецензурных слов на батл
  def countBadWords(rapperName, nameHash, curentDataOfCountBadWords, choose = "gethash")
    allRoundsOfRaper = nameHash[rapperName].to_s
    countOfWords = allRoundsOfRaper.split.size
    words =  Psych.load_file("some.yml")
    bad_words =  words.split
    hash = allRoundsOfRaper.split
    exists = hash & bad_words
    countBadWords = exists.size.to_i
    allRoundsOfRaper = allRoundsOfRaper.split(/Раунд.[0-9]|Раунд[0-9]/).size
    allRoundsOfRaper <= 1 ? countRoundsOfRaper = 1 : countRoundsOfRaper = allRoundsOfRaper - 1
    curentDataOfCountBadWords[rapperName] = countBadWords

    if choose == "gethash"
      return curentDataOfCountBadWords
    elsif choose == "countWordsInRound"
      countWordsInBattle = countOfWords/countRoundsOfRaper
      return countWordsInBattle
    end
  end

  #Этот метод возращает хэш со всеми добавленными рэперами и количество их батлов
  def countBattles(rapperName, nameHash, currentDataOfCountBattles)
    text = nameHash[rapperName]
    text = text.split(/TheEndofBattle/)
    countBattles = text.size
    currentDataOfCountBattles[rapperName] = countBattles
    return currentDataOfCountBattles
  end

   #Этот метод возвращает хэш указанного репера с употребляемыми им словами и их количеством
  def countRepeatWords(dataAboutBattles, rapperName)
    popularWords = %w[
      в из с у о к о до на по за но бы такой со над под при про без перед около и то все твой
      поэтому вот а как твои и это был ему его не я мы ты вы кто что мой ваш он она тебе тебя
      сам они сколько столько несколько где когда куда если было ну тут там свой так твоей
      нужен так мне хватит или чтобы или же еще зачем либо твоя была даже для чем была eё
      потому этот откуда почему меня никто theendofbattle потом ведь
    ]
    value = rapperName
    newHash = dataAboutBattles[rapperName]
    newHash = newHash.downcase.split(/, ?|\. |\n| |–|[0-9]|-|:/)
    newHash = newHash.reject(&:empty?)
    newHash.delete_if{|x| x == "."}
    newHash.delete_if{|x| x == value}
    differ = newHash - popularWords
    hash = {}
    differ.each{|a| hash[a] = differ.count(a)}
    hash = hash.sort_by{|_key, value| value}.reverse.to_h
    return hash
  end
end
