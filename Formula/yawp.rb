class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.4.tar.gz"
  sha256 "412bffa4d04c0a6ebf216ce2653802ae3e8bf38be41cf306d68ceff85f5889b5"
  license "AGPL-3.0-or-later"
  depends_on "rust" => :build
  depends_on "openssl"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "testing123", shell_output("yawp testing123")
  end
end
