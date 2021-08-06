# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.24.15"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/derailed/k9s/releases/download/v0.24.15/k9s_Darwin_x86_64.tar.gz"
    sha256 "ba33b0e0fd0679668b7af85fe95fbdc78cfc4ad4e10512146656ee382f1ce8ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/derailed/k9s/releases/download/v0.24.15/k9s_Darwin_arm64.tar.gz"
    sha256 "db0523162993447b42cba3ce0986cd3ee15b198b761576b9c8402b9409d0fc1b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/derailed/k9s/releases/download/v0.24.15/k9s_Linux_x86_64.tar.gz"
    sha256 "0590c32c20cd22416f2a06fad9155257c156e32c60e8757bf96d5a28cb1720dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/derailed/k9s/releases/download/v0.24.15/k9s_Linux_arm64.tar.gz"
    sha256 "c715d8cdcd80fa966e5aae99c33c8304dc0582bd0b3c19be30a496fb0ee2d807"
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
