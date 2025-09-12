class Flint < Formula
  desc "Flint allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/phaddad/flint"
  version "0.2.4"
  license "AGPL-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/phaddad/flint/releases/download/v0.2.4/gt-macos-arm64"
      sha256 "ed889c842e03ec77d5bcbb1ee9c35b9d45cc5d0c241f5312b5d712fc7b5fac92"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/phaddad/flint/releases/download/v0.2.4/gt-macos-x64"
      sha256 "1daca62bdb6c2ee5e83e621bd08be2e3656aefaeaba4bf54b5f23fd02f4bac16"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/phaddad/flint/releases/download/v0.2.4/gt-linux"
    sha256 "3a8c72ab5251c1a099afd6a9d62d2453193853a7139b041abbb2a57dbf80ff6b"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    system "#{bin}/gt", "--version"
  end
end