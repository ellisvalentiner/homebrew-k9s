# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.23.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.23.8/k9s_Darwin_x86_64.tar.gz"
    sha256 "911447b670408f75b8020e7612be65dbe1659ccf99896922faadbccb1ad4af75"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.23.8/k9s_Linux_x86_64.tar.gz"
      sha256 "2dcec3d954ba3a1293f681896970f21bc7c5a1e724b4def1d379704533f5384b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.23.8/k9s_Linux_arm64.tar.gz"
        sha256 "c2631755a0ac66e0b659dca5ef70bb9d4065f2c2060e13ac9605092b4aa186b5"
      else
      end
    end
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
