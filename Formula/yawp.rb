# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Yawp < Formula
  desc "A command line app for publishing social media posts." 
  homepage "https://github.com/hughrun/yawp"
  url "https://github.com/hughrun/yawp/archive/refs/tags/0.1.0.tar.gz"
  sha256 "c1dd5b07590c370b64829e5c592faba5dea52f9298a628ff5f79787534203274"
  version "0.1.0"
  license "AGPL-3.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "yawp"
    bin.install "target/release/yawp"
  end
end
