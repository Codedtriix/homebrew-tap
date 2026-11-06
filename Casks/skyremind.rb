cask "skyremind" do
  version "1.0.5"
  sha256 "842e510cdb0196225b42d128e6234ade27311e5ebdadc3c0c3855d7372230bcb"

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
