-- Last Updated September 5, 2021
-- Original file Sharlikran

ZO_CreateStringId("GS_DEBUG_OPTIONS", "Debug Options")
ZO_CreateStringId("GS_REFRESH_BUTTON", "Refresh")
ZO_CreateStringId("GS_REFRESH_DESC", "LibHistoire data is not account specific so you only need to do this once per server NA or EU, not once per account.")
ZO_CreateStringId("GS_RESET_NA_BUTTON", "Reset NA")
ZO_CreateStringId("GS_RESET_NA_DESC", "This will only reset NA LibGuildStore Data.")
ZO_CreateStringId("GS_RESET_EU_BUTTON", "Reset EU")
ZO_CreateStringId("GS_RESET_EU_DESC", "This will only reset EU LibGuildStore Data.")
ZO_CreateStringId("GS_REFRESH_LIBHISTOIRE_NAME", "Refresh Libhistoire")
ZO_CreateStringId("GS_REFRESH_LIBHISTOIRE_TIP", "Refresh all Libhistoire data based on your sales history size.")
ZO_CreateStringId("GS_RESET_NA_NAME", "Reset NA")
ZO_CreateStringId("GS_RESET_NA_TIP", "Reset all LibGuildStore data for NA.")
ZO_CreateStringId("GS_RESET_EU_NAME", "Reset EU")
ZO_CreateStringId("GS_RESET_EU_TIP", "Reset all LibGuildStore data for EU.")

ZO_CreateStringId("GS_TRUNCATE_SALES_COMPLETE", "Trimming Sales Data Complete: %s seconds to trim, %s old records removed.")
ZO_CreateStringId("GS_TRUNCATE_LISTINGS_COMPLETE", "Trimming Listings Data Complete: %s seconds to trim, %s old records removed.")
ZO_CreateStringId("GS_TRUNCATE_PURCHASE_COMPLETE", "Trimming Purchase Complete: %s seconds to trim, %s old records removed.")
ZO_CreateStringId("GS_TRUNCATE_POSTED_COMPLETE", "Trimming Posted Items Complete: %s seconds to trim, %s old records removed.")
ZO_CreateStringId("GS_TRUNCATE_CANCELLED_COMPLETE", "Trimming Cancelled Items Complete: %s seconds to trim, %s old records removed.")

ZO_CreateStringId("GS_RESET_LISTINGS_BUTTON", "Reset Listings")
ZO_CreateStringId("GS_RESET_LISTINGS_DESC", "This will only reset listings for the current server type NA or EU.")
ZO_CreateStringId("GS_RESET_LISTINGS_NAME", "Reset Listings Data")
ZO_CreateStringId("GS_RESET_LISTINGS_TIP", "Reset all LibGuildStore listings.")
ZO_CreateStringId("GS_RESET_LISTINGS_CONFIRM_TITLE", "Confirm Listings Reset")
ZO_CreateStringId("GS_RESET_LISTINGS_CONFIRM_MAIN", "Are you sure you wish to reset your Listings Data? You will need to visit traders to collect new data.")

ZO_CreateStringId("GS_IMPORT_MM_BUTTON", "Import MM Data")
ZO_CreateStringId("GS_IMPORT_MM_DESC", "Until MM 3.6.x Master Merchant data was not saved separately for NA and EU servers. It is not recomended to import data from a different server type as the prices can be different.")
ZO_CreateStringId("GS_IMPORT_MM_NAME", "Import MM Data")
ZO_CreateStringId("GS_IMPORT_MM_TIP", "Import all MM data into LibGuildStore.")
ZO_CreateStringId("GS_IMPORT_MM_OVERRIDE_NAME", "Override MM Import")
ZO_CreateStringId("GS_IMPORT_MM_OVERRIDE_TIP", "Override importing MM data from NA to EU or when your old data contains both NA and EU sales.")

ZO_CreateStringId("GS_IMPORT_ATT_BUTTON", "Import ATT Data")
ZO_CreateStringId("GS_IMPORT_ATT_NAME", "Import ATT Data")
ZO_CreateStringId("GS_IMPORT_ATT_TIP", "Import all ATT data into LibGuildStore.")
ZO_CreateStringId("GS_IMPORT_ATT_DESC", "Arkadius Trade Tools sales data is not account specific so you only need import once for NA or EU servers, not once per account.")
ZO_CreateStringId("GS_IMPORT_ATT_FINISHED", "Arkadius Trade Tools sales data has been imported. Using more then one Addon with the same data increases memroy usage and load times.")

ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_BUTTON", "Import ATT Purchases")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_DESC", "Arkadius Trade Tools purchases data does not save the specific purchace ID. You may unintentionally import a duplicate purchace. Which could include a purchase made while both ATT and the ShoppingList (stand alone version) were active.")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_NAME", "Import ATT Purchases")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASE_TIP", "Import ATT Purchases data into LibGuildStore.")

