cask "skyremind" do
  version "1.0.4"
  sha256 "ca074d41bad470b8317fb1b4c4e881f1b00a23301120234fac4f52aba451d79a"

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
