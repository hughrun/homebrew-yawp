class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.4.tar.gz"
  sha256 "412bffa4d04c0a6ebf216ce2653802ae3e8bf38be41cf306d68ceff85f5889b5"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/hughrun/homebrew-yawp/releases/download/yawp-0.1.4"
    sha256 cellar: :any_skip_relocation, big_sur:      "34902832fe8327eaaa5042ca89ec04193a103f2fab4752a1fab6ab26f6037ead"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5910e86da8dbe6e3585fef1752b936a307d428e1502f85c41753c6095d91bf41"
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
