cask "klavko" do
  version "1.4.0"
  sha256 "eb4b9e8765af3b5db1f895e097cf7a62e080f2ae7b27d8c64c6e1be706ef4b29"

  url "https://github.com/stepsergius/Klavko/releases/download/v#{version}/Klavko-#{version}.zip"
  name "Klavko"
  desc "Keyboard layout switcher and typing assistant, all on your Mac"
  homepage "https://github.com/stepsergius/Klavko"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Klavko updates itself from its GitHub releases.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Klavko #{version}/Klavko.app"

  uninstall quit: "app.klavko.Klavko"

  zap trash: [
    "~/Library/Application Support/FluidAudio/Models/parakeet-ultra",
    "~/Library/Application Support/Klavko",
    "~/Library/Preferences/app.klavko.Klavko.plist",
  ]
end
