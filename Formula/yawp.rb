class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.3.tar.gz"
  sha256 "ee60d175b6589c3fd58773efe39131a77cbae53e2c250a7c5a0daa254f992f1f"
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
