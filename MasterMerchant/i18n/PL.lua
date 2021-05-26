﻿-- MasterMerchant Polish Localization File - Taziff (Skrybowie Tamriel)
-- Last Updated April 11, 2021
-- Written July 2014 by Dan Stone (@khaibit) - dankitymao@gmail.com
-- Extended February 2015 by Chris Lasswell (@Philgo68) - Philgo68@gmail.com
-- Released under terms in license accompanying this file.
-- Distribution without license is prohibited!

-- Options Menu
ZO_CreateStringId("SK_ALERT_ANNOUNCE_NAME", "Powiadomienia na ekranie")
ZO_CreateStringId("SK_ALERT_ANNOUNCE_TIP", "Wyświetl powiadomienia o sprzedaży na ekranie.")
ZO_CreateStringId("SK_ALERT_CYRODIIL_NAME", "Pokaż powiadomienia w Cyrodiil")
ZO_CreateStringId("SK_ALERT_CYRODIIL_TIP", "Kontynuuj wyświetlanie powiadomień na ekranie w Cyrodiil. Powiadomienia na czacie, jeśli są włączone, pokazuj bez względu na to.")
ZO_CreateStringId("SK_MULT_ALERT_NAME", "Pokaż wiele powiadomień")
ZO_CreateStringId("SK_MULT_ALERT_TIP", "Pokaż jedno powiadomienie dla każdego sprzedanego przedmiotu zamiast powiadomienia podsumowującego, jeśli sprzedanych jest wiele przedmiotów.")
ZO_CreateStringId("SK_OPEN_MAIL_NAME", "Otwórz z pocztą")
ZO_CreateStringId("SK_OPEN_MAIL_TIP", "Otwórz podsumowanie sprzedaży Master Merchant wraz ze skrzynką pocztową.")
ZO_CreateStringId("SK_OPEN_STORE_NAME", "Otwórz ze sklepem")
ZO_CreateStringId("SK_OPEN_STORE_TIP", "Otwórz podsumowanie sprzedaży Master Merchant wraz ze sklepami gildii.")
ZO_CreateStringId("SK_FULL_SALE_NAME", "Pokaż pełną cenę sprzedaży")
ZO_CreateStringId("SK_FULL_SALE_TIP", "Pokaż cenę sprzedanych przedmiotów przed pobraniem opłaty sklepowej.")
ZO_CreateStringId("SK_HISTORY_DEPTH_NAME", "Rozmiar historii sprzedaży")
ZO_CreateStringId("SK_HISTORY_DEPTH_TIP", "Ile dni sprzedaży powinno być zapisanych. Obniżenie może zmniejszyć wpływ na wydajność tego dodatku.")
ZO_CreateStringId("SK_SHOW_PRICING_NAME", "Pokaż informacje o cenach")
ZO_CreateStringId("SK_SHOW_PRICING_TIP", "Załącz dane o cenach w oknie przedmiotu bazując na sprzedaży w przeszłości.")
ZO_CreateStringId("SK_SHOW_CRAFT_COST_NAME", "Pokaż informację o koszcie wytworzenia")
ZO_CreateStringId("SK_SHOW_CRAFT_COST_TIP", "Załącz koszt wytworzenia w oknie przedmiotu bazując na koszcie składników.")
ZO_CreateStringId("SK_CALC_NAME", "Pokaż kalkulator ceny stosu")
ZO_CreateStringId("SK_CALC_TIP", "Pokaż mały kalkulator podczas wystawiania przedmiotu w sklepie gildii.")
ZO_CreateStringId("SK_WINDOW_FONT_NAME", "Czcionka Okna")
ZO_CreateStringId("SK_WINDOW_FONT_TIP", "Użyta czcionka w oknie Master Merchant.")
ZO_CreateStringId("SK_ALERT_OPTIONS_NAME", "Opcje powiadomień")
ZO_CreateStringId("SK_ALERT_OPTIONS_TIP", "Opcje typu i dźwięku powiadomień.")
ZO_CreateStringId("SK_ALERT_TYPE_NAME", "Dźwięk powiadomienia")
ZO_CreateStringId("SK_ALERT_TYPE_TIP", "Dźwięk do odtworzenia kiedy sprzedasz przedmiot, jeśli ustawiono.")
ZO_CreateStringId("SK_ALERT_CHAT_NAME", "Powiadomienia czatu")
ZO_CreateStringId("SK_ALERT_CHAT_TIP", "Pokaż powiadomienia w oknie czatu.")
ZO_CreateStringId("SK_OFFLINE_SALES_NAME", "Raport sprzedaży offline")
ZO_CreateStringId("SK_OFFLINE_SALES_TIP", "Pokaż powiadomienia na czacie dla sprzedanych przedmiotów podczas bycia offline, gdy następnym razem się zalogujesz.")

