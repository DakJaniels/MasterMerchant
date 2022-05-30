-- Last Updated September 5, 2021
-- Original file Sharlikran
-- Translation provided by Dusty82

ZO_CreateStringId("GS_DEBUG_OPTIONS", "Opzioni di Debug")
ZO_CreateStringId("GS_REFRESH_BUTTON", "Aggiorna")
ZO_CreateStringId("GS_REFRESH_DESC", "I dati di LibHistoire non sono specifici dell'account, quindi è necessario farlo solo una volta per server NA o EU, non una volta per account.")
ZO_CreateStringId("GS_RESET_NA_BUTTON", "Reset NA")
ZO_CreateStringId("GS_RESET_NA_DESC", "Cancellerà solo i dati del LibGuildStore NA.")
ZO_CreateStringId("GS_RESET_EU_BUTTON", "Reset EU")
ZO_CreateStringId("GS_RESET_EU_DESC", "Cancellerà solo i dati del LibGuildStore UE.")
ZO_CreateStringId("GS_REFRESH_LIBHISTOIRE_NAME", "Aggiorna LibHistoire")
ZO_CreateStringId("GS_REFRESH_LIBHISTOIRE_TIP", "Aggiorna tutti i dati di LibHistoire in base alla dimensione della cronologia delle vendite.")
ZO_CreateStringId("GS_RESET_NA_NAME", "Reset NA")
ZO_CreateStringId("GS_RESET_NA_TIP", "Cancellerà tutti i dati di LibGuildStore per NA.")
ZO_CreateStringId("GS_RESET_EU_NAME", "Reset UE")
ZO_CreateStringId("GS_RESET_EU_TIP", "Cancellerà tutti i dati di LibGuildStore per EU.")

ZO_CreateStringId("GS_TRUNCATE_SALES_COMPLETE", "Correzione dei Dati di Vendita completato: %s secondi, %s vecchi record rimossi.")
ZO_CreateStringId("GS_TRUNCATE_LISTINGS_COMPLETE", "Correzione dei Dati degli Elenchi completato: %s secondi, %s vecchi record rimossi.")
ZO_CreateStringId("GS_TRUNCATE_PURCHASE_COMPLETE", "Correzione degli Acquisti completato: %s, %s vecchi record rimossi.")
ZO_CreateStringId("GS_TRUNCATE_POSTED_COMPLETE", "Correzione degli Oggetti Pubblicati completato: %s secondi, %s vecchi record rimossi")
ZO_CreateStringId("GS_TRUNCATE_CANCELLED_COMPLETE", "Correzione degli Oggetti Cancellati completato: %s secondi, %s vecchi record rimossi")

ZO_CreateStringId("GS_RESET_LISTINGS_BUTTON", "Reset Elenchi")
ZO_CreateStringId("GS_RESET_LISTINGS_DESC", "Cancellerà solo gli elenchi per il tipo di server corrente NA o EU.")
ZO_CreateStringId("GS_RESET_LISTINGS_NAME", "Reset dei Dati degli Elenchi")
ZO_CreateStringId("GS_RESET_LISTINGS_TIP", "Cancellerà tutti gli elenchi di LibGuildStore")
ZO_CreateStringId("GS_RESET_LISTINGS_CONFIRM_TITLE", "Conferma Reset Elenchi")
ZO_CreateStringId("GS_RESET_LISTINGS_CONFIRM_MAIN", "Sei sicuro di voler cancellerà i dati dei tuoi oggetti? Dovrai visitare i commercianti per raccogliere i nuovi dati")

ZO_CreateStringId("GS_IMPORT_MM_BUTTON", "Importa dati da MM")
ZO_CreateStringId("GS_IMPORT_MM_DESC", "Fino a MM 3.6.x i dati del Master Merchant non venivano salvati separatamente per i server NA e EU. Non è consigliabile importare i dati da un tipo di server diverso perché i prezzi possono essere diversi")
ZO_CreateStringId("GS_IMPORT_MM_NAME", "Importa Dati da MM")
ZO_CreateStringId("GS_IMPORT_MM_TIP", "Importa tutti i dati di MM in LibGuildStore")
ZO_CreateStringId("GS_IMPORT_MM_OVERRIDE_NAME", "Ignora Importazione da MM")
ZO_CreateStringId("GS_IMPORT_MM_OVERRIDE_TIP", "Annulla l'importazione dei dati da MM da NA a EU o quando i vecchi dati contengono sia vendite NA che EU")

