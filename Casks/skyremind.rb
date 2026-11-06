cask "skyremind" do
  version "1.0.3"
  sha256 "6a6cf70d523a909c1728c1b17e14a5d2960ef81c00ab6adb6d15ef693fbaf3e6"

  url "https://github.com/Codedtriix/homebrew-tap/releases/download/v#{version}/SkyRemind-#{version}.dmg"
  name "SkyRemind"
  desc "Minimalist reminder companion with animated airplane banner alerts"
  homepage "https://codedtrix.in"

  app "SkyRemind.app"

  postflight do
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/SkyRemind.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/SkyRemind",
  ]
end
