cask "skyremind" do
  version "1.0.2"
  sha256 "ac73307b851f14a09c9db6ee67620f56f8a5f6a293ba1fc0f72acabe3b4cab45"

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
