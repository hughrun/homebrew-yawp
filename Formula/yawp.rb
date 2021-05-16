class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.1.tar.gz"
  sha256 "fc6cd8b655c4e9a17cba170c6e3b280972b77956d75d2539cbda38f1e57147e3"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/hughrun/homebrew-yawp/releases/download/yawp-0.1.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "67bfc5b258f5311d01732454323fe1f6ebdd53e4b8077fb534327dd9449b9e0e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "547b281df16ca2ffbc946885a87d3065176f7907a22a4037861f8b1fa1aee1e9"
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
