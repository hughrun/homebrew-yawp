class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.4.tar.gz"
  sha256 "412bffa4d04c0a6ebf216ce2653802ae3e8bf38be41cf306d68ceff85f5889b5"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/hughrun/homebrew-yawp/releases/download/yawp-0.1.2"
    sha256 cellar: :any_skip_relocation, catalina:     "8eece1e806e81af9459ce4c0ea90443badb1ff8d3ecce963d8e2d1a99923df43"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b931fd6def7aeade38aacf916768fc2dc1023b61fb9289a389f3fe83baeb2e2c"
  end

  depends_on "rust" => :build
  depends_on "openssl"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "testing123", shell_output("yawp testing123")
  end
end
