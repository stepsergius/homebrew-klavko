# Homebrew tap for Klavko

[Klavko](https://github.com/stepsergius/Klavko) — a free keyboard layout switcher and typing assistant for the Mac.
Everything runs on your Mac.

```bash
brew install --cask stepsergius/klavko/klavko
```

Klavko isn’t notarized by Apple, so on the first launch macOS warns about it: right-click Klavko in Applications → Open,
or System Settings → Privacy & Security → Open Anyway. Then allow Accessibility access when Klavko asks.

Klavko updates itself; `brew upgrade` is not needed. To remove it with its settings, history and voice model:

```bash
brew uninstall --zap --cask klavko
```

---

**Українською.** Встановлення однією командою:

```bash
brew install --cask stepsergius/klavko/klavko
```

Klavko не нотаризований Apple, тому під час першого запуску macOS попередить: клацніть Klavko в «Програмах» правою
кнопкою → «Відкрити» або System Settings → Privacy & Security → «Open Anyway». Потім дозвольте «Універсальний доступ».
Оновлюється Klavko сам. Видалити разом з налаштуваннями, історією й голосовою моделлю: `brew uninstall --zap --cask klavko`.

Група в Telegram: https://t.me/klavko
