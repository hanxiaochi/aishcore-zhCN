AishCore 4.5 - Chinese Localization Author Kit

This is a community translation for author review, not an official release.

QUICK INTEGRATION
1. Copy Locales/zhCN.lua into AishCore/Locales/zhCN.lua.
2. Add Locales\zhCN.lua after Locales\enUS.lua and Locales\frFR.lua in AishCore.toc, before modules and UI.
3. Keep English as the base language; this file overrides only zhCN.
4. On a Simplified Chinese client, /reload and open /aish.

CONTENTS
- Locales/zhCN.lua: clean locale-only submission; 2,125 scalar keys and 27 array entries. No hooks, settings mutations, model assets or font changes.
- translation-review.csv: key / English reference / Chinese translation, UTF-8 with BOM for Excel. A review document; edits do not automatically update the Lua file.
- locale-template.lua: minimal reusable template for additional languages.
- Optional-local-integration/: separate local integration work for review. Includes 294 translated in-game patch-note lines, hardcoded display-string localization and a Chinese font patch. These are separate because they need source integration, not just a locale file.

IMPORTANT: choose ONE locale file. For the optional local integration, use zhCN-with-local-extras.lua as Locales/zhCN.lua instead of the clean file, together with display-localization.patch. Do not load both. Review diffs against your exact 4.5 source; do not blindly apply them to other releases. chinese-font.patch is independent.

CHINESE CLIENT NOTES
- Slash commands remain ASCII: /aish, /aishsetup and /aishuiswitch work normally. Chinese players can type Latin characters.
- Chinese glyphs require a compatible font. Fonts\ARKai_T.ttf was available and verified on the user's Simplified Chinese beta installation. Please confirm the font path on each supported client; avoid bundling game font files.
- Keep spell IDs, resource paths, saved-variable keys, model identifiers, custom profile names and command names unchanged. Use client APIs for localized spell/item names.
- Preserve string.format placeholders and WoW color, texture and hyperlink markup.
- Chinese labels may require wider buttons, wrapping or dynamic heights. Do not truncate UTF-8 strings by arbitrary byte offsets.
- This pack targets zhCN only; it is not a Traditional Chinese (zhTW) translation.

VALIDATION AND LIMITS
The installed local integration passed Lua 5.1 syntax checks across 110 addon Lua files, locale-isolation checks and format/markup checks. The clean submission was independently loaded for zhCN and checked not to alter enUS/frFR tables. Every key present in the 4.5 English locale is supplied, including arrays.
In-game visual review and gameplay regression testing are still pending. No claim of official acceptance or perfect layout is made. Brand names, shortcuts, model asset names and user-defined names intentionally remain unchanged.
No full paid addon, purchased artwork, saved player profiles or account information is included.

MAINTENANCE
Compare new enUS keys against zhCN on each release; missing keys fall back to English. Review changed English meanings even if a key still exists. Keep the English/French source as supplied by the author.

FONT FOLLOW-UP (2026-10-19)
Apply Optional-local-integration/font-followup.patch AFTER chinese-font.patch and, if used, display-localization.patch. It fixes nine remaining direct font calls in six files, including the auto-turn-in label. It depends on ns.LocaleFontPath from the first font patch. Tests and limitations are in font-followup-validation.json. Reload the UI after applying.
