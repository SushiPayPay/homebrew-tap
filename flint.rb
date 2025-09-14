class Flint < Formula
  desc "Flint allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/sushipaypay/flint"
  version "0.2.4"
  license "AGPL-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-macos-arm64"
      sha256 "471a557c36efefdd89128585bd59074d832a3ae924f2cc05ec59c49e1b0863fa"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-macos-x64"
      sha256 "c5a3d54c5ab716d7c73b970d1d9b72467622ab424386ec0c10ab096342a84e0f"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-linux"
    sha256 "5242e8e390aa1c3901eb95a6c67eb0df93e164663280378d0fcb1905f6492a37"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    system "#{bin}/gt", "--version"
  end
end