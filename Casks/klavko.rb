cask "klavko" do
  version "1.2.0"
  sha256 "598e5af0d8be918e3df18ea220760026c0c1184dd156b3f07c5de949ffe2f40e"

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