ZO_CreateStringId("SK_TRIM_OUTLIERS_NAME", "Zignoruj odstające ceny")
ZO_CreateStringId("SK_TRIM_OUTLIERS_TIP", "Zignoruj transakcje z cenami po za standardowym odchyleniem.")

ZO_CreateStringId("SK_TRIM_DECIMALS_NAME", "Ukryj wartości dziesiętne w cenach")
ZO_CreateStringId("SK_TRIM_DECIMALS_TIP", "Zaokrągl wszystkie ceny do najbliżej wartości w złocie.")

ZO_CreateStringId("SK_ROSTER_INFO_NAME", "Wyświetl informację na liście gildii")
ZO_CreateStringId("SK_ROSTER_INFO_TIP", "Pokaż sumy zakupów i sprzedaży na liście gildii w oparciu o przedział czasowy wybrany w oknie MM.")

ZO_CreateStringId("SK_SHOW_GRAPH_NAME", "Pokaż wykres historii cen")
ZO_CreateStringId("SK_SHOW_GRAPH_TIP", "Dołącz wykres historii sprzedaży w oknie przedmiotu.")
-- Main window
-- buttons to toggle personal and guild sales
ZO_CreateStringId("SK_VIEW_ALL_SALES", "Pokaż sprzedaż gildii")
ZO_CreateStringId("SK_VIEW_YOUR_SALES", "Pokaż sprzedaż osobistą")
-- window title viewMode - Personal sales
ZO_CreateStringId("SK_SELF_SALES_TITLE", "Sprzedaż osobista")
-- window title viewSize - All sales
ZO_CreateStringId("SK_GUILD_SALES_TITLE", "Sprzedaż gildyjna")
--  window titles - Both
ZO_CreateStringId("SK_ITEM_REPORT_TITLE", "Raport przedmiotu")
ZO_CreateStringId("SK_SELER_REPORT_TITLE", "Raport sprzedawcy")

ZO_CreateStringId("SK_SHOW_UNIT", "Pokaż cenę jednostkową")
ZO_CreateStringId("SK_SHOW_TOTAL", "Pokaż cenę całkowitą")
ZO_CreateStringId("SK_BUYER_COLUMN", "Kupiec")
ZO_CreateStringId("SK_GUILD_COLUMN", "Gildia")
ZO_CreateStringId("SK_ITEM_COLUMN", "Sprzedany przedmiot")
ZO_CreateStringId("SK_TIME_COLUMN", "Czas sprzedaży")
ZO_CreateStringId("SK_PRICE_COLUMN", "Cena")
ZO_CreateStringId("SK_PRICE_EACH_COLUMN", "Cena(szt.)")
ZO_CreateStringId("SK_ITEM_TOOLTIP", "Kliknij prawym przyciskiem na przedmiocie aby zalinkować na czacie.")
ZO_CreateStringId("SK_BUYER_TOOLTIP", "Kliknij prawym przyciskiem na imieniu aby skontaktować się z nimi.")
ZO_CreateStringId("SK_SORT_TIME_TOOLTIP", "Kliknij aby sortować po czasie sprzedaży.")
ZO_CreateStringId("SK_SORT_PRICE_TOOLTIP", "Kliknij aby sortować po cenie sprzedaży.")
ZO_CreateStringId("SK_STATS_TOOLTIP", "Otwórz statystyki.")
ZO_CreateStringId("SK_SELLER_TOOLTIP", "Informacje o sprzedawcy")
ZO_CreateStringId("SK_ITEMS_TOOLTIP", "Informacje o przedmiocie")
ZO_CreateStringId("SK_TIME_DAYS", "<<1[wczoraj/%d dni temu]>>")
ZO_CreateStringId("SK_THOUSANDS_SEP", " ")

