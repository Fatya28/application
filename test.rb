# frozen_string_literal: true

require './open_file'
require './endings'
require 'yaml'

# XXX/ Этот код необходим только при использовании русских букв
# (http://ruby.qkspace.com/windows-problema-s-kodirovkoy-russkimi-bukvami)
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [$stdin, $stdout].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

raper = OpenFile.new

hash_empty = {}

data_battles = raper.get_rappers_battles(
  "(Pra(Killa'Gramm) против Obe 1 Kanobe (VERSUS_MAIN EVENT СЕЗОН 2)",
  "Pra(Killa'Gramm)",
  hash_empty
)

data_battles = raper.get_rappers_battles(
  '13_47 против Лехи Медь (VERSUS BATTLE СЕЗОН 4)',
  '13_47',
  data_battles
)

data_battles = raper.get_rappers_battles(
  '1917 против Palmdropov (VERSUS FRESH BLOOD 4) Отбор',
  '1917',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Артем Лоик против ГИГА (RAP SOX BATTLE)',
  'Артем Лоик',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Артем Лоик против Galat (VERSUS BATTLE СЕЗОН 3)',
  'Артем Лоик',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Артема Лоика против Хохла (VERSUS BATTLE СЕЗОН 2)',
  'Артем Лоик',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Артема Татищевского против Три Ко Пюшона (VERSUS BATTLE СЕЗОН 2)',
  'Артем Татищевский',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Басота против Meowizzy (VERSUS BATTLE СЕЗОН 1)',
  'Басота',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Басоты против Drago (VERSUS BETTLE СЕЗОН 2)',
  'Басота',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Браги против Микси (VERSUS_ FRESH BLOOD 4) Этап 1',
  'Браги',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Браги против OBJECT (VERSUS FRESH BLOOD 4) Отбор',
  'Браги',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Брол против Just (VERSUS BATTLE СЕЗОН 1)',
  'Брол',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Брол VS Rokki Roketto (VERSUS BETTLE СЕЗОН 2)',
  'Брол',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Букер против Млечного (VERSUS FRESH BLOOD 2)',
  'Букер',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Букер против ХХОС (VERSUS FRESH BLOOD 2)',
  'Букер',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Букера против Замая (VERSUS BPM)',
  'Букер',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Букера против Rickey F (VERSUS FRESH BLOOD 2)',
  'Букер',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Вити Classic'a  против Хохла (VERSUS_ MAIN EVENT 2)",
  'Витя Classic',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Витя CLassic против СД (VERSUS BPM)',
  'Витя Classic',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Витя Classic против MickeyMouse (VERSUS BPM)',
  'Витя Classic',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Галата против Хохла (VERSUS BATTLE СЕЗОН 1)',
  'Галата',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Гарри Топор против Billy Milligan'а  (VERSUS BATTLE СЕЗОН 1)",
  'Гарри Топор',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Гарри Топор против Rickey F (VERSUS BPM)',
  'Гарри Топор',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Гарри Топора против Типси Типа (VERSUS BATTLE СЕЗОН 3)',
  'Гарри Топор',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Гарри Топора против CZAR (VERSUS BATTLE СЕЗОН 1)',
  'Гарри Топор',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Гарри Топора против Noiza MC (VERSUS BATTLE СЕЗОН 1)',
  'Гарри Топор',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Гарри Топора против ST (VERSUS BATTLE СЕЗОН 2)',
  'Гарри Топор',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'ГИГА  против Артем Лоик (RAP SOX BATTLE)',
  'ГИГА',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Гнойный против Эрнесто Заткнитесь (SLOVOSPB VS VERSUS)',
  'Гнойный',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Гнойный aka Слава КПСС VS Oxxxymiron (VERSUS VS SLOVOSPB)',
  'Гнойный',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Грязный Рамирес против Энди Картрайт (VERSUS BATTLE СЕЗОН 4)',
  'Грязный Рамирес',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Джарахов против Ларина (VERSUS BPM)',
  'Джарахов',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Дима Гамбит против Obe 1 Kanobe  (VERSUS BETTLE СЕЗОН 2)',
  'Дима Гамбит',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Династ против Miles (VERSUS FRESH BLOOD 4) Этап 1',
  'Династ',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Династ против Paragrin (VERSUS FRESH BLOOD 4) Отбор',
  'Династ',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Дуни против Oxxxymirona (VERSUS_MAIN EVENT 2)',
  'Дуня',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Заебатсу против Илья Мирный (SLOVOSPB VS VERSUS)',
  'Заебатсу',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Дуня против Кореш (VERSUS BATTLE СЕЗОН 3)',
  'Дуня',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Замай против СД (VERSUS BATTLE СЕЗОН 4)',
  'Замая',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Замая против Букера  (VERSUS BPM)',
  'Замая',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Ильи Мирного против Эрнесто Заткнитесь (VERSUS_ FRESH BLOOD)',
  'Илья Мирный',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Ильи Мирного vs Mytee Dee (VERSUS_ FRESH BLOOD)',
  'Илья Мирный',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Казанский против Sector (VERSUS FRESH BLOOD 4) Отбор',
  'Казанский',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Кореш против Дуня (VERSUS BATTLE СЕЗОН 3)',
  'Кореш',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Крип-А-Крип против Billy Milligan (VERSUS_MAIN EVENT СЕЗОН 2)',
  'Крип-А-Крип',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Крип-А-Крип против Oxxxymiron  (VERSUS BATTLE СЕЗОН 1)',
  'Крип-А-Крип',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Ларина против Джарахова (VERSUS BPM)',
  'Ларина',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Ларина против Хованского (VERSUS BATTLE СЕЗОН 3)',
  'Ларина',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Леха Медь против 13_47 (VERSUS BATTLE СЕЗОН 4)',
  'Леха Медь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Леха Медь против Эмио Афишл (VERSUS BATTLE СЕЗОН 3)',
  'Леха Медь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Леха Медь против Abbalbisk (SLOVOSPB VS VERSUS)',
  'Леха Медь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Леши GS против Lodoss (VERSUS_ FRESH BLOOD)',
  'Леши GS',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Лоика против Ярмака _ RAP BATTLE',
  'Лоика',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'ЛСП против Meowizzy (VERSUS BATTLE СЕЗОН 3)',
  'ЛСП',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Майти Ди против МЦ Похоронил (VERSUS BATTLE СЕЗОН 4)',
  'Майти Ди',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Майти Ди против Edik_Kingsta (VERSUS VS SLOVOSPB)',
  'Майти Ди',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Марины Кацубы против Drago (VERSUS BATTLE СЕЗОН 3)',
  'Марины Кацубы',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Микси против Браги (VERSUS_ FRESH BLOOD 4) Этап 1',
  'Микси',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Микси против J.Makonnen (VERSUS FRESH BLOOD 4) Отбор',
  'Микси',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Млечного против Drago (VERSUS BPM)',
  'Млечный',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'МЦ Похоронил против Сын Проститутки (VERSUS FRESH BLOOD 3)',
  'МЦ Похоронил',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'МЦ Похоронил против Teeraps (VERSUS FRESH BLOOD 3)',
  'МЦ Похоронил',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Пиэм против N'rage (VERSUS FRESH BLOOD 4) Этап 1",
  'Пиэм',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Подземный Принц (Хатт) против Jubilee (VERSUS BATTLE СЕЗОН 1)',
  'Подземный Принц (Хатт)',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Птаха против Guf (VERSUS BATTLE СЕЗОН 4)',
  'Птаха',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Саморез & МС MoonStar против John rai & Xoxoл (VERSUS BATTLE СЕЗОН 1)',
  'Саморез & МС MoonStar',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Саша Скул против John Rai (VERSUS BETTLE СЕЗОН 2)',
  'Саша Скул',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'СД  против Замай (VERSUS BATTLE СЕЗОН 4)',
  'СД',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'СД  против Johnyboy (VERSUS BATTLE СЕЗОН 1)',
  'СД',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'СД против Витя CLassic (VERSUS BPM)',
  'СД',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'СД против Хайда (VERSUS BATTLE СЕЗОН 1)',
  'СД',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "СД против Chet'а (VERSUS_ MAIN EVETN СЕЗОН 2)",
  'СД',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Соня Мармеладова aka Гнойный против Rickey F (VERSUS BPM)',
  'Гнойный',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Сын Проститутки против МЦ Похоронил (VERSUS FRESH BLOOD 3)',
  'Сын Проститутки',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Сявы против Lil Dik (VERSUS BATTLE СЕЗОН 4)',
  'Сявы',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Типси Типа против Гарри Топора  (VERSUS BATTLE СЕЗОН 3)',
  'Типси Типа',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Тот самый Коля против Эрнесто Заткнитесь (VERSUS BATTLE СЕЗОН 1)',
  'Тот самый Коля',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Хайда против СД (VERSUS BATTLE СЕЗОН 1)',
  'Хайда',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Хип-хоп одинокой старухи против Д. Фреда (VERSUS FRESH BLOOD 2)',
  'ХХОС',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Хованского против Ларина (VERSUS BATTLE СЕЗОН 3)',
  'Хованский',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Хохла против Артема Лоика (VERSUS BATTLE СЕЗОН 2)',
  'Хохла',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Хохла против Вити Classic'a (VERSUS_ MAIN EVENT 2)",
  'Хохла',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Хохла против Галата (VERSUS BATTLE СЕЗОН 1)',
  'Хохла',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'ХХОС против Alphavite (VERSUS BPM)',
  'ХХОС',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'ХХОС против Rickey F (VERSUS FRESH BLOOD 2)',
  'ХХОС',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Электромышь против Teeraps (VERSUS FRESH BLOOD 3)',
  'Электромышь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Электромышь против tvoigreh (VERSUS FRESH BLOOD 3)',
  'Электромышь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Эль против Punkteer (VERSUS FRESH BLOOD 4) Отбор',
  'Эль',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Эмио Афишл против Леха Медь (VERSUS BATTLE СЕЗОН 3)',
  'Эмио Афишл',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Эмио Афишл против Giga 1 (VERSUS BPM)',
  'Эмио Афишл',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Энди Картрайт против Грязный Рамирес (VERSUS BATTLE СЕЗОН 4)',
  'Энди Картрайт',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Энди Картрайт против ATL (VERSUS BATTLE СЕЗОН 1)',
  'Энди Картрайт',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Эрнесто Заткнитесь против Гнойного (SLOVOSPB VS VERSUS)',
  'Эрнесто Заткнитесь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Эрнесто Заткнитесь против Ильи Мирного (VERSUS_ FRESH BLOOD)',
  'Эрнесто Заткнитесь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Эрнесто Заткнитесь против Тот самый Коля (VERSUS BATTLE СЕЗОН 1)',
  'Эрнесто Заткнитесь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Эрнесто Заткнитесь против Alphavit'a  (VERSUS_ FRESH BLOOD)",
  'Эрнесто Заткнитесь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Эрнесто Заткнитесь VS Mytee Dee (VERSUS_ FRESH BLOOD)',
  'Эрнесто Заткнитесь',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Ярмак против Артема Лоика _ RAP BATTLE',
  'Ярмак',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'D.Masta против ST (VERSUS ALL STARS)',
  'D.Masta',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Abbalbisk  против Леха Медь (SLOVOSPB VS VERSUS)',
  'Abbalbisk',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Alphavite против ХХОС (VERSUS BPM)',
  'Alphavite',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Alphavite против Mytee Dee (VERSUS_ FRESH BLOOD)',
  'Alphavite',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'ATL против Энди Картрайт (VERSUS BATTLE СЕЗОН 1)',
  'ATL',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Bes против Meowizzy (VERSUS_MAIN EVENT СЕЗОН 1)',
  'Bes',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Billy Milligan'а против Гарри Топора  (VERSUS BATTLE СЕЗОН 1)",
  "Billy Milligan'а",
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Billy Milligan против Крип-А-Крип (VERSUS_MAIN EVENT СЕЗОН 2)',
  "Billy Milligan'а",
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Chet'а против СД (VERSUS_ MAIN EVETN СЕЗОН 2)",
  "Chet'а",
  data_battles
)