ZO_CreateStringId("GS_IMPORT_ATT_BUTTON", "Importa Dati da ATT")
ZO_CreateStringId("GS_IMPORT_ATT_NAME", "Importa Dati da ATT")
ZO_CreateStringId("GS_IMPORT_ATT_TIP", "Importa tutti i dati di ATT in LibGuildStore")
ZO_CreateStringId("GS_IMPORT_ATT_DESC", "I dati di vendita di Arkadius Trade Tools non sono specifici dell'account, quindi devi importarli solo una volta per i server NA o EU, non una volta per account")
ZO_CreateStringId("GS_IMPORT_ATT_FINISHED", "I dati di vendita di Arkadius Trade Tools sono stati importati. Usare più di un addon con gli stessi dati aumenta l'uso della memoria e i tempi di caricamento.")

ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_BUTTON", "Importa Acquisti da ATT")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_DESC", "I dati di acquisto di Arkadius Trade Tools non salvano l'ID di acquisto specifico. Potresti involontariamente importare un acquisto duplicato. Che potrebbe includere un acquisto fatto mentre sia ATT che la ShoppingList (versione stand alone) erano attivi.")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_NAME", "Importa Acquisti da ATT")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_TIP", "Importa i dati degli acquisti di ATT in LibGuildStore")

ZO_CreateStringId("GS_IMPORT_SL_BUTTON", "Importa Dati da ShoppingList")
ZO_CreateStringId("GS_IMPORT_SL_DESC", "Importa i dati della ShoppingList in LibGuildStore. I dati precedenti della ShoppingList non hanno salvato l'ID unico per l'acquisto, potresti avere alcuni duplicati finché l'acquisto più vecchio non viene rimosso.")
ZO_CreateStringId("GS_IMPORT_SL_NAME", "Importa da Shoppinglist")
ZO_CreateStringId("GS_IMPORT_SL_TIP", "Importa i dati della Shoppinglist in LibGuildStore")

ZO_CreateStringId("GS_IMPORT_PD_BUTTON", "Importa i dati dei prezzi")
ZO_CreateStringId("GS_IMPORT_PD_DESC", "Importa i dati dei prezzi di MM in LibGuildStore. I dati dei prezzi precedenti saranno disponibili solo come dati dei prezzi centrali. Non importerà gli stessi dati dei prezzi in ogni gilda separata")
ZO_CreateStringId("GS_IMPORT_PD_NAME", "Importa i dati dei prezzi")
ZO_CreateStringId("GS_IMPORT_PD_TIP", "Importa i dati dei prezzi in LibGuildStore. Sarà disponibile solo quando si usano i dati dei prezzi centrali. Per le gilde individuali sarà necessario stabilire nuovi dati sui prezzi per gilda.")

ZO_CreateStringId("GS_HELP_DUPS", "/lgs dups - analizza la vostra cronologia per eliminare le voci duplicate")
ZO_CreateStringId("GS_HELP_CLEAN", "/lgs clean - rimuove i record di vendita errati (informazioni non valide)")
ZO_CreateStringId("GS_HELP_SLIDE", "/lgs slide - riposiziona i tuoi record di vendita in un nuovo @nome (Es. @kindredspiritgr in @kindredspiritgrSlid) /mm slideback per invertire.")
ZO_CreateStringId("GS_HELP_MMIMPORT", "/lgs mmimport - Importa i dati di vendita da Master Merchant.")
ZO_CreateStringId("GS_HELP_ATTIMPORT", "/lgs attimport - Importa i dati di vendita da Arkadius' Trade Tools.")

ZO_CreateStringId("GS_COLOR_WHITE", "bianco")
ZO_CreateStringId("GS_COLOR_GREEN", "verde")
ZO_CreateStringId("GS_COLOR_BLUE", "blu")
ZO_CreateStringId("GS_COLOR_PURPLE", "viola")
ZO_CreateStringId("GS_COLOR_GOLD", "oro")
ZO_CreateStringId("GS_COLOR_ORANGE", "arancione")