-- Chat and center screen alerts/messages
ZO_CreateStringId("SK_FIRST_SCAN", "Skanowanie twoich gildii po raz pierwszy. To może zająć kilka minut!")
ZO_CreateStringId("SK_REFRESH_LABEL", "Odśwież")
ZO_CreateStringId("SK_REFRESH_START", "Start odświeżania.")
ZO_CreateStringId("SK_REFRESH_DONE", "Odświeżanie zakończone.")
ZO_CreateStringId("SK_REFRESH_WAIT", "Proszę poczekać minutę lub więcej pomiędzy odświeżeniami.")
ZO_CreateStringId("SK_RESET_LABEL", "Zresetuj")
ZO_CreateStringId("SK_RESET_CONFIRM_TITLE", "Potwierdź zresetowanie")
ZO_CreateStringId("SK_RESET_CONFIRM_MAIN", "Jesteś pewien że chcesz zresetować historię sprzedaży? Wszystkie dane zostaną zastąpione świeżymi danymi z serwera.")
ZO_CreateStringId("SK_RESET_DONE", "Zresetuj historię sprzedaży.")
ZO_CreateStringId("SK_SALES_ALERT", "Sprzedano %s x%d za %s |t16:16:EsoUI/Art/currency/currency_gold.dds|t w gildii %s %s.")
ZO_CreateStringId("SK_SALES_ALERT_COLOR", "Sprzedano %s x%d za |cD5B526%s |t16:16:EsoUI/Art/currency/currency_gold.dds|t |cFFFFFFw gildii %s %s.")
ZO_CreateStringId("SK_SALES_ALERT_SINGLE", "Sprzedano %s za %s |t16:16:EsoUI/Art/currency/currency_gold.dds|t w gildii %s %s.")
ZO_CreateStringId("SK_SALES_ALERT_SINGLE_COLOR", "Sprzedano %s za |cD5B526%s |t16:16:EsoUI/Art/currency/currency_gold.dds|t |cFFFFFFw gildii %s %s.")
ZO_CreateStringId("SK_SALES_ALERT_GROUP", "Sprzedano %d przedmiotów o łącznej wartości %s |t16:16:EsoUI/Art/currency/currency_gold.dds|t ze sklepów gildii.")
ZO_CreateStringId("SK_SALES_ALERT_GROUP_COLOR", "Sprzedano %d przedmiotów o łącznej wartości |cD5B526%s |t16:16:EsoUI/Art/currency/currency_gold.dds|t |cFFFFFFze sklepów gildii.")
ZO_CreateStringId("SK_SALES_REPORT", "Raport sprzedaży:")
ZO_CreateStringId("SK_SALES_REPORT_END", "Koniec raportu.")

-- Stats Window
ZO_CreateStringId("SK_STATS_TITLE", "Statystyki sprzedaży")
ZO_CreateStringId("SK_STATS_TIME_ALL", "Użyj wszystkich danych")
ZO_CreateStringId("SK_STATS_TIME_SOME", "<<1[%d dzień/%d dni]>> wstecz")
ZO_CreateStringId("SK_STATS_ITEMS_SOLD", "Sprzedane przedmioty: %s (%s%% od kupca gildii)")
ZO_CreateStringId("SK_STATS_TOTAL_GOLD", "Łączne złoto: %s |t16:16:EsoUI/Art/currency/currency_gold.dds|t (%s |t16:16:EsoUI/Art/currency/currency_gold.dds|t na dzień)")
ZO_CreateStringId("SK_STATS_BIGGEST", "Największa sprzedaż: %s (%s |t16:16:EsoUI/Art/currency/currency_gold.dds|t)")
ZO_CreateStringId("SK_STATS_DAYS", "Dni: ")
ZO_CreateStringId("SK_STATS_ALL_GUILDS", "Wszystkie gildie")

-- Tooltip Pricing
ZO_CreateStringId("SK_PRICETIP_SALES", "<<1[%d sprzedaż/%d sprzedaży]>>")
ZO_CreateStringId("SK_PRICETIP_ONEDAY", "Cena z Master Merchant (%s, <1 dzień): %.2f|t16:16:EsoUI/Art/currency/currency_gold.dds|t")
ZO_CreateStringId("SK_PRICETIP_MULTDAY", "Cena z Master Merchant (%s, %d dni): %.2f|t16:16:EsoUI/Art/currency/currency_gold.dds|t")

-- Keybindings
ZO_CreateStringId("SI_BINDING_NAME_MasterMerchant_TOGGLE", "Pokaż/Ukryj Główne Okno")
ZO_CreateStringId("SI_BINDING_NAME_MasterMerchant_STATS_TOGGLE", "Pokaż/Ukryj Okno Statystyk")
ZO_CreateStringId("SI_BINDING_NAME_MasterMerchant_GRAPH_TOGGLE", "Pokaż/Ukryj wykres historii cen")