data_battles = raper.get_rappers_battles(
  'CZAR против Гарри Топора (VERSUS BATTLE СЕЗОН 1)',
  'CZAR',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Dizaster против Oxxxymirona (KOTD) _ RUS',
  'Dizaster',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Dom1no против Walkie (VERSUS BPM)',
  'Dom1no',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Drago против Басоты (VERSUS BETTLE СЕЗОН 2)',
  'Drago',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Drago против Марины Кацубы (VERSUS BATTLE СЕЗОН 3)',
  'Drago',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Drago против Млечного (VERSUS BPM)',
  'Drago',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Drago против Юли KIWI (VERSUS VS SLOVOSPB)',
  'Drago',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Drago против MC No Limit (VERSUS BPM)',
  'Drago',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Drago против Mufasah (VERSUS BPM)',
  'Drago',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Edik_Kingsta против Майти Ди (SLOVOSPB VS VERSUS)',
  'Edik_Kingsta',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Galat  против Yanix (VERSUS BATTLE СЕЗОН 1)',
  'Галата',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Galat против Артем Лоик (VERSUS BATTLE СЕЗОН 3)',
  'Галата',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Galat против Mozee Montana (VERSUS BPM)',
  'Галата',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Galata против D.Masta (VERSUS BATTLE СЕЗОН 3)',
  'Галата',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Giga 1 против Эмио Афишл (VERSUS BPM)',
  'ГИГА',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Guf против Птаха (VERSUS BATTLE СЕЗОН 4)',
  'Guf',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Heavy против Ruskey (VERSUS BATTLE СЕЗОН 1)',
  'Heavy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'I1 против Meowizzy (VERSUS BATTLE СЕЗОН 1)',
  'I1',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'J.Makonnen против Микси (VERSUS FRESH BLOOD 4) Отбор',
  'J.Makonnen',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'J.Makonnen против Paragrin (VERSUS FRESH BLOOD 4) Этап 1',
  'J.Makonnen',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'John rai & Xoxoл против Саморез & МС MoonStar (VERSUS BATTLE СЕЗОН 1)',
  'John rai & Xoxoл',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'John Rai против Саша Скул (VERSUS BETTLE СЕЗОН 2)',
  'John Rai',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Johnyboy против СД (VERSUS BATTLE СЕЗОН 1)',
  'Johnyboy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Johnyboy против Jubilee (VERSUS BETTLE СЕЗОН 2)',
  'Johnyboy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Johnyboy'a против Oxxxymiron'a (VERSUS BATTLE СЕЗОН 3)",
  'Johnyboy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Jubilee против Подземный Принц (Хатт) (VERSUS BATTLE СЕЗОН 1)',
  'Jubilee',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Jubille против Johnyboy  (VERSUS BETTLE  СЕЗОН 2)',
  'Jubilee',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Just против Брола (VERSUS BATTLE СЕЗОН 1)',
  'Just',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "LeTai против N'rage (VERSUS FRESH BLOOD 4) Отбор",
  'LeTai',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'LeTai против Sawyer (VERSUS FRESH BLOOD 4) Этап 1',
  'LeTai',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Lil Dik против Сявы (VERSUS BATTLE СЕЗОН 4)',
  'Lil Dik',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Lodoss против Леши GS  (VERSUS_ FRESH BLOOD)',
  'Lodoss',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'MC No Limit против Drago (VERSUS BPM)',
  'MC No Limit',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Meowizzy против Басота (VERSUS BATTLE СЕЗОН 1)',
  'Meowizzy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Meowizzy против ЛСП (VERSUS BATTLE СЕЗОН 3)',
  'Meowizzy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Meowizzy против Bes (VERSUS_MAIN EVENT СЕЗОН 1)',
  'Meowizzy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Meowizzy против I1 (VERSUS BATTLE СЕЗОН 1)',
  'Meowizzy',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'MickeyMouse против Витя Classic (VERSUS BPM)',
  'MickeyMouse',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Miles против Sawyer (VERSUS_ FRESH BLOOD 4) Отбор',
  'Miles',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'MoonStara против Narek (VERSUS FRESH BLOOD 2)',
  'MoonStara',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "MoonStara против Sin'a (VERSUS_ FRESH BLOOD 2)",
  'MoonStara',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Mozee Montana против Галата (VERSUS BPM)',
  'Mozee Montana',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Mufasah против Drago (VERSUS BPM)',
  'Mufasah',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Mufasah против Redo (VERSUS BPM)',
  'Mufasah',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Mytee Dee против Alphavite (VERSUS_ FRESH BLOOD)',
  'Mytee Dee',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Mytee Dee против Niggarex’а (VERSUS_ FRESH BLOOD)',
  'Mytee Dee',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Mytee Dee против Pitty (VERSUS_ FRESH BLOOD)',
  'Mytee Dee',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Mytee Dee vs Ильи Мирного (VERSUS_ FRESH BLOOD)',
  'Mytee Dee',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Mytee Dee VS Эрнесто Заткнитесь (VERSUS_ FRESH BLOOD)',
  'Mytee Dee',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "N'rage против Пиэм (VERSUS FRESH BLOOD 4) Этап 1",
  "N'rage",
  data_battles
)
data_battles = raper.get_rappers_battles(
  "N'rage против LeTai (VERSUS FRESH BLOOD 4) Отбор",
  "N'rage",
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Niggarex против Mytee Dee (VERSUS_ FRESH BLOOD)',
  'Niggarex',
  data_battles
)
data_battles = raper.get_rappers_battles(
  'Noiza MC против Гарри Топора (VERSUS BATTLE СЕЗОН 1)',
  'Noiza MC',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Obe 1 Kanobe против (Pra(Killa'Gramm) (VERSUS_MAIN EVENT СЕЗОН 2)",
  'Obe 1 Kanobe',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Obe 1 Kanobe против (Pra(Killa'Gramm) (VERSUS_MAIN EVENT СЕЗОН 2)",
  'Obe 1 Kanobe',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Obe 1 Kanobe против Гарри Топор (VERSUS BATTLE СЕЗОН 4)',
  'Obe 1 Kanobe',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Obe 1 Kanobe против Дима Гамбит (VERSUS BETTLE СЕЗОН 2)',
  'Obe 1 Kanobe',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'OBJECT против Браги (VERSUS FRESH BLOOD 4) Отбор',
  'OBJECT',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Oxxxymiron против Dizaster (KOTD) _ RUS',
  'Oxxxymiron',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Oxxxymiron против ST (VERSUS BATTLE СЕЗОН 3)',
  'Oxxxymiron',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Oxxxymiron VS Гнойный aka Слава КПСС (VERSUS VS SLOVOSPB)',
  'Oxxxymiron',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Oxxxymiron'a против Крип-А-Крип  (VERSUS BATTLE СЕЗОН 1)",
  'Oxxxymiron',
  data_battles
)

data_battles = raper.get_rappers_battles(
  'Oxxxymirona против Дуни (VERSUS_MAIN EVENT 2)',
  'Oxxxymiron',
  data_battles
)

data_battles = raper.get_rappers_battles(
  "Oxxxymirona против Johnyboy'a (VERSUS BATTLE СЕЗОН 3)",
  'Oxxxymiron',
  data_battles
)

hash_empty = {}

data_count_bad_words = raper.get_count_bad_words("Pra(Killa'Gramm)", data_battles, hash_empty)
data_count_bad_words = raper.get_count_bad_words('13_47', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('1917', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Артем Лоик', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Артем Татищевский', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Басота', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Браги', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Брол', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Букер', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Витя Classic', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Галата', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Гарри Топор', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('ГИГА', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Гнойный', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Грязный Рамирес', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Джарахов', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Дима Гамбит', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Династ', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Дуня', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Заебатсу', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Замая', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Илья Мирный', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Казанский', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Кореш', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Крип-А-Крип', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Ларина', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Леха Медь', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Леши GS', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Лоика', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('ЛСП', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Майти Ди', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Марины Кацубы', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Микси', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Млечный', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('МЦ Похоронил', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Пиэм', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Подземный Принц (Хатт)', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Птаха', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Саморез & МС MoonStar', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Саша Скул', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('СД', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Гнойный', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Сын Проститутки', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Сявы', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Типси Типа', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Тот самый Коля', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Хайда', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Хованский', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Хохла', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('ХХОС', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Эль', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Эмио Афишл', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Энди Картрайт', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Эрнесто Заткнитесь', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Ярмак', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('D.Masta', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Abbalbisk', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Alphavite', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('ATL', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Bes', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words("Billy Milligan'а", data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words("Chet'а", data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('CZAR', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Dizaster', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Dom1no', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Drago', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Edik_Kingsta', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Галата', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('ГИГА', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Guf', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Heavy', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('I1', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('J.Makonnen', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('John rai & Xoxoл', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('John Rai', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Johnyboy', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Jubilee', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Just', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('LeTai', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Lil Dik', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Lodoss', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('MC No Limit', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Meowizzy', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('MickeyMouse', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Miles', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('MoonStara', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Mozee Montana', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Mufasah', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Mytee Dee', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words("N'rage", data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Niggarex', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Noiza MC', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Obe 1 Kanobe', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('OBJECT', data_battles, data_count_bad_words)
data_count_bad_words = raper.get_count_bad_words('Oxxxymiron', data_battles, data_count_bad_words)

# Сортируем хэш в порядке убывания для последующего вывода данных в консоль
sort_data_bad_words = data_count_bad_words.sort_by { |_key, value| value }.reverse.to_h

hash_empty = {}

count_battles = raper.get_count_battles("Pra(Killa'Gramm)", data_battles, hash_empty)
count_battles = raper.get_count_battles('13_47', data_battles, count_battles)
count_battles = raper.get_count_battles('1917', data_battles, count_battles)
count_battles = raper.get_count_battles('Артем Лоик', data_battles, count_battles)
count_battles = raper.get_count_battles('Артем Татищевский', data_battles, count_battles)
count_battles = raper.get_count_battles('Басота', data_battles, count_battles)
count_battles = raper.get_count_battles('Браги', data_battles, count_battles)
count_battles = raper.get_count_battles('Брол', data_battles, count_battles)
count_battles = raper.get_count_battles('Букер', data_battles, count_battles)
count_battles = raper.get_count_battles('Витя Classic', data_battles, count_battles)
count_battles = raper.get_count_battles('Галата', data_battles, count_battles)
count_battles = raper.get_count_battles('Гарри Топор', data_battles, count_battles)
count_battles = raper.get_count_battles('ГИГА', data_battles, count_battles)
count_battles = raper.get_count_battles('Гнойный', data_battles, count_battles)
count_battles = raper.get_count_battles('Грязный Рамирес', data_battles, count_battles)
count_battles = raper.get_count_battles('Джарахов', data_battles, count_battles)
count_battles = raper.get_count_battles('Дима Гамбит', data_battles, count_battles)
count_battles = raper.get_count_battles('Династ', data_battles, count_battles)
count_battles = raper.get_count_battles('Дуня', data_battles, count_battles)
count_battles = raper.get_count_battles('Заебатсу', data_battles, count_battles)
count_battles = raper.get_count_battles('Замая', data_battles, count_battles)
count_battles = raper.get_count_battles('Илья Мирный', data_battles, count_battles)
count_battles = raper.get_count_battles('Казанский', data_battles, count_battles)
count_battles = raper.get_count_battles('Кореш', data_battles, count_battles)
count_battles = raper.get_count_battles('Крип-А-Крип', data_battles, count_battles)
count_battles = raper.get_count_battles('Ларина', data_battles, count_battles)
count_battles = raper.get_count_battles('Леха Медь', data_battles, count_battles)
count_battles = raper.get_count_battles('Леши GS', data_battles, count_battles)
count_battles = raper.get_count_battles('Лоика', data_battles, count_battles)
count_battles = raper.get_count_battles('ЛСП', data_battles, count_battles)
count_battles = raper.get_count_battles('Майти Ди', data_battles, count_battles)
count_battles = raper.get_count_battles('Марины Кацубы', data_battles, count_battles)
count_battles = raper.get_count_battles('Микси', data_battles, count_battles)
count_battles = raper.get_count_battles('Млечный', data_battles, count_battles)
count_battles = raper.get_count_battles('МЦ Похоронил', data_battles, count_battles)
count_battles = raper.get_count_battles('Пиэм', data_battles, count_battles)
count_battles = raper.get_count_battles('Подземный Принц (Хатт)', data_battles, count_battles)
count_battles = raper.get_count_battles('Птаха', data_battles, count_battles)
count_battles = raper.get_count_battles('Саморез & МС MoonStar', data_battles, count_battles)
count_battles = raper.get_count_battles('Саша Скул', data_battles, count_battles)
count_battles = raper.get_count_battles('СД', data_battles, count_battles)
count_battles = raper.get_count_battles('Гнойный', data_battles, count_battles)
count_battles = raper.get_count_battles('Сын Проститутки', data_battles, count_battles)
count_battles = raper.get_count_battles('Сявы', data_battles, count_battles)
count_battles = raper.get_count_battles('Типси Типа', data_battles, count_battles)
count_battles = raper.get_count_battles('Тот самый Коля', data_battles, count_battles)
count_battles = raper.get_count_battles('Хайда', data_battles, count_battles)
count_battles = raper.get_count_battles('Хованский', data_battles, count_battles)
count_battles = raper.get_count_battles('Хохла', data_battles, count_battles)
count_battles = raper.get_count_battles('ХХОС', data_battles, count_battles)
count_battles = raper.get_count_battles('Электромышь', data_battles, count_battles)
count_battles = raper.get_count_battles('Эль', data_battles, count_battles)
count_battles = raper.get_count_battles('Эмио Афишл', data_battles, count_battles)
count_battles = raper.get_count_battles('Эрнесто Заткнитесь', data_battles, count_battles)
count_battles = raper.get_count_battles('Ярмак', data_battles, count_battles)
count_battles = raper.get_count_battles('D.Masta', data_battles, count_battles)
count_battles = raper.get_count_battles('Abbalbisk', data_battles, count_battles)
count_battles = raper.get_count_battles('Alphavite', data_battles, count_battles)
count_battles = raper.get_count_battles('ATL', data_battles, count_battles)
count_battles = raper.get_count_battles('Bes', data_battles, count_battles)
count_battles = raper.get_count_battles("Billy Milligan'а", data_battles, count_battles)
count_battles = raper.get_count_battles("Chet'а", data_battles, count_battles)
count_battles = raper.get_count_battles('CZAR', data_battles, count_battles)
count_battles = raper.get_count_battles('Dizaster', data_battles, count_battles)
count_battles = raper.get_count_battles('Dom1no', data_battles, count_battles)
count_battles = raper.get_count_battles('Drago', data_battles, count_battles)
count_battles = raper.get_count_battles('Edik_Kingsta', data_battles, count_battles)
count_battles = raper.get_count_battles('Галата', data_battles, count_battles)
count_battles = raper.get_count_battles('ГИГА', data_battles, count_battles)
count_battles = raper.get_count_battles('Guf', data_battles, count_battles)
count_battles = raper.get_count_battles('Heavy', data_battles, count_battles)
count_battles = raper.get_count_battles('I1', data_battles, count_battles)
count_battles = raper.get_count_battles('J.Makonnen', data_battles, count_battles)
count_battles = raper.get_count_battles('John rai & Xoxoл', data_battles, count_battles)
count_battles = raper.get_count_battles('John Rai', data_battles, count_battles)
count_battles = raper.get_count_battles('Johnyboy', data_battles, count_battles)
count_battles = raper.get_count_battles('Jubilee', data_battles, count_battles)
count_battles = raper.get_count_battles('Just', data_battles, count_battles)
count_battles = raper.get_count_battles('LeTai', data_battles, count_battles)
count_battles = raper.get_count_battles('Lil Dik', data_battles, count_battles)
count_battles = raper.get_count_battles('Lodoss', data_battles, count_battles)
count_battles = raper.get_count_battles('MC No Limit', data_battles, count_battles)
count_battles = raper.get_count_battles('Meowizzy', data_battles, count_battles)
count_battles = raper.get_count_battles('MickeyMouse', data_battles, count_battles)
count_battles = raper.get_count_battles('Miles', data_battles, count_battles)
count_battles = raper.get_count_battles('MoonStara', data_battles, count_battles)
count_battles = raper.get_count_battles('Mozee Montana', data_battles, count_battles)
count_battles = raper.get_count_battles('Mufasah', data_battles, count_battles)
count_battles = raper.get_count_battles('Mytee Dee', data_battles, count_battles)
count_battles = raper.get_count_battles("N'rage", data_battles, count_battles)
count_battles = raper.get_count_battles('Niggarex', data_battles, count_battles)
count_battles = raper.get_count_battles('Noiza MC', data_battles, count_battles)
count_battles = raper.get_count_battles('Obe 1 Kanobe', data_battles, count_battles)
count_battles = raper.get_count_battles('OBJECT', data_battles, count_battles)
count_battles = raper.get_count_battles('Oxxxymiron', data_battles, count_battles)

choice = ARGV.first
count_rappers = ARGV[1].to_i
rapper_name = ARGV.last

case choice
when '--top-bad-words'
  if data_count_bad_words.size >= count_rappers
    count_output = sort_data_bad_words.first(count_rappers)
    count_output.each do |rap_name, bad_words|
      ending = EndingGenerate.new
      count_raper_battles = count_battles[rap_name] || 1
      count_bad_words_battle = bad_words.to_f / count_raper_battles

      count_words_in_round = raper.get_count_bad_words(
        rap_name, data_battles,
        data_count_bad_words,
        'countWordsInRound'
      )

      puts "#{rap_name} | #{count_raper_battles} батл#{ending.ending_battle(count_raper_battles)} |"\
           "#{bad_words} #{ending.ending_bad_word(bad_words)}  |"\
           "#{count_bad_words_battle.round(2)} слова на батл |"\
           "#{count_words_in_round} слов#{ending.ending_word(count_words_in_round)} в раунде"
    end
  else
    puts 'У в этой базе  нет столько рэперов :('
  end
when '--top-words'
  if count_battles.key?(rapper_name)
    data_repeat_words = raper.get_count_repeat_words(data_battles, rapper_name)
    if count_rappers > data_repeat_words.size
      puts 'Слишком большое число'
    else
      count_output = data_repeat_words.first(count_rappers)
      count_output.each { |word, count_repeat| puts "#{word.capitalize} - #{count_repeat}" }
    end
  else
    puts "Репер #{rapper_name} не известен мне. Зато мне известны:"
    sleep 1
    count_output = sort_data_bad_words.first(3)
    count_output.each_key { |rap_name| puts rap_name.to_s }
  end
end