ZO_CreateStringId("GS_SALES_MANAGEMENT_NAME", "Opzioni di Gestione delle Vendite")
ZO_CreateStringId("GS_DATA_MANAGEMENT_NAME", "Opzioni Gestione Dati")
ZO_CreateStringId("GS_SHOPPINGLIST_DEPTH_NAME", "Dimensione della cronologia della ShoppingList")
ZO_CreateStringId("GS_SHOPPINGLIST_DEPTH_TIP", "Quanti giorni di dati di acquisto devono essere memorizzati nella ShoppingList")
ZO_CreateStringId("GS_HISTORY_DEPTH_NAME", "Dimensione dello cronologia delle vendite")
ZO_CreateStringId("GS_HISTORY_DEPTH_TIP", "Quanti giorni di dati sulle vendite dovrebbero essere memorizzati. Abbassare questo valore può ridurre l'impatto sulle prestazioni di questo addon")
ZO_CreateStringId("GS_POSTEDITEMS_DEPTH_NAME", "Dimensione della cronologia degli oggetti pubblicati")
ZO_CreateStringId("GS_POSTEDITEMS_DEPTH_TIP", "Quanti giorni di dati dovrebbero essere memorizzati nel report degli oggetti che sono stati pubblicati")
ZO_CreateStringId("GS_CANCELEDITEMS_DEPTH_NAME", "Dimensione Cronologia Oggetti Cancellati")
ZO_CreateStringId("GS_CANCELEDITEMS_DEPTH_TIP", "Quanti giorni di dati dovrebbero essere memorizzati nel rapporto degli Oggetti Cancellati")

ZO_CreateStringId("GS_APP_NAME", "LibGuildStore")
ZO_CreateStringId("GS_APP_AUTHOR", "Sharlikran")
ZO_CreateStringId("GS_DAYS_ONLY_NAME", "Usa solo la dimensione della cronologia delle vendite")
ZO_CreateStringId("GS_DAYS_ONLY_TIP", "Userà la dimensione della cronologia delle vendite solo quando verrà ridotta la cronologia delle vendite. Questo ignorerà il conteggio minimo e massimo")
ZO_CreateStringId("GS_MIN_ITEM_COUNT_NAME", "Conteggio minimo degli oggetti")
ZO_CreateStringId("GS_MIN_ITEM_COUNT_TIP", "Numero minimo di vendite per un un oggetto da mantenere nella cronologia")
ZO_CreateStringId("GS_MAX_ITEM_COUNT_NAME", "Conteggio massimo degli oggetti")
ZO_CreateStringId("GS_MAX_ITEM_COUNT_TIP", "Numero massimo di vendite per un oggetto da conservare nella cronologia")
ZO_CreateStringId("GS_SKIP_INDEX_NAME", "Indicizzazione minima")
ZO_CreateStringId("GS_SKIP_INDEX_TIP", "Gli indici della cronologia delle vendite vengono saltati per risparmiare memoria, ma la ricerca nella schermata MM è molto più lenta")
ZO_CreateStringId("GS_DUP_PURGE", "Pulizia dup: %s secondi per cancellare %s duplicati.")
ZO_CreateStringId("GS_REINDEXING_EVERYTHING", "Reindicizzazione di tutto")
ZO_CreateStringId("GS_REINDEXING_COMPLETE", "Reindicizzazione completata")
ZO_CreateStringId("GS_PURGING_DUPLICATES", "Eliminazione dei duplicati")
ZO_CreateStringId("GS_PURGING_DUPLICATES_DELAY", "L'eliminazione dei record di vendita duplicati inizierà al termine della scansione corrente")
ZO_CreateStringId("GS_SLIDING_SALES", "Sposta le vendite.")
ZO_CreateStringId("GS_SLIDING_SALES_DELAY", "Lo spostamento dei record di vendita inizierà al termine della scansione corrente.")
ZO_CreateStringId("GS_CLEAN_START", "Pulizia dei record errati")
ZO_CreateStringId("GS_CLEAN_START_DELAY", "La pulizia dei record di vendita errati inizierà al completamento della scansione corrente.")
ZO_CreateStringId("GS_CLEAN_UPDATE_DESC", "LibGuildStore Clean è impostato per aggiornare il testo della ricerca")
ZO_CreateStringId("GS_MINIMAL_INDEXING", "LibGuildStore è configurato per l'indicizzazione minima")
ZO_CreateStringId("GS_FULL_INDEXING", "LibGuildStore è configurato per l'indicizzazione completa")
ZO_CreateStringId("GS_INDEXING_SUMMARY", "Indicizzazione: %s secondi per indicizzare %s record di vendita,con %s parole uniche")
ZO_CreateStringId("GS_SLIDING_SUMMARY", "Spostamento: %s secondi per spostare %s record di vendite su %s")
ZO_CreateStringId("GS_CP_RANK_SEARCH", "cp")
ZO_CreateStringId("GS_REGULAR_RANK_SEARCH", "rr")
ZO_CreateStringId("GS_INIT_SALES_HISTORY_SUMMARY", "Inizializzazione Gilda e Oggetti totali: %s secondi per inizializzare %s record.")
ZO_CreateStringId("GS_INIT_PURCHASES_HISTORY_SUMMARY", "Inizializzazione del totale degli acquisti: %s secondi per inizializzare %s record")
ZO_CreateStringId("GS_INIT_LISTINGS_HISTORY_SUMMARY", "Inizializza del totale degli elenchi: %s secondi per inizializzare %s record")
ZO_CreateStringId("GS_TRUNCATE_NAME", "Abilita il troncamento del riepilogo")
ZO_CreateStringId("GS_TRUNCATE_TIP", "Mostra il totale del troncamento al termine del processo")
ZO_CreateStringId("GS_GUILD_ITEM_SUMMARY_NAME", "Abilita Riepilogo Gilda e Oggetti")
ZO_CreateStringId("GS_GUILD_ITEM_SUMMARY_TIP", "Mostra il totale di Gilda e Oggetti al termine del processo")
ZO_CreateStringId("GS_INDEXING_NAME", "Abilita Indicizzazione Riepilogo")
ZO_CreateStringId("GS_INDEXING_TIP", "Mostra il totale dell'indicizzazione al termine del processo")
ZO_CreateStringId("GS_CLEANING_TIME_ELAPSED", "Pulizia: %s secondi per ripulire:")
ZO_CreateStringId("GS_CLEANING_BAD_REMOVED", ' %s record di vendita errati rimossi')
ZO_CreateStringId("GS_CLEANING_REINDEXED", ' %s record di vendite reindicizzati')
ZO_CreateStringId("GS_CLEANING_WRONG_VERSION", ' %s versioni errate degli oggetti')
ZO_CreateStringId("GS_CLEANING_WRONG_ID", ' %s ID degli oggetti errati')
ZO_CreateStringId("GS_CLEANING_WRONG_MULE", ' %s ID del mulo sbagliati')
ZO_CreateStringId("GS_CLEANING_STRINGS_CONVERTED", ' %s eventi con numeri convertiti in stringhe')
ZO_CreateStringId("GS_CLEANING_BAD_ITEMLINKS", ' %s collegamenti errati degli oggetti rimossi')
ZO_CreateStringId("GS_RESET_CONFIRM_TITLE", "Conferma Reset")
ZO_CreateStringId("GS_RESET_CONFIRM_MAIN", "Sei sicuro di voler resettare la cronologia delle vendite? È necessario aggiornare i dati di LibHistoire")