ZO_CreateStringId("GS_IMPORT_SL_BUTTON", "Import Shoppinglist Data")
ZO_CreateStringId("GS_IMPORT_SL_DESC", "Import ShoppingList data into LibGuildStore. Previous ShoppingList data did not save the unique ID for the purchase, you may have some duplicates until the purchase is older and becomes trimmed.")
ZO_CreateStringId("GS_IMPORT_SL_NAME", "Import Shoppinglist")
ZO_CreateStringId("GS_IMPORT_SL_TIP", "Import Shoppinglist data into LibGuildStore.")

ZO_CreateStringId("GS_IMPORT_PD_BUTTON", "Import Pricing Data")
ZO_CreateStringId("GS_IMPORT_PD_DESC", "Import MM pricing data into LibGuildStore. Previous pricing data will only be avalable as central pricing data. It will not import the same pricing data into each seperate guild.")
ZO_CreateStringId("GS_IMPORT_PD_NAME", "Import Pricing Data")
ZO_CreateStringId("GS_IMPORT_PD_TIP", "Import Pricing Data into LibGuildStore. Will only be available when using central pricing data. For individual guilds you will need to establish new pricing data per guild.")

ZO_CreateStringId("GS_HELP_DUPS", "/lgs dups  - scans your history to purge duplicate entries")
ZO_CreateStringId("GS_HELP_CLEAN", "/lgs clean - cleans out bad sales records (invalid information)")
ZO_CreateStringId("GS_HELP_SLIDE", "/lgs slide  - relocates your sales records to a new @name (Ex. @kindredspiritgr to @kindredspiritgrSlid)  /mm slideback to reverse.")
ZO_CreateStringId("GS_HELP_MMIMPORT", "/lgs mmimport  - Import sales data from Master Merchant.")
ZO_CreateStringId("GS_HELP_ATTIMPORT", "/lgs attimport  - Import sales data from Arkadius' Trade Tools.")

ZO_CreateStringId("GS_COLOR_WHITE", "white")
ZO_CreateStringId("GS_COLOR_GREEN", "green")
ZO_CreateStringId("GS_COLOR_BLUE", "blue")
ZO_CreateStringId("GS_COLOR_PURPLE", "purple")
ZO_CreateStringId("GS_COLOR_GOLD", "gold")
ZO_CreateStringId("GS_COLOR_ORANGE", "orange")

ZO_CreateStringId("GS_SALES_MANAGEMENT_NAME", "Sales Management Options")
ZO_CreateStringId("GS_DATA_MANAGEMENT_NAME", "Data Management Options")
ZO_CreateStringId("GS_SHOPPINGLIST_DEPTH_NAME", "ShoppingList History Size")
ZO_CreateStringId("GS_SHOPPINGLIST_DEPTH_TIP", "How many days of purchase data should be stored in ShoppingList.")
ZO_CreateStringId("GS_HISTORY_DEPTH_NAME", "Sales History Size")
ZO_CreateStringId("GS_HISTORY_DEPTH_TIP", "How many days of sales data should be stored. Lowering this may reduce the performance impact of this addon.")
ZO_CreateStringId("GS_POSTEDITEMS_DEPTH_NAME", "Posted Items History Size")
ZO_CreateStringId("GS_POSTEDITEMS_DEPTH_TIP", "How many days of data should be stored in the Posted Items Report.")
ZO_CreateStringId("GS_CANCELEDITEMS_DEPTH_NAME", "Canceled Items History Size")
ZO_CreateStringId("GS_CANCELEDITEMS_DEPTH_TIP", "How many days of data should be stored in the Canceled Items Report.")