-- New values
ZO_CreateStringId("MM_TIP_FORMAT_SINGLE", "Cena M.M. (%s, %d dzień): %.2f")
ZO_CreateStringId("MM_TIP_FORMAT_MULTI", "Cena M.M. (%s, %d dni): %.2f")
ZO_CreateStringId("MM_TIP_FORMAT_NONE", "M.M. nie ma danych")
ZO_CreateStringId("MM_TIP_FORMAT_NONE_RANGE", "M.M. nie ma danych w ostatnich %d dniach")
ZO_CreateStringId("MM_TIP_FOR", "dla")
ZO_CreateStringId("MM_LINK_TO_CHAT", "Zalinkuj na czacie")
ZO_CreateStringId("MM_STATS_TO_CHAT", "Cena z MM na czat")
ZO_CreateStringId("MM_APP_NAME", "Master Merchant")
ZO_CreateStringId("MM_APP_AUTHOR", "Sharlikran, Philgo68, Khaibit")
ZO_CreateStringId("MM_APP_MESSAGE_NAME", "[Master Merchant]")
ZO_CreateStringId("MM_APP_TEXT_TIMES", " x ")
ZO_CreateStringId("MM_ADVICE_ERROR", "Master Merchant nie mógł połączyć się z Domem handlowym aby udzielić porady zakupowej.")

ZO_CreateStringId("MM_TOTAL_TITLE", "W sumie: ")
ZO_CreateStringId("MM_CP_RANK_SEARCH", "cp")
ZO_CreateStringId("MM_REGULAR_RANK_SEARCH", "rr")
ZO_CreateStringId("MM_COLOR_WHITE", "biały")
ZO_CreateStringId("MM_COLOR_GREEN", "zielony")
ZO_CreateStringId("MM_COLOR_BLUE", "niebieski")
ZO_CreateStringId("MM_COLOR_PURPLE", "fioletowy")
ZO_CreateStringId("MM_COLOR_GOLD", "złoty")
ZO_CreateStringId("MM_COLOR_ORANGE", "pomarańczowy")
ZO_CreateStringId("MM_PERCENT_CHAR", "%")
ZO_CreateStringId("MM_ENTIRE_GUILD", "Cała Gildia")
ZO_CreateStringId("MM_INDEX_TODAY", "Dzisiaj")
ZO_CreateStringId("MM_INDEX_3DAY", "Wczoraj")
ZO_CreateStringId("MM_INDEX_THISWEEK", "Ten Tydzień")
ZO_CreateStringId("MM_INDEX_LASTWEEK", "Zeszły tydzień")
ZO_CreateStringId("MM_INDEX_PRIORWEEK", "Poprzedni tydzień")
ZO_CreateStringId("MM_INDEX_7DAY", "7 Dni")
ZO_CreateStringId("MM_INDEX_10DAY", "10 Dni")
ZO_CreateStringId("MM_INDEX_28DAY", "30 Dni")
ZO_CreateStringId("SK_SELLER_COLUMN", "Sprzedający")
ZO_CreateStringId("SK_RANK_COLUMN", "Ranga")
ZO_CreateStringId("SK_SALES_COLUMN", "Sprzedaże")
ZO_CreateStringId("SK_PURCHASES_COLUMN", "Kupna")
ZO_CreateStringId("SK_TAX_COLUMN", "Podatek")
ZO_CreateStringId("SK_COUNT_COLUMN", "Ilość")
ZO_CreateStringId("SK_PERCENT_COLUMN", "Procent")
ZO_CreateStringId("MM_NOTHING", "Nic")

ZO_CreateStringId("MM_LISTING_ALERT", "Wystawiono %s x%d za %s |t16:16:EsoUI/Art/currency/currency_gold.dds|t w %s.")

