cask "minimal-video-converter" do
  version "1.1.1"
  sha256 "e7ce96f651d029917c7c935eafacc38123690ee64d8befb4729a166762f90a09"

  url "https://github.com/dimw/minimal-video-converter/releases/download/v#{version}/MinimalVideoConverter.tar.gz"
  name "Minimal Video Converter"
  desc "Minimal macOS app for converting videos using FFmpeg"
  homepage "https://github.com/dimw/minimal-video-converter"

  depends_on formula: "ffmpeg"

  app "MinimalVideoConverter.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MinimalVideoConverter.app"]
  end
end
