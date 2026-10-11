cask "minimal-video-converter" do
  version "1.1.2"
  sha256 "8561bded71b5614b7b071b716d5e290dfd2eec645033cf4727e8459270b64f0c"

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
