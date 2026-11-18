cask "klavko" do
  version "1.2.4"
  sha256 "fc06104ae44cbde39acf407ba967e0cc0ab31a0a00b63c88058447407dce9cc8"

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