ZO_CreateStringId("MM_CALC_OPTIONS_NAME", "Opcje wyświetlania kalkulacji")
ZO_CreateStringId("MM_CALC_OPTIONS_TIP", "Dostosuj opcje obliczeń Master Merchant, które zmieniają wykres historii.")
ZO_CreateStringId("MM_DAYS_FOCUS_ONE_NAME", "Ilość dni skupienia 1")
ZO_CreateStringId("MM_DAYS_FOCUS_ONE_TIP", "Liczba dni sprzedaży, na których należy się skupić.")
ZO_CreateStringId("MM_DAYS_FOCUS_TWO_NAME", "Ilość dni skupienia 2")
ZO_CreateStringId("MM_DAYS_FOCUS_TWO_TIP", "Liczba dni sprzedaży, na których należy się skupić.")
ZO_CreateStringId("MM_DEFAULT_TIME_NAME", "Domyślny zakres dni")
ZO_CreateStringId("MM_DEFAULT_TIME_TIP", "Liczba dni z historii do użycia domyślnie. (Brak w przypadku braku wyświetlania.)")
ZO_CreateStringId("MM_SHIFT_TIME_NAME", "Zakres dni dla <Shift>")
ZO_CreateStringId("MM_SHIFT_TIME_TIP", "Liczba dni z historii do użycia podczas trzymania <Shift>.")
ZO_CreateStringId("MM_CTRL_TIME_NAME", "Zakres dni dla <Ctrl>")
ZO_CreateStringId("MM_CTRL_TIME_TIP", "Liczba dni z historii do użycia podczas trzymania <Ctrl>.")
ZO_CreateStringId("MM_CTRLSHIFT_TIME_NAME", "Zakres dni dla <Ctrl+Shift>")
ZO_CreateStringId("MM_CTRLSHIFT_TIME_TIP", "Liczba dni z historii do użycia podczas trzymania <Ctrl+Shift>.")
ZO_CreateStringId("MM_RANGE_ALL", "Wszystko")
ZO_CreateStringId("MM_RANGE_FOCUS1", "Skupienie 1")
ZO_CreateStringId("MM_RANGE_FOCUS2", "Skupienie 2")
ZO_CreateStringId("MM_RANGE_FOCUS3", "Skupienie 3")
ZO_CreateStringId("MM_RANGE_NONE", "Nic")
ZO_CreateStringId("MM_BLACKLIST_NAME", "Czarna lista graczy i gildii")
ZO_CreateStringId("MM_BLACKLIST_TIP", "Wymień nazwy graczy i gildii które MM ma ignorować podczas kalkulacji.")

ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_NAME", "Niestandardowe przedziały czasowe")
ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_TIP", "Dodatkowe przedziały czasowe do wyboru na listach przedmiotów i gildii.")
ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_SCALE_NAME", "Jednostki niestandardowego przedziału czasowego")
ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_SCALE_TIP", "Jednostka czasu w której wyrażony jest przedział czasowy.")
ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_HOURS", "Godziny")
ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_DAYS", "Dni")
ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_WEEKS", "Tygodnie")
ZO_CreateStringId("MM_CUSTOM_TIMEFRAME_GUILD_WEEKS", "Pełne tygodnie gildyjne")

ZO_CreateStringId("MM_SAUCY_NAME", "Wyświetl zysk zamiast marży")
ZO_CreateStringId("MM_SAUCY_TIP", "W sklepie gildii, wyświetl potencjalny zysk zamiast procentu marży.")
ZO_CreateStringId("MM_MIN_PROFIT_FILTER_NAME", "Wyświetl filtr zysku")
ZO_CreateStringId("MM_MIN_PROFIT_FILTER_TIP", "Dodaj dodatkowy filtr w AGS bazujący na zysku.")

ZO_CreateStringId("MM_PRICETIP_ITEMS", "/<<1[%d przedmiot/%d przedmiotów]>>")

ZO_CreateStringId("MM_MIN_ITEM_COUNT_NAME", "Min ilość przedmiotów")
ZO_CreateStringId("MM_MIN_ITEM_COUNT_TIP", "Minimalna liczba sprzedaży przedmiotu przetrzymywana w historii.")
ZO_CreateStringId("MM_MAX_ITEM_COUNT_NAME", "Maks ilość przedmiotów")
ZO_CreateStringId("MM_MAX_ITEM_COUNT_TIP", "Maksymalna liczba sprzedaży przedmiotu przetrzymywana w historii.")

ZO_CreateStringId("MM_REPLACE_INVENTORY_VALUES_NAME", "Zastąp wartości ekwipunku")
ZO_CreateStringId("MM_REPLACE_INVENTORY_VALUES_TIP", "Wyświetl cenę z MM na siatce ekwipunku.")

ZO_CreateStringId("MM_DISPLAY_LISTING_MESSAGE_NAME", "Wyświetl wiadomość o wystawieniu")
ZO_CreateStringId("MM_DISPLAY_LISTING_MESSAGE_TIP", "Wyświetl wiadomość w oknie czatu dla każdego wystawienia w sklepie gildii.")

ZO_CreateStringId("SK_PER_CHANGE_COLUMN", "Podatki")
ZO_CreateStringId("SK_PER_CHANGE_TIP", "Złoto wygenerowane dla gildii przez twoje sprzedaże.")
ZO_CreateStringId("MM_POPUP_ITEM_DATA", "Wyświetl info o przedmiocie")
ZO_CreateStringId("MM_GRAPH_TIP", "W %s %s sprzedano %s x %d do %s za %s sztukę.")
ZO_CreateStringId("MM_GRAPH_TIP_SINGLE", "W %s %s sprzedano %s do %s za %s.")
ZO_CreateStringId("MM_NO_DATA_DEAL_NAME", "Ocena transakcji bez danych")
ZO_CreateStringId("MM_NO_DATA_DEAL_TIP", "Ocena transakcji dla przedmiotu bez historii sprzedaży.")
ZO_CreateStringId("MM_GRAPH_INFO_NAME", "Podpowiedzi na punktach wykresu")
ZO_CreateStringId("MM_GRAPH_INFO_TIP", "Wyświetl wskazówki z informacjami o sprzedaży dla punktów wykresu.")
ZO_CreateStringId("MM_LEVEL_QUALITY_NAME", "Przyciski wyboru poziomu/jakości")
ZO_CreateStringId("MM_LEVEL_QUALITY_TIP", "Wyświetl przyciski w wyskakującym oknie przedmiotu aby wybrać poziom/jakość.")

