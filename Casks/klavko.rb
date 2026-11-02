cask "klavko" do
  version "1.0.0"
  sha256 "243974b66e5720610a8842e719275debb8b208c8932d6b1874caf4a9e050ab7f"

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