ZO_CreateStringId("GS_APP_NAME", "LibGuildStore")
ZO_CreateStringId("GS_APP_AUTHOR", "Sharlikran")
ZO_CreateStringId("GS_DAYS_ONLY_NAME", "Use Sales History Size Only")
ZO_CreateStringId("GS_DAYS_ONLY_TIP", "Will use Sales History Size only when trimming sales history. This will ignore min and max count.")
ZO_CreateStringId("GS_MIN_ITEM_COUNT_NAME", "Min Item Count")
ZO_CreateStringId("GS_MIN_ITEM_COUNT_TIP", "Minimum number of sales for an item to retain in history.")
ZO_CreateStringId("GS_MAX_ITEM_COUNT_NAME", "Max Item Count")
ZO_CreateStringId("GS_MAX_ITEM_COUNT_TIP", "Maximum number of sales for an item to retain in history.")
ZO_CreateStringId("GS_SKIP_INDEX_NAME", "Minimal Indexing")
ZO_CreateStringId("GS_SKIP_INDEX_TIP", "Sales History indexes are skipped to save memory, but searching on the MM screen is much slower.")
ZO_CreateStringId("GS_DUP_PURGE", "Dup purge: %s seconds to clear %s duplicates.")
ZO_CreateStringId("GS_REINDEXING_EVERYTHING", "Reindexing Everything.")
ZO_CreateStringId("GS_REINDEXING_COMPLETE", "Reindexing Complete.")
ZO_CreateStringId("GS_PURGING_DUPLICATES", "Purging duplicates.")
ZO_CreateStringId("GS_PURGING_DUPLICATES_DELAY", "Purging of duplicate sales records will begin when current scan completes.")
ZO_CreateStringId("GS_SLIDING_SALES", "Sliding your sales.")
ZO_CreateStringId("GS_SLIDING_SALES_DELAY", "Sliding of your sales records will begin when current scan completes.")
ZO_CreateStringId("GS_CLEAN_START", "Cleaning Out Bad Records.")
ZO_CreateStringId("GS_CLEAN_START_DELAY", "Cleaning out bad sales records will begin when current scan completes.")
ZO_CreateStringId("GS_CLEAN_UPDATE_DESC", "LibGuildStore Clean is set to update search text.")
ZO_CreateStringId("GS_MINIMAL_INDEXING", "LibGuildStore configured for Minimal Indexing.")
ZO_CreateStringId("GS_FULL_INDEXING", "LibGuildStore configured for Full Indexing.")
ZO_CreateStringId("GS_INDEXING_SUMMARY", "Indexing: %s seconds to index %s sales records, %s unique words")
ZO_CreateStringId("GS_SLIDING_SUMMARY", "Sliding: %s seconds to slide %s sales records to %s.")
ZO_CreateStringId("GS_CP_RANK_SEARCH", "cp")
ZO_CreateStringId("GS_REGULAR_RANK_SEARCH", "rr")
ZO_CreateStringId("GS_INIT_SALES_HISTORY_SUMMARY", "Init Guild and Item totals: %s seconds to init %s records.")
ZO_CreateStringId("GS_INIT_PURCHASES_HISTORY_SUMMARY", "Init Purchase totals: %s seconds to init %s records.")
ZO_CreateStringId("GS_INIT_LISTINGS_HISTORY_SUMMARY", "Init Listing totals: %s seconds to init %s records.")
ZO_CreateStringId("GS_TRUNCATE_NAME", "Enable Truncate Summary")
ZO_CreateStringId("GS_TRUNCATE_TIP", "Show Truncate totals after process is complete.")
ZO_CreateStringId("GS_GUILD_ITEM_SUMMARY_NAME", "Enable Guild and Item Summary")
ZO_CreateStringId("GS_GUILD_ITEM_SUMMARY_TIP", "Show Guild and Item totals after process is complete.")
ZO_CreateStringId("GS_INDEXING_NAME", "Enable Indexing Summary")
ZO_CreateStringId("GS_INDEXING_TIP", "Show Indexing totals after process is complete.")
ZO_CreateStringId("GS_CLEANING_TIME_ELAPSED", "Cleaning: %s seconds to clean:")
ZO_CreateStringId("GS_CLEANING_BAD_REMOVED", '  %s bad sales records removed')
ZO_CreateStringId("GS_CLEANING_REINDEXED", '  %s sales records re-indexed')
ZO_CreateStringId("GS_CLEANING_WRONG_VERSION", '  %s bad item versions')
ZO_CreateStringId("GS_CLEANING_WRONG_ID", '  %s bad item IDs')
ZO_CreateStringId("GS_CLEANING_WRONG_MULE", '  %s bad mule item IDs')
ZO_CreateStringId("GS_CLEANING_STRINGS_CONVERTED", '  %s events with numbers converted to strings')
ZO_CreateStringId("GS_CLEANING_BAD_ITEMLINKS", '  %s bad item links removed')
ZO_CreateStringId("GS_RESET_CONFIRM_TITLE", "Confirm Reset")
ZO_CreateStringId("GS_RESET_CONFIRM_MAIN", "Are you sure you wish to reset your sales history? You will need to refresh your LibHistoire data.")

