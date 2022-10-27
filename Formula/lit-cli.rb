# To install:
#   brew tap toadle/lit
#   brew install lit-cli
#
# To remove:
#   brew uninstall lit
#   brew untap toadle/lit

class LitCli < Formula
  version 'v0.1.1'
  desc "lit - an easily configurable quicklauncher for the commandline"
  homepage "https://github.com/toadle/lit"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/toadle/lit/releases/download/v0.1.1/lit_0.1.1_darwin_amd64.tar.gz"
    sha256 "14e55d5fc35894af7a9b3e36844b842817f6c013c48d67b4abd00a71234f2dc2"
  elsif  OS.mac? && Hardware::CPU.arm?
    url "https://github.com/toadle/lit/releases/download/v0.1.1/lit_0.1.1_darwin_arm64.tar.gz"
    sha256 "4bbda56144a92cca0d6ebbcb76eeb9e76a259d165102dc2ddb7e9bc8667ab762"
  elsif OS.linux?
    url "https://github.com/toadle/lit/releases/download/v0.1.1/lit_0.1.1_linux_amd64.tar.gz"
    sha256 "ae30c7b7612a97ddfca14975c7d63049280ffada8243ee349ca3c77e7b78d2ac"
  end

  def install
    bin.install "lit"
  end
end