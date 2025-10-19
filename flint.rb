class Flint < Formula
  desc "Flint allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/sushipaypay/flint"
  version "0.2.4"
  license "AGPL-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-macos-arm64"
      sha256 "98556f11772647b810c70641b506deda14da62adf053cd5c78df6799d233a898"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-macos-x64"
      sha256 "00bfce140cce1c7546f71ed9ea3b913c7c01923f3c95252a46137438db93fed0"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/sushipaypay/flint/releases/download/v0.2.4/gt-linux"
    sha256 "f7c25fd251a4ea549e64bef31be1682b9d9c7f4a7d02dc5302786033aae222c7"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    system "#{bin}/gt", "--version"
  end
end