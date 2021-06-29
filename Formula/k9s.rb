# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.24.12"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/derailed/k9s/releases/download/v0.24.12/k9s_Darwin_x86_64.tar.gz"
    sha256 "30595d33ab34dcdb5756e120823277fe86585bde0f338ccbe7bf6d1f8d872163"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/derailed/k9s/releases/download/v0.24.12/k9s_Darwin_arm64.tar.gz"
    sha256 "bac1902f8faba671fe1314a40f3a2ca7b7538ea8ccdf7dad9b6285d710f01494"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/derailed/k9s/releases/download/v0.24.12/k9s_Linux_x86_64.tar.gz"
    sha256 "72b109d2e0f7388551e8035f7440d8b4b90a982b64a414d82a0357baea0d8db0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/derailed/k9s/releases/download/v0.24.12/k9s_Linux_arm64.tar.gz"
    sha256 "f5da3e1bcaa724b4b3232e8b7e1e9eed7b021de66e7b90fb337a2c4e200af734"
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