ZO_CreateStringId("MM_SKIP_INDEX_NAME", "Minimalne indeksowanie")
ZO_CreateStringId("MM_SKIP_INDEX_TIP", "Pominięto indeksy historii sprzedaży aby zaoszczędzić pamięć, ale wyszukiwanie na ekranie MM jest znacznie wolniejsze.")

ZO_CreateStringId("MM_DAYS_ONLY_NAME", "Użyj tylko wielkości historii sprzedaży")
ZO_CreateStringId("MM_DAYS_ONLY_TIP", "Rozmiar historii sprzedaży będzie używany tylko podczas przycinania historii sprzedaży. Spowoduje to zignorowanie minimalnej i maksymalnej liczby.")

ZO_CreateStringId("MM_SHOW_AMOUNT_TAXES_NAME", "Dodaj eksport rangi podatków sprzedaży")
ZO_CreateStringId("MM_SHOW_AMOUNT_TAXES_TIP", "Obliczy 3.5% całkowitej sprzedaży jako kwotę podatków dla użytkownika podczas korzystania z /mm export.")

ZO_CreateStringId("MM_GUILD_ROSTER_OPTIONS_NAME", "Opcje listy gildii")
ZO_CreateStringId("MM_GUILD_ROSTER_OPTIONS_TIP", "Włącz i wyłącz różne kolumny w liście gildii. (Wymagane do następnej aktualizacji LibGuild Roster)")

ZO_CreateStringId("MM_PURCHASES_COLUMN_NAME", "Włącz kolumnę z kwotą zakupów")
ZO_CreateStringId("MM_PURCHASES_COLUMN_TIP", "Wyświetl kwotę zakupów na liście gildii.")

ZO_CreateStringId("MM_SALES_COLUMN_NAME", "Włącz kolumnę z kwotą sprzedaży")
ZO_CreateStringId("MM_SALES_COLUMN_TIP", "Wyświetl kwotę sprzedaży na liście gildii.")

ZO_CreateStringId("MM_TAXES_COLUMN_NAME", "Włącz kolumnę z kwotą podatków")
ZO_CreateStringId("MM_TAXES_COLUMN_TIP", "Wyświetl kwotę podatków na liście gildii.")

ZO_CreateStringId("MM_COUNT_COLUMN_NAME", "Włącz kolumnę ilości")
ZO_CreateStringId("MM_COUNT_COLUMN_TIP", "Wyświetl ilość na liście gildii.")

ZO_CreateStringId("MM_DAYS_FOCUS_THREE_NAME", "Ilość dni skupienia 3")
ZO_CreateStringId("MM_DAYS_FOCUS_THREE_TIP", "Liczba dni sprzedaży, na których należy się skupić.")

ZO_CreateStringId("MM_DEBUG_LOGGER_NAME", "Włącz niestandardowe rejestrowanie debugowania")
ZO_CreateStringId("MM_DEBUG_LOGGER_TIP", "Włącz opcjonalne rejestrowanie debugowania z LibDebugLogger gdy tego zażądano.")

ZO_CreateStringId("MM_DATA_MANAGEMENT_NAME", "Opcje zarządzania danymi")
ZO_CreateStringId("MASTER_MERCHANT_WINDOW_NAME", "Opcje okna Master Merchant")
ZO_CreateStringId("MASTER_MERCHANT_TOOLTIP_OPTIONS", "Opcje innych podpowiedzi")
ZO_CreateStringId("GUILD_STORE_OPTIONS", "Opcje sklepu gildii")
ZO_CreateStringId("MASTER_MERCHANT_DEBUG_OPTIONS", "Opcje debugowania")
ZO_CreateStringId("GUILD_MASTER_OPTIONS", "Opcje Mistrza gildii")
ZO_CreateStringId("MASTER_MERCHANT_INVENTORY_OPTIONS", "Opcje ekwipunku")

ZO_CreateStringId("MM_EXTENSION_SHOPPINGLIST_NAME", "Lista Zakupów")

