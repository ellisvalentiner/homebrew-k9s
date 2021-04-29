# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.24.8"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/derailed/k9s/releases/download/v0.24.8/k9s_Darwin_x86_64.tar.gz"
    sha256 "e3af0c91900cc9ecf735f71b8f16767129a5c6895be4f0831483d67a6be42ffb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/derailed/k9s/releases/download/v0.24.8/k9s_Darwin_arm64.tar.gz"
    sha256 "283d320c5374fd034bfead552ab09b397148a78c2f328b6a7daa07678ee93fb9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/derailed/k9s/releases/download/v0.24.8/k9s_Linux_x86_64.tar.gz"
    sha256 "9a57de7b65c3b7be315e2a187c515fee72245f8ef789de5eb7cca2b7e2e2d158"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/derailed/k9s/releases/download/v0.24.8/k9s_Linux_arm64.tar.gz"
    sha256 "da31d4f22622865173a9e91356c914bd206ea3e42a175ee34002a6054197cf77"
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
