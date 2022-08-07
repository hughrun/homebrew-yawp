class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.3.tar.gz"
  sha256 "0525bdb46e2725beafa2e9b189d7f61be6b9b080b9323ba8356b038d917530c4"
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