-- new notification messages
ZO_CreateStringId("MM_INITIALIZING", "Inicjalizacja Master Merchant...")
ZO_CreateStringId("MM_INITIALIZED", "Master Merchant zainicjalizowany: zgromadzono %s sprzedaży.")
ZO_CreateStringId("MM_INIT_ITEM_HISTORY", "Start początkowej inicjalizacji gildii i przedmiotów")
ZO_CreateStringId("MM_INIT_ITEM_HISTORY_SUMMARY", "Początkowa inicjalizacja gildii i przedmiotów: %s sekund do inicjalizacji %s rekordów.")
ZO_CreateStringId("MM_MINIMAL_INDEXING", "Minimalne indeksowanie...")
ZO_CreateStringId("MM_FULL_INDEXING", "Pełne indeksowanie...")
ZO_CreateStringId("MM_INDEXING_SUMMARY", "Indeksowanie: %s sekund do zindeksowania %s wpisów sprzedaży, %s unikalnych wpisów")
ZO_CreateStringId("MM_TRUNCATE_COMPLETE", "Redukowanie zakończone: %s sekund do zredukowania, usunięto %s starych wpisów.")
ZO_CreateStringId("MM_SLIDING_SUMMARY", "Przesuwanie: %s sekund do przesunięcia %s wpisów sprzedaży do %s.")
ZO_CreateStringId("MM_REINDEXING_COMPLETE", "Ponowne indeksowanie zakończone.")
ZO_CreateStringId("MM_REINDEXING_EVERYTHING", "Ponowne indeksowanie wszystkiego.")
ZO_CreateStringId("MM_CLEANING_TIME_ELAPSED", "Czyszczenie: %s sekund do wyczyszczenia:")
ZO_CreateStringId("MM_CLEANING_BAD_REMOVED", "  usunięto %s błędnych wpisów sprzedaży")
ZO_CreateStringId("MM_CLEANING_REINDEXED", "  ponownie zindeksowano %s wpisów sprzedaży")
ZO_CreateStringId("MM_CLEANING_WRONG_VERSION", "  %s złych wersji przedmiotu")
ZO_CreateStringId("MM_CLEANING_WRONG_ID", "  %s złych identyfikatorów przedmiotu")
ZO_CreateStringId("MM_CLEANING_WRONG_MULE", "  %s złych identyfikatorów przechowywanego przedmiotu")
ZO_CreateStringId("MM_CLEANING_STRINGS_CONVERTED", "  %s zdarzeń z liczbami zamienionymi na ciągi")
ZO_CreateStringId("MM_CLEANING_BAD_ITEMLINKS", "  usunięto %s złych powiązań przedmiotu")
ZO_CreateStringId("MM_LIBHISTOIRE_REFRESH_FINISHED", "Odświeżanie LibHistoire zakończone")
ZO_CreateStringId("MM_LIBHISTOIRE_ACTIVATED", "LibHistoire aktywowane, nasłuchiwanie sprzedaży w gildii...")
ZO_CreateStringId("MM_STILL_INITIALIZING", "Master Merchant jest nadal inicjalizowany.")
ZO_CreateStringId("MM_LIBHISTOIRE_REFRESHING", "Odświeżanie LibHistoire...")
ZO_CreateStringId("MM_LIBHISTOIRE_REFRESH_ONCE", "LibHistoire może być odświeżany raz na sesję.")
ZO_CreateStringId("MM_EXPORTING", "Eksportowanie: %s")
ZO_CreateStringId("MM_EXPORTING_INVALID", "Nieprawidłowy! Prawidłowa liczba gildii to od 1 do 5.")
ZO_CreateStringId("MM_DUP_PURGE", "Czyszczenie duplikatów: %s sekund do wyczyszczenia %s duplikatów.")
ZO_CreateStringId("MM_CHECK_STATUS", "Nazwa gildii: %s ; Wczytano liczbę zdarzeń: %s ; Liczba zdażeń: %s ; Prędkość: %s ; Pozostało czasu: %s")

-- new debug messages
ZO_CreateStringId("MM_FILTER_TIME", "Czas filtrowania: %s")

