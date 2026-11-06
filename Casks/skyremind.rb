cask "skyremind" do
  version "1.0.0"
  sha256 "c38f39aa5ac3e1e5b318586b46fca4fc6a1cf513c19f82cef31207d854c4b4f2"

  url "https://github.com/Codedtriix/SkyRemind/releases/download/v#{version}/SkyRemind-1.0.dmg"
  name "SkyRemind"
  desc "Minimalist reminder companion with animated airplane banner alerts"
  homepage "https://codedtrix.in"

  app "SkyRemind.app"

  zap trash: [
    "~/Library/Application Support/SkyRemind",
  ]
end
