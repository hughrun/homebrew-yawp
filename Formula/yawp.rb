class Yawp < Formula
  desc "Command-line app for publishing social media posts"
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/v0.1.1.tar.gz"
  sha256 "fc6cd8b655c4e9a17cba170c6e3b280972b77956d75d2539cbda38f1e57147e3"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build
  depends_on "libcrypto" => :build
  depends_on "libssl" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "testing123", shell_output("yawp testing123")
  end
end