ZO_CreateStringId("GS_REFRESH_NOT_FINISHED", "LibGuildStore Refresh Not Finished")
ZO_CreateStringId("GS_REFRESH_FINISHED", "LibGuildStore Refresh Finished")
ZO_CreateStringId("GS_REFRESH_STARTING", "Starting LibGuildStore Refresh")

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
ZO_CreateStringId("GS_KNOWN_BUTTON", "Known")

-- buttons to toggle personal and guild sales
ZO_CreateStringId("GS_VIEW_POSTED_ITEMS", "Show Posted Items")
ZO_CreateStringId("GS_VIEW_CANCELED_ITEMS", "Show Canceled Items")
-- window title viewMode - Personal sales
ZO_CreateStringId("GS_POSTED_ITEMS_TITLE", "Posted Items")
-- window title viewSize - All sales
ZO_CreateStringId("GS_CANCELED_ITEMS_TITLE", "Canceled Items")

ZO_CreateStringId("GS_LIBGUILDSTORE_INITIALIZING", "LibGuildStore Initializing")
ZO_CreateStringId("GS_LIBGUILDSTORE_REFERENCE_DATA", "LibGuildStore Referencing Sales Data Containers")
ZO_CreateStringId("GS_LIBGUILDSTORE_TRUNCATE", "LibGuildStore Truncate Records Started...")
ZO_CreateStringId("GS_LIBGUILDSTORE_HISTORY_INIT", "LibGuildStore History Initialization Started...")
ZO_CreateStringId("GS_LIBGUILDSTORE_BUSY", "LibGuildStore is busy")

ZO_CreateStringId("GS_IMPORTING_ATT_SALES", "Importing ATT Sales")
ZO_CreateStringId("GS_ATT_MISSING", "Arkadius Trade Tools Sales Data not detected.")
ZO_CreateStringId("GS_IMPORTING_MM_SALES", "Importing MasterMerchant Sales")
ZO_CreateStringId("GS_MM_MISSING", "Old Master Merchant sales not detected.")
ZO_CreateStringId("GS_MM_EU_NA_IMPORT_WARN", "Your MM data contains values from both NA and EU servers. All versions prior to 3.6.x did not separate NA and EU sales data. You must override this in the LibGuildStore settings.")
ZO_CreateStringId("GS_MM_EU_NA_DIFFERENT_SERVER_WARN", "You are attempting to import NA or EU MM data, however you logged into a different server type. You must override this in the LibGuildStore settings.")
ZO_CreateStringId("GS_RESET_EU_INSTEAD", "Reset aborted because LibHistoire would refresh EU Data instead.")
ZO_CreateStringId("GS_RESET_NA_INSTEAD", "Reset aborted because LibHistoire would refresh NA Data instead.")
ZO_CreateStringId("GS_SHOPPINGLIST_MISSING", "ShoppingList Not Active")
ZO_CreateStringId("GS_SHOPPINGLIST_IMPORTED", "ShoppingList data imported.")
ZO_CreateStringId("GS_ELAPSED_TIME_FORMATTER", "%s seconds to process %s records")
ZO_CreateStringId("GS_ATT_PURCHASE_DATA_MISSING", "Arkadius Trade Tools Purchases Data Not Found.")
ZO_CreateStringId("GS_ATT_PURCHASE_DATA_IMPORTED", "Arkadius Trade Tools Purchases Data was imported.")

-- dropdown choices
ZO_CreateStringId("GS_DEAL_CALC_TTC_SUGGESTED", "TTC Suggested")
ZO_CreateStringId("GS_DEAL_CALC_TTC_AVERAGE", "TTC Average")
ZO_CreateStringId("GS_DEAL_CALC_MM_AVERAGE", "MM Average")
ZO_CreateStringId("GS_DEAL_CALC_BONANZA_PRICE", "Bonanza Price")

-- description menu text
ZO_CreateStringId("GS_IMPORT_MM_SALES", "Import MM Sales")
ZO_CreateStringId("GS_IMPORT_ATT_SALES", "Import ATT Sales")
ZO_CreateStringId("GS_IMPORT_ATT_PURCHASES", "Import ATT Purchases")
ZO_CreateStringId("GS_REFRESH_LIBHISTOIRE_DATA", "Refresh LibHistoire Database")
ZO_CreateStringId("GS_IMPORT_SHOPPINGLIST", "Import ShoppingList")
ZO_CreateStringId("GS_IMPORT_MM_PRICING", "Import MM Pricing Data")
ZO_CreateStringId("GS_RESET_NA_LIBGUILDSTORE", "Reset NA LibGuildStore")
ZO_CreateStringId("GS_RESET_EU_LIBGUILDSTORE", "Reset EU LibGuildStore")
ZO_CreateStringId("GS_RESET_LISTINGS_DATA", "Reset Listings Data")
