# AishCore 简体中文语言包 / Simplified Chinese Localization

Community localization for **AishCore 4.5**, prepared by 葉秋 (Yeqiu) with AI assistance for upstream review. This is not an official AishUI release.

这是 AishCore 4.5 的社区简体中文翻译，不包含完整插件或付费素材。作者已同意进行汉化；本仓库不代表作者已审核或正式采纳。需要另行合法安装原插件。

## 安装 / Installation

1. 将 [`Locales/zhCN.lua`](Locales/zhCN.lua) 复制到 `Interface/AddOns/AishCore/Locales/zhCN.lua`。
2. 编辑 `AishCore.toc`，在 `Locales\frFR.lua` 后、模块与 UI 加载前添加一行：

```text
Locales\zhCN.lua
```

3. 使用简体中文客户端，输入 `/reload`，再输入 `/aish`。

Copy the locale file into AishCore's `Locales` folder, add it to the TOC after the English/French locales and before modules/UI, then reload. English remains the fallback for new untranslated keys. Slash commands remain unchanged.

## 内容 / Contents

- **2,125** scalar locale keys and **27** array strings (dates and AFK tips).
- [`translation-review.csv`](translation-review.csv): 中英对照，供审核；修改 CSV 不会自动更新 Lua。
- [`locale-template.lua`](locale-template.lua): reusable minimal template for future languages.
- [`README-English.txt`](README-English.txt): detailed English integration and maintenance notes.
- [`Optional-local-integration`](Optional-local-integration): optional source patches, Chinese font adjustment, and extended locale containing **294** translated in-game release-note lines.

基础语言文件与带扩展的语言文件二选一，不要同时加载。扩展版本须配合显示补丁使用；请先对照准确的 4.5 源码审核。字体补丁独立提供。用户自定义名称、品牌、命令和模型资源标识保持原样。

Choose either the clean locale or the extended locale, not both. The extended version requires the display patch. Review patches against the exact version before applying. Fonts need Chinese glyph support; game font files are not distributed here.

## 测试状态 / Validation

- Clean locale: Lua 5.1 loading, complete key coverage and enUS/frFR isolation checks passed.
- Local integration: 110 Lua files passed syntax checks; format placeholders and color/texture markup checked.
- A Chinese settings panel has been observed in an in-game screenshot. Full page-by-page visual and gameplay regression testing is still pending.
- This package does not claim to fix unrelated ElvUI/EllesmereUI compatibility or profile-import issues.

## 更新与反馈 / Maintenance

更新原插件可能覆盖语言包。新版本需对照 enUS 新增词条及含义变化。报告问题时请提供 AishCore 版本、客户端版本、页面位置与截图，并遮挡私人聊天及账号资料。

For issues, include addon/client version, affected page and a screenshot with personal details redacted. New upstream keys fall back to English until translated.

## 来源与权利 / Attribution

[AishCore / AishUI by Aishuu](https://www.curseforge.com/wow/addons/aishcore). Original strings, code context in patches and all upstream rights remain with their respective owners. No license to redistribute the paid addon or its assets is granted by this repository. Translation licensing for upstream incorporation can be agreed with the author; no blanket license is asserted over upstream material.

## 2026-10-19 字体补充修复 / Font follow-up

修复自动交任务标签仍显示中文方框的问题，并补齐优先技能条、安装提示、经验条、顶部目标条和通用字体备用路径，共 6 个文件、9 处字体调用。

The auto-turn-in label bypassed the locale-aware font resolver. The follow-up routes nine remaining direct font calls in six files through `ns.LocaleFontPath`, preserving sizes and outlines.

**应用顺序 / Apply order:** apply `chinese-font.patch` first, then [`font-followup.patch`](Optional-local-integration/font-followup.patch). If using the optional extended localization, apply `display-localization.patch` before the follow-up as well. The follow-up requires the font resolver introduced by the original font patch; it is not a standalone patch. Review against AishCore 4.5, then `/reload`.

Changed files passed Lua 5.1 syntax checks. The actual checkbox font call was tested with a mock widget for zhCN, zhTW, enUS and frFR; font size and outline were preserved. These are code-level checks; the post-fix in-game appearance is awaiting confirmation. See [`font-followup-validation.json`](Optional-local-integration/font-followup-validation.json).
