cask "minimal-video-converter" do
  version "1.1.3"
  sha256 "6eb0bc64bbccc3c9e8578ff03cb90c101075cc3aa8104ed9eeeb24f08ed48d6a"

  url "https://github.com/dimw/minimal-video-converter/releases/download/v#{version}/MinimalVideoConverter.tar.gz"
  name "Minimal Video Converter"
  desc "Minimal macOS app for converting videos using FFmpeg"
  homepage "https://github.com/dimw/minimal-video-converter"

  depends_on formula: "ffmpeg"

  app "MinimalVideoConverter.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/MinimalVideoConverter.app"]
  end
end