ZO_CreateStringId("GS_REFRESH_NOT_FINISHED", "Aggionamento di LibGuildStore non Completato")
ZO_CreateStringId("GS_REFRESH_FINISHED", "Aggiornamento LibGuildStore Completato")
ZO_CreateStringId("GS_REFRESH_STARTING", "Inizio Aggiornamento LibGuildStore")

ZO_CreateStringId("GS_ALL_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY0))
ZO_CreateStringId("GS_WEAPONS_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY1))
ZO_CreateStringId("GS_ARMOR_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY2))
ZO_CreateStringId("GS_JEWELRY_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY3))
ZO_CreateStringId("GS_CONSUMABLE_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY4))
ZO_CreateStringId("GS_CRAFTING_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY5))
ZO_CreateStringId("GS_FURNISHING_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY6))
ZO_CreateStringId("GS_MISCELLANEOUS_BUTTON", GetString(SI_ITEMTYPEDISPLAYCATEGORY7))
ZO_CreateStringId("GS_COMPANION_BUTTON", GetString(SI_QUESTTYPE16))
ZO_CreateStringId("GS_UNKNOWN_BUTTON", GetString(SI_INPUT_LANGUAGE_UNKNOWN))
ZO_CreateStringId("GS_KNOWN_BUTTON", "Sconosciuto")

-- buttons to toggle personal and guild sales
ZO_CreateStringId("GS_VIEW_POSTED_ITEMS", "Mostra Oggetti Pubblicati")
ZO_CreateStringId("GS_VIEW_CANCELED_ITEMS", "Mostra Oggetti Cancellati")
-- window title viewMode - Personal sales
ZO_CreateStringId("GS_POSTED_ITEMS_TITLE", "Oggetti Pubblicati")
-- window title viewSize - All sales
ZO_CreateStringId("GS_CANCELED_ITEMS_TITLE", "Oggetti Cancellati")

ZO_CreateStringId("GS_LIBGUILDSTORE_INITIALIZING", "Inizializzazione di LibGuildStore")
ZO_CreateStringId("GS_LIBGUILDSTORE_REFERENCE_DATA", "Referencing Sales Data Container")
ZO_CreateStringId("GS_LIBGUILDSTORE_TRUNCATE", "Inizia a troncare i record di LibGuildStore...")
ZO_CreateStringId("GS_LIBGUILDSTORE_HISTORY_INIT", "Inizializzazione della cronologia di LibGuildStore avviata...")
ZO_CreateStringId("GS_LIBGUILDSTORE_INDEX_DATA", "Dati Indice LibGuildStore completato...")
ZO_CreateStringId("GS_LIBGUILDSTORE_BUSY", "LibGuildStore è occupato")

ZO_CreateStringId("GS_IMPORTING_ATT_SALES", "Importa Vendite da ATT")
ZO_CreateStringId("GS_ATT_MISSING", "Dati delle vendite di Arkadius Trade Tools non rilevati")
ZO_CreateStringId("GS_IMPORTING_MM_SALES", "Importa Vendite da MasterMerchant")
ZO_CreateStringId("GS_MM_MISSING", "Non sono state rilevate vecchie vendite da Master Merchant")
ZO_CreateStringId("GS_MM_EU_NA_IMPORT_WARN", "I tuoi dati MM contengono valori da entrambi i server NA e EU. Tutte le versioni precedenti alla 3.6.x non separano i dati di vendita NA e EU. Devi sovrascriverlo nelle impostazioni di LibGuildStore.")
ZO_CreateStringId("GS_MM_EU_NA_DIFFERENT_SERVER_WARN", "Si sta tentando di importare dati MM NA o EU, tuttavia si è effettuato l'accesso a un tipo di server diverso. Devi sovrascriverlo nelle impostazioni di LibGuildStore.")
ZO_CreateStringId("GS_RESET_EU_INSTEAD", "Reset interrotto perché LibHistoire avrebbe aggiornato i dati EU")
ZO_CreateStringId("GS_RESET_NA_INSTEAD", "Reset interrotto perché LibHistoire avrebbe aggiornato i dati NA")
ZO_CreateStringId("GS_SHOPPINGLIST_MISSING", "ShoppingList non attiva")
ZO_CreateStringId("GS_SHOPPINGLIST_IMPORTED", "Dati della ShoppingList importati")
ZO_CreateStringId("GS_ELAPSED_TIME_FORMATTER", "%s secondi per elaborare %s record")
ZO_CreateStringId("GS_ATT_PURCHASE_DATA_MISSING", "Non sono stati trovati dati sugli acquisti da Arkadius Trade Tools")
ZO_CreateStringId("GS_ATT_PURCHASE_DATA_IMPORTED", "Non sono stati importati dati di acquisto di Arkadius Trade Tools")

-- scelte a discesa
ZO_CreateStringId("GS_DEAL_CALC_TTC_SUGGESTED", "Suggerito TTC")
ZO_CreateStringId("GS_DEAL_CALC_TTC_AVERAGE", "Media TTC")
ZO_CreateStringId("GS_DEAL_CALC_MM_AVERAGE", "Media MM")
ZO_CreateStringId("GS_DEAL_CALC_BONANZA_PRICE", "Prezzo Bonanza")

-- testo del menu di descrizione
ZO_CreateStringId("GS_IMPORT_MM_SALES", "Importa le Vendite da MM")
ZO_CreateStringId("GS_IMPORT_ATT_SALES", "Importa le Vendite da ATT")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASES", "Importa gli Acquisti da ATT")
ZO_CreateStringId("GS_REFRESH_LIBHISTOIRE_DATA", "Aggiorna il database di LibHistoire")
ZO_CreateStringId("GS_IMPORT_SHOPPINGLIST", "Importa da ShoppingList")
ZO_CreateStringId("GS_IMPORT_MM_PRICING", "Importa i dati dei prezzi da MM")
ZO_CreateStringId("GS_RESET_NA_LIBGUILDSTORE", "Reset LibGuildStore NA")
ZO_CreateStringId("GS_RESET_EU_LIBGUILDSTORE", "Reset LibGuildStore EU")
ZO_CreateStringId("GS_RESET_LISTINGS_DATA", "Azzera i dati degli elenchi")
