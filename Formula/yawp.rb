class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.2.tar.gz"
  sha256 "606fb5e55e210f3640147c075f142c1dea48ffce753ee7e31ebb8182ca2bb07e"
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
