class Flint < Formula
  desc "Flint allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/sushipaypay/flint"
  version "0.2.4"
  license "AGPL-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-macos-arm64"
      sha256 "93619413604788a71954f39e9a47489105f3f92cef6ed69a47e676fa94e18996"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-macos-x64"
      sha256 "80ec363f1408d4ff7d41260ed9f03af359caeebd740a2d49ecbf4578f5ec1820"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-linux"
    sha256 "248386fd5c2e6027a7781e5183bbb2e536bd92230a61a795036c06735c51f968"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    system "#{bin}/gt", "--version"
  end
end