-- new slash and help command strings
ZO_CreateStringId("MM_GUILD_DEAL_TYPE", "Przełączono wyświetlanie listy gildii.")
ZO_CreateStringId("MM_RESET_POSITION", "Pozycja okna MM została zresetowana.")
ZO_CreateStringId("MM_CLEAR_SAVED_PRICES", "Twoje ceny zostały wyczyszczone.")
ZO_CreateStringId("MM_CLEAN_UPDATE_DESC", "Czyszczenie MM jest ustawione na aktualizacje tekstu wyszukiwania.")
ZO_CreateStringId("MM_CLEAN_START", "Czyszczenie niepoprawnych wpisów.")
ZO_CreateStringId("MM_CLEAN_START_DELAY", "Czyszczenie błędnych wpisów sprzedaży rozpocznie się po zakończeniu bieżącego skanowania.")
ZO_CreateStringId("MM_GUILD_INDEX_NAME", "[%s] - %s")
ZO_CreateStringId("MM_GUILD_INDEX_INCLUDE", "Proszę zamieścić liczbę gildii do eksportu.")
ZO_CreateStringId("MM_GUILD_SALES_EXAMPLE", "Na przykład \"/mm sales 1\" aby wyeksportować pierwszą gildię.")
ZO_CreateStringId("MM_SALES_EXPORT_START", "Eksportowanie aktywności sprzedaży.")
ZO_CreateStringId("MM_EXPORT_COMPLETE", "Eksport zakończony. Wpisz /reloadui aby zapisać plik.")
ZO_CreateStringId("MM_GUILD_EXPORT_EXAMPLE", "Na przykład \"/mm export 1\" aby wyeksportować pierwszą gildię.")
ZO_CreateStringId("MM_EXPORT_START", "Eksportowanie wybranych tygodni sprzedaży/zakupów/podatków/danych rangi.")
ZO_CreateStringId("MM_SLIDING_SALES", "Przesuwanie twoich sprzedaży.")
ZO_CreateStringId("MM_SLIDING_SALES_DELAY", "Przesuwanie wpisów sprzedaży rozpocznie się po zakończeniu bieżącego skanowania.")
ZO_CreateStringId("MM_PURGING_DUPLICATES", "Usuwanie duplikatów.")
ZO_CreateStringId("MM_PURGING_DUPLICATES_DELAY", "Czyszczenie zduplikowanych wpisów sprzedaży rozpocznie się po zakończeniu bieżącego skanowania.")

-- help
ZO_CreateStringId("MM_HELP_WINDOW", "/mm  - pokaż/ukryj główne okno Master Merchant")
ZO_CreateStringId("MM_HELP_DUPS", "/mm dups  - skanuje historię aby usunąć zduplikowane wpisy")
ZO_CreateStringId("MM_HELP_CLEAN", "/mm clean - czyści złe wpisy sprzedaży (błędne informacje)")
ZO_CreateStringId("MM_HELP_CLEARPRICES", "/mm clearprices  - czyści historyczne ceny twoich ofert")
ZO_CreateStringId("MM_HELP_INVISIBLE", "/mm invisible  - resetuje pozycję okna MM w wypadku gdy jesteś nie widoczne (jest po za ekranem)")
ZO_CreateStringId("MM_HELP_EXPORT", "/mm export <numer gildii>  - eksportuje sumę sprzedaży/zakupów z ostatnich tygodni dla danej gildii")
ZO_CreateStringId("MM_HELP_SALES", "/mm sales <numer gildii>  - eksportuje dane dotyczące sprzedaży dla twojej gildii")
ZO_CreateStringId("MM_HELP_DEAL", "/mm deal  - przełącza wyświetlanie ofert między procentem marży a zyskiem w sklepach gildii")
ZO_CreateStringId("MM_HELP_TYPES", "/mm types  - lista dostępnych filtrów typów przedmiotu")
ZO_CreateStringId("MM_HELP_TRAITS", "/mm traits  - lista dostępnych filtrów cech przedmiotu")
ZO_CreateStringId("MM_HELP_QUALITY", "/mm quality  - lista dostępnych filtrów jakości przedmiotu")
ZO_CreateStringId("MM_HELP_EQUIP", "/mm equip  - lista dostępnych filtrów typów wyposażenia")
ZO_CreateStringId("MM_HELP_SLIDE", "/mm slide  - przenosi twoje wpisy sprzedaży do nowej @nazwa_konta (np. @kindredspiritgr do @kindredspiritgrSlid)  /mm slideback aby powrócić.")

-- new summary toggle
ZO_CreateStringId("MM_GUILD_ITEM_SUMMARY_NAME", "Włącz podsumowanie gildii i przedmiotów")
ZO_CreateStringId("MM_GUILD_ITEM_SUMMARY_TIP", "Pokaż podsumowanie gildii i przedmiotów po zakończeniu procesu.")

ZO_CreateStringId("MM_INDEXING_NAME", "Włącz podsumowanie indeksowania")
ZO_CreateStringId("MM_INDEXING_TIP", "Pokaż podsumowanie indeksowania po zakończeniu procesu.")
