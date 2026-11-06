cask "skyremind" do
  version "1.0.1"
  sha256 "0124d4b540f9c27e83303898f7e74993e8ba9b3d1736a6ff968b071748ce4a4a"

  url "https://github.com/Codedtriix/homebrew-tap/releases/download/v#{version}/SkyRemind-#{version}.dmg"
  name "SkyRemind"
  desc "Minimalist reminder companion with animated airplane banner alerts"
  homepage "https://codedtrix.in"

  app "SkyRemind.app"

  zap trash: [
    "~/Library/Application Support/SkyRemind",
  ]
end
