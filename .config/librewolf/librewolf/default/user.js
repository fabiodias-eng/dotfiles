// LibreWolf user.js

// ─────────────────────────────────────
// Interface
// ─────────────────────────────────────

user_pref("browser.compactmode.show", true);
user_pref("browser.uidensity", 1);

user_pref("sidebar.revamp", true);
user_pref("sidebar.verticalTabs", true);

user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("ui.key.menuAccessKeyFocuses", false);

// ─────────────────────────────────────
// URL bar
// ─────────────────────────────────────

user_pref("browser.urlbar.showSearchSuggestionsFirst", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.quickactions", false);

// ─────────────────────────────────────
// Extensions UI
// ─────────────────────────────────────

user_pref("extensions.ui.dictionary.hidden", true);
user_pref("extensions.ui.locale.hidden", true);
user_pref("extensions.ui.plugin.hidden", false);
user_pref("extensions.ui.sitepermission.hidden", true);

// ─────────────────────────────────────
// Navigation
// ─────────────────────────────────────

user_pref("general.autoScroll", true);

// ─────────────────────────────────────
// Language
// ─────────────────────────────────────

user_pref("intl.locale.requested", "en-US,pt-BR,en-CA,en-GB");

// ─────────────────────────────────────
// Appearance
// ─────────────────────────────────────

user_pref("layout.css.prefers-color-scheme.content-override", 0);

// ─────────────────────────────────────
// Privacy / History
// ─────────────────────────────────────

user_pref("privacy.clearHistory.formdata", true);
user_pref("privacy.clearHistory.siteSettings", true);

user_pref("privacy.clearOnShutdown_v2.browsingHistoryAndDownloads", true);
user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false);
user_pref("privacy.clearOnShutdown_v2.formdata", true);

user_pref("privacy.resistFingerprinting", false);

// ─────────────────────────────────────
// Downloads
// ─────────────────────────────────────

user_pref("browser.download.deletePrivate.chosen", true);

// ─────────────────────────────────────
// LibreWolf
// ─────────────────────────────────────

user_pref("librewolf.webgl.prompt", false);

// ─────────────────────────────────────
// Media
// ─────────────────────────────────────

user_pref("media.eme.enabled", true);
